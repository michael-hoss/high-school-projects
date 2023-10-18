Option Strict Off
Option Explicit On
Imports Microsoft.VisualBasic
Imports System
Imports System.Drawing
Imports System.Windows.Forms
Imports UpgradeHelpers.Gui
Imports UpgradeHelpers.Gui.Controls
Partial Friend Class ASDF
	Inherits System.Windows.Forms.Form
	Public Sub New()
		MyBase.New()
		Dim mustCallFormLoad As Boolean = False
		If m_vb6FormDefInstance Is Nothing Then
			If m_InitializingDefInstance Then
				m_vb6FormDefInstance = Me
			Else
				Try
					'For the start-up form, the first instance created is the default instance.
					If Not (System.Reflection.Assembly.GetExecutingAssembly().EntryPoint Is Nothing) AndAlso System.Reflection.Assembly.GetExecutingAssembly().EntryPoint.DeclaringType Is Me.GetType() Then
						m_vb6FormDefInstance = Me
					End If
				Finally 
					mustCallFormLoad = True
				End Try
			End If
		End If
		'This call is required by the Windows Form Designer.
		InitializeComponent()
		ReLoadForm(False)
		If mustCallFormLoad And Not (m_vb6FormDefInstance Is Nothing) Then
			m_vb6FormDefInstance.Form_Load()
		End If
	End Sub


	Private Sub ASDF_Activated(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles MyBase.Activated
		If Not (UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm Is eventSender) Then
			UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm = eventSender
		End If
	End Sub
	'Die folgenden 3 Variablen erm�glichen die zuf�llige Auswahls des n�chsten Spielsteins sowie die
	'Anzeige dessen, w�hrend man noch mit dem vorherigen Spielstein spielt.
	Dim neueZufallsfigur As Integer 'wird st�ndig im Timer Zufallsgenerator durchgez�hlt
	Dim NextFigur As Integer 'hat den Wert des "Warteschlangensteins", der rechts angezeigt wird
	Dim Zufallsfigur As Integer 'hat den Wert des aktuellen Spielsteins

	'Die folgenden 2 Variablen dienen der Unterscheidung, ob eine horizontale Verschiebung ausgef�hrt
	'wird oder nicht.
	Dim Linksbewegung As Integer 'kann 0 oder 1 annehmen (Verschiebung um eine Spalte bzw. keine Versch.)
	Dim Rechtsbewegung As Integer 'kann 0 oder 1 annehmen (Verschiebung um eine Spalte bzw. keine Versch.)

	'Ein Spielstein enth�lt 4 K�sten. Jeder Kasten ist Teil eines Steuerelementarrays "Figur() as Shape"
	'Die Position dieser Shapes hat jedoch unhandliche Werte im 3-4-Stelligen Bereich. Um diese weitest-
	'gehend zu vermeiden, habe ich parallel dazu folgende Integerarrays deklariert, von denen die
	'einzelnen Werte f�r KastenX zwischen 1 und 12 und f�r KastenY zwischen 0 und 20 liegen.
	Dim KastenX(100000) As Integer 'X-Position des Kastens als Bestandteil des Spielsteins
	Dim KastenY(100000) As Integer 'Y-Position des Kastens als Bestandteil des Spielsteins

	'Die folgenden Arrays dienen dazu, die Position eines Steins abzuspeichern, bevor er auf einen schon
	'bestetzten Platz gefallen ist, damit man diese Position wiederherstellen kann.
	Dim KastenXDAVOR(3) As Integer '(0 To 3)-> 4 Elemente, da ein Stein 4 K�sten enth�lt
	Dim KastenYDAVOR(3) As Integer 'Sowohl X- als auch Y-Position

	'Das folgende Array stellt das Spielfeld dar und gibt an, ob sich an einem Platz schon ein Stein
	'befindet oder nicht. Das Spielfeld ist 12 Felder breit und 20 Felder hoch, der Rand betr�gt �berall
	'au�er unten ein Feld, damit unten bei einer Drehung des l�nglichen Steins der Index nicht au�erhalb
	'des g�ltigen Bereichs sein kann. Links tritt dieses Problem auch auf, jedoch muss es dort anders
	'gel�st werden, weil der Index links bis zu -1 sein m�sste.
	Dim Besetzt(13, 22) As Boolean

	Dim Position As Integer '4 verschiedene Positionen, da Drehung der Steine m�glich
	Dim ReiheVoll As Integer 'wird bis 12 gez�hlt; zum �berpr�fen, ob eine Reihe vervollst�ndigt wurde
	Dim AnzahlReihen As Integer 'wird bis 4 gez�hlt; Anzahl der Reihen, die in einem Zug vervollst�ndigt wurden
	Dim Linien As Integer 'Anzahl der bereits vervollst�ndigten horizontalen Linien/Reihen in einem Level
	Dim Level As Integer 'Level, in dem man sich gerade befindet (Steine fallen mit h�herem Level schneller)
	Dim Zufallssound As Integer 'Je nach zuf�llig ausgew�hltem Wert wird ein anderer Sound abgespielt

	'F�r das Einspielen von kurzen Sounds w�hrend des Spiels habe ich folgende Funktion aus dem Windows-
	'Betriebssystem �bernommen. Man muss unterscheiden zwischen den verschiedenen punktuell eingespielten
	'Sounds und der m�glicherweise st�ndig laufenden Tetrismelodie im Windows-Media-Player. Diese beiden
	'Dinge haben nichts miteinander zu tun.
	'UPGRADE_NOTE: (2041) The following line was commented. More Information: https://docs.mobilize.net/vbuc/ewis#2041
	'Private Declare Function sndPlaySound Lib "Winmm"  Alias "sndPlaySoundA"(ByVal lpszSoundName As String, ByVal uFlags As Integer) As Integer
	Dim ohLordPlayer As Media.SoundPlayer
	Dim babiesPlayer As Media.SoundPlayer
	Dim topScorePlayer As Media.SoundPlayer
	Dim bearBlastingPlayer As Media.SoundPlayer

	'Startbutton:
	'Auf dem Platz des Startbuttons befindet sich auch der Button cmdWeiter, jedoch ist je nach Bedarf immer
	'nur einer von beiden sichtbar.
	'Der Startbutton dient zum Starten des Spiels. Beendet wird das Spiel ausschlie�lich durch Verlieren.
	'Pausen gibt es entweder beim Erreichen des n�chsten Levels (dann wird allerdings mit cmdWeiter
	'fortgefahren) oder mit der Taste P (f�r Pause)
	Private Sub cmdStart_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles cmdStart.Click

		cmdStart.Enabled = False 'Ein Spiel kann nicht doppelt gestarten werden

		'Erneutes Initialisieren nach vorhergegangenem Spiel
		If lblVerloren.Visible Then
			lblVerloren.Visible = False
			Timer1.Interval = 600
			'Timer1.Enabled = True
			Linien = 0
		End If

		If Not (Timer1.Enabled) Then
			Level = 1

			For x As Integer = 1 To 12
				For y As Integer = 1 To 20
					Besetzt(x, y) = False '"Freimachen" des gesamten Spielfeldes
				Next
			Next

			For x As Integer = 1 To 12
				Besetzt(x, 21) = True 'Herstellen des Bodens
				Besetzt(x, 0) = False 'Freimachen der Reihe �ber dem Spielfeld,
				'sodass Steine schon im ersten Intervall gedreht werden k�nnen
			Next

			For y As Integer = 1 To 21
				Besetzt(0, y) = True 'Herstellen des Rands
				Besetzt(13, y) = True 'Herstellen des Rands
			Next

			NeueFigur() 'Ein neuer Stein f�llt von oben herunter

			Timer1.Enabled = True
		End If

		Text1.Focus() 'Um die Eingabe von Befehlen zum Drehen etc. m�glich zu machen
	End Sub

	'Weiterbutton:
	'Falls das n�chste Level erreicht wurde, wird er sichtbar und verdeckt den Startbutton.
	'Er dient zum Fortfahren.
	Private Sub cmdWeiter_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles cmdWeiter.Click

		Timer1.Enabled = True
		lblVerloren.Visible = False
		cmdWeiter.Visible = False
		NeueFigur()
		Text1.Focus()
	End Sub


	'Infobutton
	'Hiermit wird lediglich eine Messagebox angezeigt, die die f�r die Bedienung des Spiels wichtigen Befehle
	'anzeigt. Falls das Spiel beim Klick auf den Button noch am laufen war, wird es unterbrochen.
	Private Sub Command1_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles Command1.Click

		'Anhalten des Spiels, sodass keine Steine w�hrend der Msgbox Anzeige unkontrolliert herunterfallen k�nnen
		If Timer1.Enabled Then
			Timer1.Enabled = False
			lblPause.Visible = True
		End If

		MessageBox.Show("W = Drehen, ASD = Steuern, P = Pause", My.Application.Info.Title)
		Text1.Focus() 'Erneutes Dr�cken auf P zum Beenden der Pause muss m�glich sein
	End Sub


	Private Sub Form_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles MyBase.Click

		Text1.Focus() 'Im Zweifelsfall muss der Focus immer auf dem Eingabetextfeld liegen,
		'sodass man die herunterfallenden Steine steuern kann
	End Sub


	'UPGRADE_WARNING: (2080) Form_Load event was upgraded to Form_Load method and has a new behavior. More Information: https://docs.mobilize.net/vbuc/ewis#2080
	Private Sub Form_Load()
		Dim Dateiname As String = ""

		'Initialisierungsbefehle
		neueZufallsfigur = 0
		NextFigur = 5
		Linien = 0
		Level = 1
		Zufallssound = 0

		'Laden der Tetrismelodie aus dem Ordner, in dem sich auch die EXE-Datei befindet.
		'Sie wird mit dem Windows Media Player rechts am Rand wiedergegeben.
		'Der Windows Media Player ist ein Add-in-Steuerelement, das extra geladen werden musste.
		Dim Jaa As String = My.Application.Info.DirectoryPath
		If Dateiname.Substring(Math.Max(Dateiname.Length - 1, 0)) <> "\" Then Jaa = Jaa & "\"
		Player.URL = Jaa & "Musik.wav"

		ohLordPlayer = New Media.SoundPlayer(Me.resources.GetStream("OhLord"))
		babiesPlayer = New Media.SoundPlayer(Me.resources.GetStream("Babies"))
		topScorePlayer = New Media.SoundPlayer(Me.resources.GetStream("TopScore"))
		bearBlastingPlayer = New Media.SoundPlayer(Me.resources.GetStream("BearBlasting"))

		Me.Player.settings.setMode("loop", True)

	End Sub

	Public Function NeueFigur() As Object

		'4 neue K�sten werden w�hrend der Laufzeit erstellt und weiter unten zu einem Stein angeordnet.
		'Figur.UBound gibt den derzeit gr��ten Index des Steuerelementarrays Figur() an.
		'Somit erweitert sich das Steuerelementarray sinnvoll um die die n�chsten 4 Elemente.
		For a As Integer = 0 To 3
			ControlArrayHelper.LoadControl(Me, "Figur", Figur.GetUpperBound(0) + 1)
		Next

		Zufallsfigur = NextFigur '�bernehmen der Warteschlangenfigur

		Select Case Zufallsfigur
			Case 1
				'Anordnen der neu erstellten K�sten zu einem Stein mit bestimmter Form oben in der Mitte des Spielfelds
				'Der Wert der Variable Zufallsfigur bestimmt die Form des Steins
				KastenX(Figur.GetUpperBound(0) - 0) = 5
				KastenY(Figur.GetUpperBound(0) - 0) = 1
				KastenX(Figur.GetUpperBound(0) - 1) = 6
				KastenY(Figur.GetUpperBound(0) - 1) = 1
				KastenX(Figur.GetUpperBound(0) - 2) = 6
				KastenY(Figur.GetUpperBound(0) - 2) = 2
				KastenX(Figur.GetUpperBound(0) - 3) = 7
				KastenY(Figur.GetUpperBound(0) - 3) = 2

			Case 2
				KastenX(Figur.GetUpperBound(0) - 0) = 5
				KastenY(Figur.GetUpperBound(0) - 0) = 2
				KastenX(Figur.GetUpperBound(0) - 1) = 6
				KastenY(Figur.GetUpperBound(0) - 1) = 2
				KastenX(Figur.GetUpperBound(0) - 2) = 6
				KastenY(Figur.GetUpperBound(0) - 2) = 1
				KastenX(Figur.GetUpperBound(0) - 3) = 7
				KastenY(Figur.GetUpperBound(0) - 3) = 1

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.Red 'Jede Steinform hat ihre eigene Farbe
				Next

			Case 3
				KastenX(Figur.GetUpperBound(0) - 0) = 6
				KastenY(Figur.GetUpperBound(0) - 0) = 1
				KastenX(Figur.GetUpperBound(0) - 1) = 5
				KastenY(Figur.GetUpperBound(0) - 1) = 2
				KastenX(Figur.GetUpperBound(0) - 2) = 6
				KastenY(Figur.GetUpperBound(0) - 2) = 2
				KastenX(Figur.GetUpperBound(0) - 3) = 7
				KastenY(Figur.GetUpperBound(0) - 3) = 2

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.FromArgb(0, 32, 96) 'Jede Steinform hat ihre eigene Farbe
				Next

			Case 4

				KastenX(Figur.GetUpperBound(0) - 0) = 6
				KastenY(Figur.GetUpperBound(0) - 0) = 1
				KastenX(Figur.GetUpperBound(0) - 1) = 7
				KastenY(Figur.GetUpperBound(0) - 1) = 1
				KastenX(Figur.GetUpperBound(0) - 2) = 6
				KastenY(Figur.GetUpperBound(0) - 2) = 2
				KastenX(Figur.GetUpperBound(0) - 3) = 7
				KastenY(Figur.GetUpperBound(0) - 3) = 2

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.FromArgb(29, 15, 5) 'Jede Steinform hat ihre eigene Farbe
				Next

			Case 5

				KastenX(Figur.GetUpperBound(0) - 0) = 5
				KastenY(Figur.GetUpperBound(0) - 0) = 1
				KastenX(Figur.GetUpperBound(0) - 1) = 6
				KastenY(Figur.GetUpperBound(0) - 1) = 1
				KastenX(Figur.GetUpperBound(0) - 2) = 7
				KastenY(Figur.GetUpperBound(0) - 2) = 1
				KastenX(Figur.GetUpperBound(0) - 3) = 8
				KastenY(Figur.GetUpperBound(0) - 3) = 1

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.FromArgb(255, 173, 63) 'Jede Steinform hat ihre eigene Farbe
				Next


			Case 6

				KastenX(Figur.GetUpperBound(0) - 0) = 5
				KastenY(Figur.GetUpperBound(0) - 0) = 2
				KastenX(Figur.GetUpperBound(0) - 1) = 6
				KastenY(Figur.GetUpperBound(0) - 1) = 2
				KastenX(Figur.GetUpperBound(0) - 2) = 7
				KastenY(Figur.GetUpperBound(0) - 2) = 2
				KastenX(Figur.GetUpperBound(0) - 3) = 7
				KastenY(Figur.GetUpperBound(0) - 3) = 1

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.FromArgb(0, 176, 240) 'Jede Steinform hat ihre eigene Farbe
				Next

			Case 7

				KastenX(Figur.GetUpperBound(0) - 0) = 5
				KastenY(Figur.GetUpperBound(0) - 0) = 2
				KastenX(Figur.GetUpperBound(0) - 1) = 6
				KastenY(Figur.GetUpperBound(0) - 1) = 2
				KastenX(Figur.GetUpperBound(0) - 2) = 7
				KastenY(Figur.GetUpperBound(0) - 2) = 2
				KastenX(Figur.GetUpperBound(0) - 3) = 5
				KastenY(Figur.GetUpperBound(0) - 3) = 1

				For a As Integer = 0 To 3
					Figur(Figur.GetUpperBound(0) - a).FillColor = Color.FromArgb(239, 216, 0) 'Jede Steinform hat ihre eigene Farbe
				Next

		End Select

		For a As Integer = 0 To 3 'Sichtbarmachen des neu erstellten Steins
			Figur(Figur.GetUpperBound(0) - a).Visible = True
		Next

		Position = 1 'Anfangswert f�r sp�tere Drehungen

		NextFigur = neueZufallsfigur '�bernehmen eines zuf�lligen Werts f�r die Warteschlangenfigur

		'Je nachdem, welche Figur als n�chstes drankommt, muss die Anzeige rechts in der Mitte umgestellt werden
		'Es existieren alle 7 verschiedenen Steine als Steuerelementarrays "Zahl(0 to 3)", jedoch ist immer
		'nur eins von ihnen sichtbar.
		Select Case NextFigur
			Case 1
				For a As Integer = 0 To 3
					Eins(a).Visible = True
					Zwei(a).Visible = False
					Drei(a).Visible = False
					Vier(a).Visible = False
					F�nf(a).Visible = False
					Sechs(a).Visible = False
					Sieben(a).Visible = False
				Next

			Case 2
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = True
					Drei(a).Visible = False
					Vier(a).Visible = False
					F�nf(a).Visible = False
					Sechs(a).Visible = False
					Sieben(a).Visible = False
				Next

			Case 3
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = False
					Drei(a).Visible = True
					Vier(a).Visible = False
					F�nf(a).Visible = False
					Sechs(a).Visible = False
					Sieben(a).Visible = False
				Next

			Case 4
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = False
					Drei(a).Visible = False
					Vier(a).Visible = True
					F�nf(a).Visible = False
					Sechs(a).Visible = False
					Sieben(a).Visible = False
				Next

			Case 5
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = False
					Drei(a).Visible = False
					Vier(a).Visible = False
					F�nf(a).Visible = True
					Sechs(a).Visible = False
					Sieben(a).Visible = False
				Next

			Case 6
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = False
					Drei(a).Visible = False
					Vier(a).Visible = False
					F�nf(a).Visible = False
					Sechs(a).Visible = True
					Sieben(a).Visible = False
				Next

			Case 7
				For a As Integer = 0 To 3
					Eins(a).Visible = False
					Zwei(a).Visible = False
					Drei(a).Visible = False
					Vier(a).Visible = False
					F�nf(a).Visible = False
					Sechs(a).Visible = False
					Sieben(a).Visible = True
				Next
		End Select

		Darstellung()
	End Function

	'Timer Reihe:
	'Dieser Timer wird aktiviert, wenn Timer1, also der Spieltimer, bei Vervollst�ndigung einer Reihe
	'ausgeschaltet wurde. Jedoch schaltet sich der Timer "Reihe" beim ersten Ereignis sofort selbst aus
	'und er schaltet den Spieltimer wieder an. Somit steht das Intervall des Timers "Reihe" f�r die L�nge
	'der Pause nach der Vervollst�ndigung einer/mehrer Reihe/n
	Private Sub Reihe_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles Reihe.Tick
		imgBear.Visible = False
		Timer1.Enabled = True
		Reihe.Enabled = False
	End Sub

	'Eingabetextfeld:
	'Die Steuerung des Spiels l�uft �ber dieses Textfeld. W�hrend der Spielzeit hat es immer den Focus, sodass die
	'Steuerung immer m�glich ist. Eine Ausnahme ist das Bedienen des Windows Media Players. Hiernach kann man jedoch
	'irgendwo auf das Formular klicken und das Textfeld bekommt wieder den Focus (dank Form_Click).
	'Die automatisch in dieses Sub �bergebene Variable KeyAscii enth�lt den Asciicode des zuletzt eingegebenen Zeichens.
	'Hieraus kann man ableiten, ob w,a,s,d oder p gedr�ckt wurde und demnach kann man die richtige Operation ausf�hren.
	Private Sub Text1_KeyPress(ByVal eventSender As Object, ByVal eventArgs As KeyPressEventArgs) Handles Text1.KeyPress
		Dim KeyAscii As Integer = Convert.ToInt32(eventArgs.KeyChar)
		Try

			If Timer1.Enabled Then

				'falls die Bewegung in die Hose geht, muss die vorherige Position gespeichert werden,
				'um sie evt. wiederherzustellen
				For a As Integer = 0 To 3
					KastenXDAVOR(a) = KastenX(Figur.GetUpperBound(0) - a)
					KastenYDAVOR(a) = KastenY(Figur.GetUpperBound(0) - a)
				Next

				If KeyAscii = 119 Then 'W zum Drehen des Steins

					Position += 1 'Rotieren
					If Position = 5 Then 'Es gibt nur 4 Positionen/Anordnungen
						Position = 1
					End If


					Select Case Zufallsfigur 'Hat noch den Wert des Aktuellen Spielsteins, der gedreht werden muss
						Case 1 'Ist n�tig, um zu wissen, wie man den Stein drehen muss

							Select Case Position
								'Neuanordnung der K�sten, sodass der Stein am Ende "gedreht" ist
								Case 2, 4
									KastenY(Figur.GetUpperBound(0) - 2) -= 2
									KastenX(Figur.GetUpperBound(0) - 3) -= 2
								Case 3, 1
									KastenY(Figur.GetUpperBound(0) - 2) += 2
									KastenX(Figur.GetUpperBound(0) - 3) += 2
							End Select

						Case 2
							Select Case Position
								Case 2, 4
									KastenY(Figur.GetUpperBound(0) - 1) -= 2
									KastenX(Figur.GetUpperBound(0) - 0) += 2
								Case 3, 1
									KastenY(Figur.GetUpperBound(0) - 1) += 2
									KastenX(Figur.GetUpperBound(0) - 0) -= 2
							End Select

						Case 3
							Select Case Position
								Case 2
									KastenY(Figur.GetUpperBound(0) - 1) += 1
									KastenX(Figur.GetUpperBound(0) - 1) += 1
								Case 3
									KastenY(Figur.GetUpperBound(0) - 0) += 1
									KastenX(Figur.GetUpperBound(0) - 0) -= 1
								Case 4
									KastenY(Figur.GetUpperBound(0) - 3) -= 1
									KastenX(Figur.GetUpperBound(0) - 3) -= 1
								Case 1
									KastenY(Figur.GetUpperBound(0) - 0) -= 1
									KastenX(Figur.GetUpperBound(0) - 0) += 1
									KastenY(Figur.GetUpperBound(0) - 1) -= 1
									KastenX(Figur.GetUpperBound(0) - 1) -= 1
									KastenY(Figur.GetUpperBound(0) - 3) += 1
									KastenX(Figur.GetUpperBound(0) - 3) += 1

							End Select

						Case 5 'l�nglicher Stein

							If KastenX(Figur.GetUpperBound(0)) = 1 And (Position = 1 Or Position = 3) Then
								'Sonderfall vom R�ckg�ngig-Machen eines Zuges:
								'Falls der l�ngliche Stein parallel zur linken Seitenwand ist, direkt an ihr liegt und
								'gedreht wird, so ist das nicht m�glich, da der Stein, der sich anschlie�end horizontal
								'am weitesten links bef�nde, dann au�erhalb des Bereichs des Arrays Besetzt(,) w�re und
								'eine folgende Abfrage eine Fehlermeldung bringen w�rde.
								'Der Wert 0 f�r die X-Koordinate von Besetzt(,) gilt n�mlich schon f�r die Spalte direkt
								'neben dem Spielfeld. Auf der linken Seite w�re aber dann immer noch ein Kasten bei der
								'Koordinate -1, die nicht existiert. Dieser Fall wird mit dieser Verzweigung ausgeschlossen.

								Position = 4 'vertikale Position wieder einnehmen
							Else

								Select Case Position
									Case 2, 4
										KastenY(Figur.GetUpperBound(0) - 0) += 2
										KastenX(Figur.GetUpperBound(0) - 0) += 2
										KastenY(Figur.GetUpperBound(0) - 1) -= 1
										KastenX(Figur.GetUpperBound(0) - 1) += 1
										KastenY(Figur.GetUpperBound(0) - 3) += 1
										KastenX(Figur.GetUpperBound(0) - 3) -= 1

									Case 3
										KastenY(Figur.GetUpperBound(0) - 0) -= 2
										KastenX(Figur.GetUpperBound(0) - 0) -= 2
										KastenY(Figur.GetUpperBound(0) - 1) += 1
										KastenX(Figur.GetUpperBound(0) - 1) -= 1
										KastenY(Figur.GetUpperBound(0) - 3) -= 1
										KastenX(Figur.GetUpperBound(0) - 3) += 1

									Case 1
										KastenY(Figur.GetUpperBound(0) - 0) -= 2
										KastenX(Figur.GetUpperBound(0) - 0) -= 2
										KastenY(Figur.GetUpperBound(0) - 1) += 1
										KastenX(Figur.GetUpperBound(0) - 1) -= 1
										KastenY(Figur.GetUpperBound(0) - 3) -= 1
										KastenX(Figur.GetUpperBound(0) - 3) += 1
								End Select
							End If

						Case 6
							Select Case Position
								Case 2
									KastenY(Figur.GetUpperBound(0) - 0) -= 2
									KastenX(Figur.GetUpperBound(0) - 0) += 1
									KastenX(Figur.GetUpperBound(0) - 3) -= 1

								Case 3
									KastenY(Figur.GetUpperBound(0) - 0) += 1
									KastenX(Figur.GetUpperBound(0) - 0) -= 1
									KastenY(Figur.GetUpperBound(0) - 1) -= 1
									KastenY(Figur.GetUpperBound(0) - 2) -= 1
									KastenY(Figur.GetUpperBound(0) - 3) += 1
									KastenX(Figur.GetUpperBound(0) - 3) -= 1
								Case 4
									KastenY(Figur.GetUpperBound(0) - 2) += 2
									KastenX(Figur.GetUpperBound(0) - 2) -= 1
									KastenX(Figur.GetUpperBound(0) - 3) += 1
								Case 1
									KastenY(Figur.GetUpperBound(0) - 2) -= 1
									KastenX(Figur.GetUpperBound(0) - 2) += 1
									KastenY(Figur.GetUpperBound(0) - 0) += 1
									KastenY(Figur.GetUpperBound(0) - 1) += 1
									KastenY(Figur.GetUpperBound(0) - 3) -= 1
									KastenX(Figur.GetUpperBound(0) - 3) += 1
							End Select

						Case 7
							Select Case Position
								Case 2
									KastenX(Figur.GetUpperBound(0) - 0) += 1
									KastenY(Figur.GetUpperBound(0) - 1) -= 1
									KastenY(Figur.GetUpperBound(0) - 2) -= 1
									KastenY(Figur.GetUpperBound(0) - 3) += 2
									KastenX(Figur.GetUpperBound(0) - 3) += 1

								Case 3
									KastenX(Figur.GetUpperBound(0) - 0) += 1
									KastenY(Figur.GetUpperBound(0) - 3) -= 2
									KastenX(Figur.GetUpperBound(0) - 3) -= 1
								Case 4
									KastenY(Figur.GetUpperBound(0) - 0) -= 2
									KastenX(Figur.GetUpperBound(0) - 0) -= 1
									KastenY(Figur.GetUpperBound(0) - 1) += 1
									KastenX(Figur.GetUpperBound(0) - 2) -= 1
									KastenY(Figur.GetUpperBound(0) - 3) += 1
								Case 1
									KastenY(Figur.GetUpperBound(0) - 0) += 2
									KastenX(Figur.GetUpperBound(0) - 0) -= 1
									KastenY(Figur.GetUpperBound(0) - 2) += 1
									KastenX(Figur.GetUpperBound(0) - 2) += 1
									KastenY(Figur.GetUpperBound(0) - 3) -= 1
							End Select
					End Select

					For a As Integer = 0 To 3
						'Falls die angestrebte Position besetzt ist:
						'Hiermit werden "normale" Z�ge r�ckg�ngig gemacht, bei denen die Problematik von nicht
						'existierenden Feldern nicht existiert.
						'Unm�gliche Drehungen am Rand von allen Figuren au�er der l�nglichen Figur betreffen n�mlich
						'nur die 1. Spalte/Zeile au�erhalb des Spielfelds, die deklariert ist.
						If Besetzt(KastenX(Figur.GetUpperBound(0) - a), KastenY(Figur.GetUpperBound(0) - a)) Then

							For j As Integer = 0 To 3
								KastenX(Figur.GetUpperBound(0) - j) = KastenXDAVOR(j)
								KastenY(Figur.GetUpperBound(0) - j) = KastenYDAVOR(j)
							Next

							Position -= 1 'Zur�ckrotieren
							If Position = 0 Then
								Position = 4
							End If
							Exit For
						End If
					Next

				End If


				If KeyAscii = 115 Then 'F�r das schnellere Absenken des Steins mithilfe der S-Taste
					'Ereignis des Spieltimers wird hier auch ausgef�hrt
					For a As Integer = 0 To 3
						KastenY(Figur.GetUpperBound(0) - a) += 1
					Next
					SenkrechteBewegung()
				End If


				If KeyAscii = 97 Then 'a f�r nach LINKS

					For a As Integer = 0 To 3
						'Abfrage, ob die Pl�tze links neben den K�sten des Steins �berhaupt frei sind
						If Besetzt(KastenX(Figur.GetUpperBound(0) - a) - 1, KastenY(Figur.GetUpperBound(0) - a)) Then
							Linksbewegung = 0
							Exit For
						Else
							Linksbewegung = 1
						End If
					Next

					'Verschieben (1) bzw. nicht-Verschieben (0) des Steins
					For a As Integer = 0 To 3
						KastenX(Figur.GetUpperBound(0) - a) -= Linksbewegung
					Next

				End If


				If KeyAscii = 100 Then 'd f�r nach RECHTS

					For a As Integer = 0 To 3
						'Abfrage, ob die Pl�tze rechts neben den K�sten des Steins �berhaupt frei sind
						If Besetzt(KastenX(Figur.GetUpperBound(0) - a) + 1, KastenY(Figur.GetUpperBound(0) - a)) Then
							Rechtsbewegung = 0
							Exit For
						Else
							Rechtsbewegung = 1
						End If
					Next

					'Verschieben (1) bzw. nicht-Verschieben (0) des Steins
					For a As Integer = 0 To 3
						KastenX(Figur.GetUpperBound(0) - a) += Rechtsbewegung
					Next

				End If

				Darstellung() 'Egal, welche Eingabe welche Bewegung verursacht hat, die Bewegung muss
				'dargestellt werden.

				If KeyAscii = 112 And Not lblPause.Visible Then 'Falls P f�r das Starten der Pause gedr�ckt wurde
					Timer1.Enabled = False
					lblPause.Visible = True
				End If

			Else
				If KeyAscii = 112 And lblPause.Visible Then 'Falls P f�r das Beenden der Pause gedr�ckt wurde
					Timer1.Enabled = True
					lblPause.Visible = False
				End If
			End If
		Finally 
			If KeyAscii = 0 Then
				eventArgs.Handled = True
			End If
			eventArgs.KeyChar = Convert.ToChar(KeyAscii)
		End Try
	End Sub

	'Dieser Timer ist der Spieltimer, der w�hrend der Spielzeit nahezu immer aktiviert ist.
	'Sein Intervall ist abh�ngig vom Level. In Level 1 betr�gt es 600ms und pro Level wird es um 0.8 k�rzer.
	Private Sub Timer1_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles Timer1.Tick

		'Stein f�llt um eine Koordinate pro Timerereignis herunter;
		'der gleiche Code befindet sich beim eigenst�ndigen Absenken eines Steins in Text1_KeyPress
		For a As Integer = 0 To 3
			KastenY(Figur.GetUpperBound(0) - a) += 1
		Next

		SenkrechteBewegung()
	End Sub

	'Dieser Timer ist f�r die Zuf�lligkeit der Figuren und der Sounds verantwortlich. Er wird nie
	'ausgeschaltet.
	Private Sub Zufallsgenerator_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles Zufallsgenerator.Tick

		'Zuf�llige Figur wird st�ndig durchgez�hlt, bevor die Variable f�r den Warteschlangenstein
		'"NextFigur" beim Zu-Boden-Fallen des Spielsteins den Wert von neueZufallsfigur annimmt.
		'Bemerkung:
		'Das Intervall des Zufallsgenerators betr�gt eine Millisekunde. Weil jeder Spielstein verschieden
		'lange zum Herunterfallen braucht (eigenst�ndiges Absenken mit s, verschiedene Fallh�hen gegeben
		'durch Spielfeld oder verschiedene Steingr��en etc.) ist auch wirklich eine Zuf�lligkeit f�r den
		'n�chsten Stein gegeben. Nur, wenn man es zu Stande bringt, dass die Anzahl der Millisekunden
		'zwischen den Auswahlereignissen der neuen Steine immer durch 7 teilbar ist, bekommt man immer
		'den gleichen neuen Stein.
		neueZufallsfigur += 1
		If neueZufallsfigur = 8 Then
			neueZufallsfigur = 1
		End If

		'Der Zufallssound wird eingespielt, wenn man 4 Reihen auf einmal vervollst�ndigt hat. Er ist ebenfalls
		'von der Zeit abh�ngig.
		Zufallssound += 1
		If Zufallssound = 2 Then
			Zufallssound = 0
		End If

		'sonstige n�tzliche Befehle, die immer gelten
		lblLevel.Text = CStr(Level)
		lblLinien.Text = CStr(Linien)
	End Sub

	'Umsetzen der Position auf dem selbst erstellten Raster (KastenXY) in eine konkrete Position im Fenster
	Public Function Darstellung() As Object

		For a As Integer = 0 To 3
			With Figur(Figur.GetUpperBound(0) - a)
				.Top = (360 * (KastenY(Figur.GetUpperBound(0) - a) - 1) + 1200) / 15
				.Left = (360 * (KastenX(Figur.GetUpperBound(0) - a) - 1) + 1200) / 15
			End With
		Next
	End Function

	'Diese Funktion wird immer aufgerufen, wenn eine senkrechte Bewegung gemacht wurde.
	Public Function SenkrechteBewegung() As Object
		Dim Dateiname As String = ""

		For a As Integer = 0 To 3
			'Abfrage, ob einer der K�sten des Steins auf einem bereits besetzten Feld gelandet ist
			If Besetzt(KastenX(Figur.GetUpperBound(0) - a), KastenY(Figur.GetUpperBound(0) - a)) Then

				For p As Integer = 0 To 3
					'Alle K�sten des Steins m�ssen wieder um ein Feld h�her ger�ckt werden
					KastenY(Figur.GetUpperBound(0) - p) -= 1

					'diese Position abspeichern, sodass der n�chste Stein dort nicht hin kann
					Besetzt(KastenX(Figur.GetUpperBound(0) - p), KastenY(Figur.GetUpperBound(0) - p)) = True
				Next

				NeueFigur() 'Da alte Figur ihren Platz gefunden hat
				Exit For
			End If
		Next

		'Falls sich die Steine bis oben hin aufget�rmt haben, verliert man
		If Besetzt(6, 1) Or Besetzt(5, 1) Or Besetzt(7, 1) Then
			lblVerloren.Text = "Fail!"
			VerlorenGewonnen()
			Exit Function
		End If

		'Pr�fen, ob eine Reihe vervollst�ndigt wurde
		ReiheVoll = 0 'Initialisierung
		AnzahlReihen = 0 'Initialisierung
		For y As Integer = 1 To 20

			For x As Integer = 1 To 12 'Durchz�hlen
				If Besetzt(x, y) Then
					ReiheVoll += 1
				Else
					ReiheVoll = 0
					Exit For
				End If
			Next x

			If ReiheVoll = 12 Then '12 -> Reihe ist voll, da alle 12 horizontalen Felder besetzt sind

				AnzahlReihen += 1

				For C As Integer = 1 To Figur.GetUpperBound(0)
					If (Figur(C).Top * 15 - 1200) / 360 = y - 1 Then
						Figur(C).Visible = False 'Ausblenden der Reihe
					End If

					If (Figur(C).Top * 15 - 1200) / 360 < y - 1 Then
						Figur(C).Top += 24 'Runterrutschenlassen der unvollst�ndigen Reihen dar�ber
						'(Anzeige der Steuerelemente)
					End If
				Next C

				For a As Integer = y To 1 Step -1
					For b As Integer = 1 To 12
						Besetzt(b, a) = Besetzt(b, a - 1) 'Runterrutschenlassen der unvollst�ndigen Reihen dar�ber
						'(Array, mit dem gerechnet wird)
					Next b
				Next a

				ReiheVoll = 0 'damit f�r die n�chste Y-Zeile der Wert schon zur�ckgesetzt ist

			End If

		Next y

		If AnzahlReihen > 0 Then

			Linien += AnzahlReihen

			If Linien >= 20 Then 'Bedingung f�r das n�chste Level
				lblVerloren.Text = "Gut Gemacht!"
				VerlorenGewonnen() 'Spielunterbrechung
				Level += 1
				Linien = 0
				If IIf(Not Timer1.Enabled, 0, Timer1.Interval) * 4 / 5 = 0 Then
					Timer1.Enabled = False
				Else
					Timer1.Interval = IIf(Not Timer1.Enabled, 0, Timer1.Interval) * 4 / 5
					Timer1.Enabled = True
				End If 'erh�hter Schwierigkeitsgrad
				cmdWeiter.Visible = True
				Exit Function
			End If

			Select Case AnzahlReihen

				Case 3
					bearBlastingPlayer.Play()
				Case 4
					babiesPlayer.Play()
			End Select

			imgBear.Visible = True
			If 500 + AnzahlReihen * 150 = 0 Then
				Reihe.Enabled = False
			Else
				Reihe.Interval = 500 + AnzahlReihen * 150
				Reihe.Enabled = True
			End If 'je mehr Reihen man vervollst�ndigt,
			Reihe.Enabled = True 'desto l�nger ist die Pause danach
			Timer1.Enabled = False
		End If

		Darstellung()

	End Function

	'Diese Funktion wird immer aufgerufen, wenn man verloren oder gewonnen (n�chstes Level) hat.
	Public Function VerlorenGewonnen() As Object
		Dim Dateiname As String = ""

		Timer1.Enabled = False 'Anhalten des Spiels

		For a As Integer = 0 To Figur.GetUpperBound(0) 'Unsichtbarmachen aller Steine
			Figur(a).Visible = False
		Next

		For x As Integer = 1 To 12
			For y As Integer = 1 To 20
				Besetzt(x, y) = False 'Freimachen des Gesamten Spielfelds
			Next
		Next

		'Falls man verloren hat, wird der Versagersound eingespielt
		If lblVerloren.Text = "Fail!" Then
			'Dateiname = My.Application.Info.DirectoryPath
			'If Dateiname.Substring(Math.Max(Dateiname.Length - 1, 0)) <> "\" Then Dateiname = Dateiname & "\"
			' Dateiname = Dateiname & "OhLord.wav"
			' Only works on windows. But this all only works on windows anyway?
			ohLordPlayer.Play()
			' HighSchoolProjectsSupport.SafeNative.winmm.sndPlaySound(Dateiname, 1) 'Nutzen der Windowsfunktion
			cmdStart.Enabled = True
		End If

		'Falls man gewonnen hat, wird der Gewinnersound eingespielt
		If lblVerloren.Text = "Gut Gemacht!" Then
			' Dateiname = My.Application.Info.DirectoryPath
			' If Dateiname.Substring(Math.Max(Dateiname.Length - 1, 0)) <> "\" Then Dateiname = Dateiname & "\"
			' Dateiname = Dateiname & "TopScore.wav"
			' HighSchoolProjectsSupport.SafeNative.winmm.sndPlaySound(Dateiname, 1) 'Nutzen der Windowsfunktion
			topScorePlayer.Play()
		End If

		lblVerloren.Visible = True 'Anzeigen des Banners
	End Function
	Private Sub Form_Closed(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles MyBase.Closed
	End Sub
End Class