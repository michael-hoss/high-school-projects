VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form ASDF 
   BackColor       =   &H00404040&
   Caption         =   "Tetris"
   ClientHeight    =   9435
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   8715
   FillColor       =   &H00050F1D&
   FillStyle       =   0  'Ausgef�llt
   LinkTopic       =   "Form1"
   ScaleHeight     =   9435
   ScaleWidth      =   8715
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.CommandButton cmdWeiter 
      Caption         =   "&Weiter"
      Height          =   495
      Left            =   6360
      TabIndex        =   9
      Top             =   6840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Info"
      Height          =   495
      Left            =   6360
      TabIndex        =   2
      Top             =   7560
      Width           =   1215
   End
   Begin VB.Timer Reihe 
      Enabled         =   0   'False
      Interval        =   600
      Left            =   2880
      Top             =   8760
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   9960
      TabIndex        =   0
      Top             =   3720
      Width           =   1815
   End
   Begin VB.Timer Zufallsgenerator 
      Interval        =   1
      Left            =   3960
      Top             =   8760
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "&Start"
      Height          =   495
      Left            =   6360
      TabIndex        =   1
      Top             =   6840
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   600
      Left            =   5040
      Top             =   8760
   End
   Begin WMPLibCtl.WindowsMediaPlayer Player 
      Height          =   555
      Left            =   6360
      TabIndex        =   11
      Top             =   5880
      Width           =   1215
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   500
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   80
      mute            =   0   'False
      uiMode          =   "mini"
      stretchToFit    =   0   'False
      windowlessVideo =   -1  'True
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   2143
      _cy             =   979
   End
   Begin VB.Image imgBear 
      Height          =   3420
      Left            =   1200
      Picture         =   "Tetris_Form.frx":0000
      Stretch         =   -1  'True
      Top             =   2760
      Visible         =   0   'False
      Width           =   4335
   End
   Begin VB.Label lblPause 
      Alignment       =   2  'Zentriert
      BackStyle       =   0  'Transparent
      Caption         =   "Pause"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   1320
      TabIndex        =   10
      Top             =   3120
      Visible         =   0   'False
      Width           =   4095
   End
   Begin VB.Label lblLevel 
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   6360
      TabIndex        =   8
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Label lblasdf 
      BackStyle       =   0  'Transparent
      Caption         =   "Level"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   6360
      TabIndex        =   7
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label lblLinien 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   6360
      TabIndex        =   6
      Top             =   2880
      Width           =   1935
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Linien"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   6360
      TabIndex        =   5
      Top             =   2520
      Width           =   1455
   End
   Begin VB.Label lblVerloren 
      Alignment       =   2  'Zentriert
      BackStyle       =   0  'Transparent
      Caption         =   "Fail!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   1320
      TabIndex        =   4
      Top             =   3120
      Visible         =   0   'False
      Width           =   4095
   End
   Begin VB.Shape F�nf 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H003FADFF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6720
      Top             =   4680
      Width           =   360
   End
   Begin VB.Shape F�nf 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H003FADFF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   7080
      Top             =   4680
      Width           =   360
   End
   Begin VB.Shape F�nf 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H003FADFF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   7440
      Top             =   4680
      Width           =   360
   End
   Begin VB.Shape Vier 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00050F1D&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6360
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Vier 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00050F1D&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   6720
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Vier 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00050F1D&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Drei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00602000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   7080
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Drei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00602000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6360
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Drei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00602000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   6720
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Drei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00602000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Zwei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6360
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Zwei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Zwei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   7080
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Zwei 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   6720
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Eins 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6720
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Eins 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Eins 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   7080
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "N�chstes"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   6360
      TabIndex        =   3
      Top             =   3960
      Width           =   1455
   End
   Begin VB.Shape Figur 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   3720
      Top             =   840
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Line LinRechts 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   5
      X1              =   5520
      X2              =   5520
      Y1              =   1200
      Y2              =   8400
   End
   Begin VB.Line LinUnten 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   5
      X1              =   1200
      X2              =   5520
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line LinLinks 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   5
      X1              =   1200
      X2              =   1200
      Y1              =   1200
      Y2              =   8400
   End
   Begin VB.Shape Sieben 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000D8EF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   7080
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sechs 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00F0B000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   7080
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sieben 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000D8EF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sechs 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00F0B000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6720
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sieben 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000D8EF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   2
      Left            =   6360
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sechs 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00F0B000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6360
      Top             =   5040
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sechs 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00F0B000&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   7080
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Sieben 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000D8EF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   1
      Left            =   6360
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape F�nf 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H003FADFF&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6360
      Top             =   4680
      Width           =   360
   End
   Begin VB.Shape Vier 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H00050F1D&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   3
      Left            =   6360
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
   Begin VB.Shape Eins 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgef�llt
      Height          =   360
      Index           =   0
      Left            =   6360
      Top             =   4680
      Visible         =   0   'False
      Width           =   360
   End
End
Attribute VB_Name = "ASDF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Die folgenden 3 Variablen erm�glichen die zuf�llige Auswahls des n�chsten Spielsteins sowie die
'Anzeige dessen, w�hrend man noch mit dem vorherigen Spielstein spielt.
Dim neueZufallsfigur As Integer 'wird st�ndig im Timer Zufallsgenerator durchgez�hlt
Dim NextFigur As Integer        'hat den Wert des "Warteschlangensteins", der rechts angezeigt wird
Dim Zufallsfigur As Integer     'hat den Wert des aktuellen Spielsteins

'Die folgenden 2 Variablen dienen der Unterscheidung, ob eine horizontale Verschiebung ausgef�hrt
'wird oder nicht.
Dim Linksbewegung As Integer 'kann 0 oder 1 annehmen (Verschiebung um eine Spalte bzw. keine Versch.)
Dim Rechtsbewegung As Integer 'kann 0 oder 1 annehmen (Verschiebung um eine Spalte bzw. keine Versch.)

'Ein Spielstein enth�lt 4 K�sten. Jeder Kasten ist Teil eines Steuerelementarrays "Figur() as Shape"
'Die Position dieser Shapes hat jedoch unhandliche Werte im 3-4-Stelligen Bereich. Um diese weitest-
'gehend zu vermeiden, habe ich parallel dazu folgende Integerarrays deklariert, von denen die
'einzelnen Werte f�r KastenX zwischen 1 und 12 und f�r KastenY zwischen 0 und 20 liegen.
Dim KastenX(0 To 100000) As Integer  'X-Position des Kastens als Bestandteil des Spielsteins
Dim KastenY(0 To 100000)  As Integer 'Y-Position des Kastens als Bestandteil des Spielsteins

'Die folgenden Arrays dienen dazu, die Position eines Steins abzuspeichern, bevor er auf einen schon
'bestetzten Platz gefallen ist, damit man diese Position wiederherstellen kann.
Dim KastenXDAVOR(0 To 3) As Integer '(0 To 3)-> 4 Elemente, da ein Stein 4 K�sten enth�lt
Dim KastenYDAVOR(0 To 3)  As Integer 'Sowohl X- als auch Y-Position

'Das folgende Array stellt das Spielfeld dar und gibt an, ob sich an einem Platz schon ein Stein
'befindet oder nicht. Das Spielfeld ist 12 Felder breit und 20 Felder hoch, der Rand betr�gt �berall
'au�er unten ein Feld, damit unten bei einer Drehung des l�nglichen Steins der Index nicht au�erhalb
'des g�ltigen Bereichs sein kann. Links tritt dieses Problem auch auf, jedoch muss es dort anders
'gel�st werden, weil der Index links bis zu -1 sein m�sste.
Dim Besetzt(0 To 13, 0 To 22) As Boolean

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
Private Declare Function sndPlaySound Lib "Winmm.dll" Alias _
"sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

'Startbutton:
'Auf dem Platz des Startbuttons befindet sich auch der Button cmdWeiter, jedoch ist je nach Bedarf immer
'nur einer von beiden sichtbar.
'Der Startbutton dient zum Starten des Spiels. Beendet wird das Spiel ausschlie�lich durch Verlieren.
'Pausen gibt es entweder beim Erreichen des n�chsten Levels (dann wird allerdings mit cmdWeiter
'fortgefahren) oder mit der Taste P (f�r Pause)
Private Sub cmdStart_Click()

    cmdStart.Enabled = False 'Ein Spiel kann nicht doppelt gestarten werden
    
    'Erneutes Initialisieren nach vorhergegangenem Spiel
    If lblVerloren.Visible = True Then
        lblVerloren.Visible = False
        Timer1.Interval = 600
        Linien = 0
    End If
    
    If Not (Timer1.Enabled) Then
        Level = 1
        
        For x = 1 To 12
            For y = 1 To 20
                Besetzt(x, y) = False '"Freimachen" des gesamten Spielfeldes
            Next
        Next
        
        For x = 1 To 12
            Besetzt(x, 21) = True 'Herstellen des Bodens
            Besetzt(x, 0) = False 'Freimachen der Reihe �ber dem Spielfeld,
                                  'sodass Steine schon im ersten Intervall gedreht werden k�nnen
        Next
        
        For y = 1 To 21
            Besetzt(0, y) = True 'Herstellen des Rands
            Besetzt(13, y) = True 'Herstellen des Rands
        Next
        
            Call NeueFigur 'Ein neuer Stein f�llt von oben herunter
        
            Timer1.Enabled = True
    End If
    
    Text1.SetFocus 'Um die Eingabe von Befehlen zum Drehen etc. m�glich zu machen
End Sub

'Weiterbutton:
'Falls das n�chste Level erreicht wurde, wird er sichtbar und verdeckt den Startbutton.
'Er dient zum Fortfahren.
Private Sub cmdWeiter_Click()

    Timer1.Enabled = True
    lblVerloren.Visible = False
    cmdWeiter.Visible = False
    Call NeueFigur
    Text1.SetFocus
End Sub


'Infobutton
'Hiermit wird lediglich eine Messagebox angezeigt, die die f�r die Bedienung des Spiels wichtigen Befehle
'anzeigt. Falls das Spiel beim Klick auf den Button noch am laufen war, wird es unterbrochen.
Private Sub Command1_Click()

    'Anhalten des Spiels, sodass keine Steine w�hrend der Msgbox Anzeige unkontrolliert herunterfallen k�nnen
    If Timer1.Enabled = True Then
        Timer1.Enabled = False
        lblPause.Visible = True
    End If
        
    MsgBox ("W = Drehen, ASD = Steuern, P = Pause")
    Text1.SetFocus 'Erneutes Dr�cken auf P zum Beenden der Pause muss m�glich sein
End Sub


Private Sub Form_Click()

    Text1.SetFocus 'Im Zweifelsfall muss der Focus immer auf dem Eingabetextfeld liegen,
                   'sodass man die herunterfallenden Steine steuern kann
End Sub


Private Sub Form_Load()
    
    'Initialisierungsbefehle
    neueZufallsfigur = 0
    NextFigur = 5
    Linien = 0
    Level = 1
    Zufallssound = 0
    
    'Laden der Tetrismelodie aus dem Ordner, in dem sich auch die EXE-Datei befindet.
    'Sie wird mit dem Windows Media Player rechts am Rand wiedergegeben.
    'Der Windows Media Player ist ein Add-in-Steuerelement, das extra geladen werden musste.
    Jaa = App.Path
    If Right(Dateiname, 1) <> "\" Then Jaa = Jaa & "\"
    Player.URL = Jaa & "Musik.wav"
End Sub

Public Function NeueFigur()

    '4 neue K�sten werden w�hrend der Laufzeit erstellt und weiter unten zu einem Stein angeordnet.
    'Figur.UBound gibt den derzeit gr��ten Index des Steuerelementarrays Figur() an.
    'Somit erweitert sich das Steuerelementarray sinnvoll um die die n�chsten 4 Elemente.
    For a = 0 To 3
        Load Figur(Figur.UBound + 1)
    Next
    
    Zufallsfigur = NextFigur '�bernehmen der Warteschlangenfigur
    
    Select Case Zufallsfigur
    Case 1
        'Anordnen der neu erstellten K�sten zu einem Stein mit bestimmter Form oben in der Mitte des Spielfelds
        'Der Wert der Variable Zufallsfigur bestimmt die Form des Steins
        KastenX(Figur.UBound - 0) = 5
        KastenY(Figur.UBound - 0) = 1
        KastenX(Figur.UBound - 1) = 6
        KastenY(Figur.UBound - 1) = 1
        KastenX(Figur.UBound - 2) = 6
        KastenY(Figur.UBound - 2) = 2
        KastenX(Figur.UBound - 3) = 7
        KastenY(Figur.UBound - 3) = 2
    
    Case 2
        KastenX(Figur.UBound - 0) = 5
        KastenY(Figur.UBound - 0) = 2
        KastenX(Figur.UBound - 1) = 6
        KastenY(Figur.UBound - 1) = 2
        KastenX(Figur.UBound - 2) = 6
        KastenY(Figur.UBound - 2) = 1
        KastenX(Figur.UBound - 3) = 7
        KastenY(Figur.UBound - 3) = 1
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 255 'Jede Steinform hat ihre eigene Farbe
        Next
        
    Case 3
        KastenX(Figur.UBound - 0) = 6
        KastenY(Figur.UBound - 0) = 1
        KastenX(Figur.UBound - 1) = 5
        KastenY(Figur.UBound - 1) = 2
        KastenX(Figur.UBound - 2) = 6
        KastenY(Figur.UBound - 2) = 2
        KastenX(Figur.UBound - 3) = 7
        KastenY(Figur.UBound - 3) = 2
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 6299648 'Jede Steinform hat ihre eigene Farbe
        Next
        
    Case 4
    
        KastenX(Figur.UBound - 0) = 6
        KastenY(Figur.UBound - 0) = 1
        KastenX(Figur.UBound - 1) = 7
        KastenY(Figur.UBound - 1) = 1
        KastenX(Figur.UBound - 2) = 6
        KastenY(Figur.UBound - 2) = 2
        KastenX(Figur.UBound - 3) = 7
        KastenY(Figur.UBound - 3) = 2
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 331549 'Jede Steinform hat ihre eigene Farbe
        Next
    
    Case 5
    
        KastenX(Figur.UBound - 0) = 5
        KastenY(Figur.UBound - 0) = 1
        KastenX(Figur.UBound - 1) = 6
        KastenY(Figur.UBound - 1) = 1
        KastenX(Figur.UBound - 2) = 7
        KastenY(Figur.UBound - 2) = 1
        KastenX(Figur.UBound - 3) = 8
        KastenY(Figur.UBound - 3) = 1
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 4173311 'Jede Steinform hat ihre eigene Farbe
        Next
        
        
    Case 6
    
        KastenX(Figur.UBound - 0) = 5
        KastenY(Figur.UBound - 0) = 2
        KastenX(Figur.UBound - 1) = 6
        KastenY(Figur.UBound - 1) = 2
        KastenX(Figur.UBound - 2) = 7
        KastenY(Figur.UBound - 2) = 2
        KastenX(Figur.UBound - 3) = 7
        KastenY(Figur.UBound - 3) = 1
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 15773696 'Jede Steinform hat ihre eigene Farbe
        Next
        
    Case 7
    
        KastenX(Figur.UBound - 0) = 5
        KastenY(Figur.UBound - 0) = 2
        KastenX(Figur.UBound - 1) = 6
        KastenY(Figur.UBound - 1) = 2
        KastenX(Figur.UBound - 2) = 7
        KastenY(Figur.UBound - 2) = 2
        KastenX(Figur.UBound - 3) = 5
        KastenY(Figur.UBound - 3) = 1
        
        For a = 0 To 3
            Figur(Figur.UBound - a).FillColor = 55535 'Jede Steinform hat ihre eigene Farbe
        Next
      
    End Select
    
    For a = 0 To 3 'Sichtbarmachen des neu erstellten Steins
        Figur(Figur.UBound - a).Visible = True
    Next
    
    Position = 1 'Anfangswert f�r sp�tere Drehungen
    
    NextFigur = neueZufallsfigur '�bernehmen eines zuf�lligen Werts f�r die Warteschlangenfigur
    
    'Je nachdem, welche Figur als n�chstes drankommt, muss die Anzeige rechts in der Mitte umgestellt werden
    'Es existieren alle 7 verschiedenen Steine als Steuerelementarrays "Zahl(0 to 3)", jedoch ist immer
    'nur eins von ihnen sichtbar.
    Select Case NextFigur
    Case 1
    For a = 0 To 3
        Eins(a).Visible = True
        Zwei(a).Visible = False
        Drei(a).Visible = False
        Vier(a).Visible = False
        F�nf(a).Visible = False
        Sechs(a).Visible = False
        Sieben(a).Visible = False
    Next
    
    Case 2
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = True
        Drei(a).Visible = False
        Vier(a).Visible = False
        F�nf(a).Visible = False
        Sechs(a).Visible = False
        Sieben(a).Visible = False
    Next
    
    Case 3
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = False
        Drei(a).Visible = True
        Vier(a).Visible = False
        F�nf(a).Visible = False
        Sechs(a).Visible = False
        Sieben(a).Visible = False
    Next
    
    Case 4
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = False
        Drei(a).Visible = False
        Vier(a).Visible = True
        F�nf(a).Visible = False
        Sechs(a).Visible = False
        Sieben(a).Visible = False
    Next
    
    Case 5
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = False
        Drei(a).Visible = False
        Vier(a).Visible = False
        F�nf(a).Visible = True
        Sechs(a).Visible = False
        Sieben(a).Visible = False
    Next
    
    Case 6
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = False
        Drei(a).Visible = False
        Vier(a).Visible = False
        F�nf(a).Visible = False
        Sechs(a).Visible = True
        Sieben(a).Visible = False
    Next
    
    Case 7
    For a = 0 To 3
        Eins(a).Visible = False
        Zwei(a).Visible = False
        Drei(a).Visible = False
        Vier(a).Visible = False
        F�nf(a).Visible = False
        Sechs(a).Visible = False
        Sieben(a).Visible = True
    Next
    End Select
    
    Call Darstellung
End Function

'Timer Reihe:
'Dieser Timer wird aktiviert, wenn Timer1, also der Spieltimer, bei Vervollst�ndigung einer Reihe
'ausgeschaltet wurde. Jedoch schaltet sich der Timer "Reihe" beim ersten Ereignis sofort selbst aus
'und er schaltet den Spieltimer wieder an. Somit steht das Intervall des Timers "Reihe" f�r die L�nge
'der Pause nach der Vervollst�ndigung einer/mehrer Reihe/n
Private Sub Reihe_Timer()
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
Private Sub Text1_KeyPress(KeyAscii As Integer)

If Timer1.Enabled Then
    
    'falls die Bewegung in die Hose geht, muss die vorherige Position gespeichert werden,
    'um sie evt. wiederherzustellen
    For a = 0 To 3
        KastenXDAVOR(a) = KastenX(Figur.UBound - a)
        KastenYDAVOR(a) = KastenY(Figur.UBound - a)
    Next
    
    If (KeyAscii = 119) Then 'W zum Drehen des Steins
    
        Position = Position + 1 'Rotieren
        If Position = 5 Then 'Es gibt nur 4 Positionen/Anordnungen
            Position = 1
        End If

        
        Select Case Zufallsfigur 'Hat noch den Wert des Aktuellen Spielsteins, der gedreht werden muss
        Case 1
            Select Case Position 'Ist n�tig, um zu wissen, wie man den Stein drehen muss
            
            'Neuanordnung der K�sten, sodass der Stein am Ende "gedreht" ist
            Case 2
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) - 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 2
            Case 3
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) + 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 2
            Case 4
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) - 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 2
            Case 1
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) + 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 2
            End Select
            
        Case 2
            Select Case Position
            Case 2
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 2
            Case 3
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 2
            Case 4
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 2
            Case 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 2
            End Select

        Case 3
            Select Case Position
            Case 2
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 1
                KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) + 1
            Case 3
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 1
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 1
            Case 4
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
            Case 1
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) - 1
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 1
                KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) - 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1

            End Select
            
        Case 5 'l�nglicher Stein
        
            If KastenX(Figur.UBound) = 1 And (Position = 1 Or Position = 3) Then
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
                Case 2
                    KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 2
                    KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 2
                    KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 1
                    KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) + 1
                    KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 1
                    KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
    
                Case 3
                    KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) - 2
                    KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 2
                    KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 1
                    KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) - 1
                    KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 1
                    KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1
                    
                Case 4
                    KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 2
                    KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 2
                    KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 1
                    KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) + 1
                    KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 1
                    KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
    
                Case 1
                    KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) - 2
                    KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 2
                    KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 1
                    KastenX(Figur.UBound - 1) = KastenX(Figur.UBound - 1) - 1
                    KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 1
                    KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1
                End Select
            End If

        Case 6
            Select Case Position
            Case 2
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) - 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
                
            Case 3
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 1
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 1
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) - 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
            Case 4
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) + 2
                KastenX(Figur.UBound - 2) = KastenX(Figur.UBound - 2) - 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1
            Case 1
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) - 1
                KastenX(Figur.UBound - 2) = KastenX(Figur.UBound - 2) + 1
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 1
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1
            End Select

        Case 7
            Select Case Position
            Case 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) - 1
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) - 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) + 1
                
            Case 3
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) + 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 2
                KastenX(Figur.UBound - 3) = KastenX(Figur.UBound - 3) - 1
            Case 4
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) - 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 1
                KastenY(Figur.UBound - 1) = KastenY(Figur.UBound - 1) + 1
                KastenX(Figur.UBound - 2) = KastenX(Figur.UBound - 2) - 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) + 1
            Case 1
                KastenY(Figur.UBound - 0) = KastenY(Figur.UBound - 0) + 2
                KastenX(Figur.UBound - 0) = KastenX(Figur.UBound - 0) - 1
                KastenY(Figur.UBound - 2) = KastenY(Figur.UBound - 2) + 1
                KastenX(Figur.UBound - 2) = KastenX(Figur.UBound - 2) + 1
                KastenY(Figur.UBound - 3) = KastenY(Figur.UBound - 3) - 1
            End Select
        End Select

        For a = 0 To 3
            'Falls die angestrebte Position besetzt ist:
            'Hiermit werden "normale" Z�ge r�ckg�ngig gemacht, bei denen die Problematik von nicht
            'existierenden Feldern nicht existiert.
            'Unm�gliche Drehungen am Rand von allen Figuren au�er der l�nglichen Figur betreffen n�mlich
            'nur die 1. Spalte/Zeile au�erhalb des Spielfelds, die deklariert ist.
            If Besetzt(KastenX(Figur.UBound - a), KastenY(Figur.UBound - a)) = True Then
                
                For j = 0 To 3
                        KastenX(Figur.UBound - j) = KastenXDAVOR(j)
                        KastenY(Figur.UBound - j) = KastenYDAVOR(j)
                Next
            
                Position = Position - 1 'Zur�ckrotieren
                If Position = 0 Then
                    Position = 4
                End If
                Exit For
            End If
        Next

    End If
    
            
    If (KeyAscii = 115) Then 'F�r das schnellere Absenken des Steins mithilfe der S-Taste
        'Ereignis des Spieltimers wird hier auch ausgef�hrt
        For a = 0 To 3
            KastenY(Figur.UBound - a) = KastenY(Figur.UBound - a) + 1
        Next
        Call SenkrechteBewegung
    End If
    
        
    If (KeyAscii = 97) Then 'a f�r nach LINKS
        
        For a = 0 To 3
            'Abfrage, ob die Pl�tze links neben den K�sten des Steins �berhaupt frei sind
            If Besetzt(KastenX(Figur.UBound - a) - 1, KastenY(Figur.UBound - a)) = True Then
                Linksbewegung = 0
                Exit For
            Else
                Linksbewegung = 1
            End If
        Next
        
        'Verschieben (1) bzw. nicht-Verschieben (0) des Steins
        For a = 0 To 3
            KastenX(Figur.UBound - a) = KastenX(Figur.UBound - a) - Linksbewegung
        Next

    End If


    If (KeyAscii = 100) Then 'd f�r nach RECHTS
    
        For a = 0 To 3
            'Abfrage, ob die Pl�tze rechts neben den K�sten des Steins �berhaupt frei sind
            If Besetzt(KastenX(Figur.UBound - a) + 1, KastenY(Figur.UBound - a)) = True Then
                Rechtsbewegung = 0
                Exit For
            Else
                Rechtsbewegung = 1
            End If
        Next
        
        'Verschieben (1) bzw. nicht-Verschieben (0) des Steins
        For a = 0 To 3
            KastenX(Figur.UBound - a) = KastenX(Figur.UBound - a) + Rechtsbewegung
        Next

    End If
    
    Call Darstellung 'Egal, welche Eingabe welche Bewegung verursacht hat, die Bewegung muss
                     'dargestellt werden.
    
    If KeyAscii = 112 And lblPause.Visible = False Then 'Falls P f�r das Starten der Pause gedr�ckt wurde
        Timer1.Enabled = False
        lblPause.Visible = True
    End If
    
Else
    If KeyAscii = 112 And lblPause.Visible = True Then 'Falls P f�r das Beenden der Pause gedr�ckt wurde
        Timer1.Enabled = True
        lblPause.Visible = False
    End If
End If
End Sub

'Dieser Timer ist der Spieltimer, der w�hrend der Spielzeit nahezu immer aktiviert ist.
'Sein Intervall ist abh�ngig vom Level. In Level 1 betr�gt es 600ms und pro Level wird es um 0.8 k�rzer.
Private Sub Timer1_Timer()

    'Stein f�llt um eine Koordinate pro Timerereignis herunter;
    'der gleiche Code befindet sich beim eigenst�ndigen Absenken eines Steins in Text1_KeyPress
    For a = 0 To 3
        KastenY(Figur.UBound - a) = KastenY(Figur.UBound - a) + 1
    Next

    Call SenkrechteBewegung
End Sub

'Dieser Timer ist f�r die Zuf�lligkeit der Figuren und der Sounds verantwortlich. Er wird nie
'ausgeschaltet.
Private Sub Zufallsgenerator_Timer()
    
    'Zuf�llige Figur wird st�ndig durchgez�hlt, bevor die Variable f�r den Warteschlangenstein
    '"NextFigur" beim Zu-Boden-Fallen des Spielsteins den Wert von neueZufallsfigur annimmt.
    'Bemerkung:
    'Das Intervall des Zufallsgenerators betr�gt eine Millisekunde. Weil jeder Spielstein verschieden
    'lange zum Herunterfallen braucht (eigenst�ndiges Absenken mit s, verschiedene Fallh�hen gegeben
    'durch Spielfeld oder verschiedene Steingr��en etc.) ist auch wirklich eine Zuf�lligkeit f�r den
    'n�chsten Stein gegeben. Nur, wenn man es zu Stande bringt, dass die Anzahl der Millisekunden
    'zwischen den Auswahlereignissen der neuen Steine immer durch 7 teilbar ist, bekommt man immer
    'den gleichen neuen Stein.
    neueZufallsfigur = neueZufallsfigur + 1
    If neueZufallsfigur = 8 Then
        neueZufallsfigur = 1
    End If
    
    'Der Zufallssound wird eingespielt, wenn man 4 Reihen auf einmal vervollst�ndigt hat. Er ist ebenfalls
    'von der Zeit abh�ngig.
    Zufallssound = Zufallssound + 1
    If Zufallssound = 2 Then
        Zufallssound = 0
    End If
    
    'sonstige n�tzliche Befehle, die immer gelten
    lblLevel.Caption = Level
    lblLinien.Caption = Linien
End Sub

'Umsetzen der Position auf dem selbst erstellten Raster (KastenXY) in eine konkrete Position im Fenster
Public Function Darstellung()

    For a = 0 To 3
        With Figur(Figur.UBound - a)
          .Top = 360 * (KastenY(Figur.UBound - a) - 1) + 1200
          .Left = 360 * (KastenX(Figur.UBound - a) - 1) + 1200
        End With
    Next
End Function

'Diese Funktion wird immer aufgerufen, wenn eine senkrechte Bewegung gemacht wurde.
Public Function SenkrechteBewegung()

    For a = 0 To 3
        'Abfrage, ob einer der K�sten des Steins auf einem bereits besetzten Feld gelandet ist
        If Besetzt(KastenX(Figur.UBound - a), KastenY(Figur.UBound - a)) = True Then
    
            For p = 0 To 3
                'Alle K�sten des Steins m�ssen wieder um ein Feld h�her ger�ckt werden
                KastenY(Figur.UBound - p) = KastenY(Figur.UBound - p) - 1
                
                'diese Position abspeichern, sodass der n�chste Stein dort nicht hin kann
                Besetzt(KastenX(Figur.UBound - p), KastenY(Figur.UBound - p)) = True
            Next
    
            Call NeueFigur 'Da alte Figur ihren Platz gefunden hat
            Exit For
        End If
    Next
    
    'Falls sich die Steine bis oben hin aufget�rmt haben, verliert man
    If Besetzt(6, 1) Or Besetzt(5, 1) Or Besetzt(7, 1) Then
        lblVerloren.Caption = "Fail!"
        Call VerlorenGewonnen
        Exit Function
    End If
    
    'Pr�fen, ob eine Reihe vervollst�ndigt wurde
    ReiheVoll = 0 'Initialisierung
    AnzahlReihen = 0 'Initialisierung
    For y = 1 To 20
    
        For x = 1 To 12 'Durchz�hlen
            If Besetzt(x, y) = True Then
                ReiheVoll = ReiheVoll + 1
            Else
                ReiheVoll = 0
                Exit For
            End If
        Next x
        
        If ReiheVoll = 12 Then '12 -> Reihe ist voll, da alle 12 horizontalen Felder besetzt sind
            
            AnzahlReihen = AnzahlReihen + 1
            
            For C = 1 To Figur.UBound
                If (Figur(C).Top - 1200) / 360 = y - 1 Then
                    Figur(C).Visible = False 'Ausblenden der Reihe
                End If
                
                If (Figur(C).Top - 1200) / 360 < y - 1 Then
                    Figur(C).Top = Figur(C).Top + 360 'Runterrutschenlassen der unvollst�ndigen Reihen dar�ber
                                                      '(Anzeige der Steuerelemente)
                End If
            Next C
            
            For a = y To 1 Step -1
                For b = 1 To 12
                    Besetzt(b, a) = Besetzt(b, a - 1) 'Runterrutschenlassen der unvollst�ndigen Reihen dar�ber
                                                      '(Array, mit dem gerechnet wird)
                Next b
            Next a
            
            ReiheVoll = 0 'damit f�r die n�chste Y-Zeile der Wert schon zur�ckgesetzt ist
    
        End If
        
    Next y
    
    If AnzahlReihen > 0 Then
    
            Linien = Linien + AnzahlReihen
            
            If Linien >= 20 Then 'Bedingung f�r das n�chste Level
                lblVerloren.Caption = "Gut Gemacht!"
                Call VerlorenGewonnen 'Spielunterbrechung
                Level = Level + 1
                Linien = 0
                Timer1.Interval = Timer1.Interval * 4 / 5 'erh�hter Schwierigkeitsgrad
                cmdWeiter.Visible = True
                Exit Function
            End If
            
            Select Case AnzahlReihen
            Case 4 'Bei 4 Reihen auf einmal wird "400 Babies!" oder "Bear Blasting!" eingespielt
                Select Case Zufallssound
                Case 1
                    Dateiname = App.Path
                    If Right(Dateiname, 1) <> "\" Then Dateiname = Dateiname & "\"
                    Dateiname = Dateiname & "Babies.wav"
                    sndPlaySound Dateiname, 1 'Nutzen der Windowsfunktion
                Case 0
                    Dateiname = App.Path
                    If Right(Dateiname, 1) <> "\" Then Dateiname = Dateiname & "\"
                    Dateiname = Dateiname & "BearBlasting.wav"
                    sndPlaySound Dateiname, 1 'Nutzen der Windowsfunktion
                End Select
            End Select
            
            imgBear.Visible = True
            Reihe.Interval = 500 + AnzahlReihen * 150 'je mehr Reihen man vervollst�ndigt,
            Reihe.Enabled = True                      'desto l�nger ist die Pause danach
            Timer1.Enabled = False
    End If
    
    Call Darstellung

End Function

'Diese Funktion wird immer aufgerufen, wenn man verloren oder gewonnen (n�chstes Level) hat.
Public Function VerlorenGewonnen()

    Timer1.Enabled = False 'Anhalten des Spiels
    
    For a = 0 To Figur.UBound 'Unsichtbarmachen aller Steine
        Figur(a).Visible = False
    Next
    
    For x = 1 To 12
        For y = 1 To 20
            Besetzt(x, y) = False 'Freimachen des Gesamten Spielfelds
        Next
    Next
    
    'Falls man verloren hat, wird der Versagersound eingespielt
    If lblVerloren.Caption = "Fail!" Then
        Dateiname = App.Path
        If Right(Dateiname, 1) <> "\" Then Dateiname = Dateiname & "\"
        Dateiname = Dateiname & "OhLord.wav"
        sndPlaySound Dateiname, 1 'Nutzen der Windowsfunktion
        cmdStart.Enabled = True
    End If
    
    'Falls man gewonnen hat, wird der Gewinnersound eingespielt
    If lblVerloren.Caption = "Gut Gemacht!" Then
        Dateiname = App.Path
        If Right(Dateiname, 1) <> "\" Then Dateiname = Dateiname & "\"
        Dateiname = Dateiname & "TopScore.wav"
        sndPlaySound Dateiname, 1 'Nutzen der Windowsfunktion
    End If
    
    lblVerloren.Visible = True 'Anzeigen des Banners
End Function
