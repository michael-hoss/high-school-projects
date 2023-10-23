Option Strict Off
Option Explicit On
Imports HighSchoolProjectsSupport.UpgradeStubs
Imports Microsoft.VisualBasic
Imports System
Imports System.Windows.Forms
Imports UpgradeHelpers.Gui.Controls

Partial Friend Class Bastard
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
        isInitializingComponent = True
        InitializeComponent()
        isInitializingComponent = False
        ReLoadForm(False)
        If mustCallFormLoad And Not (m_vb6FormDefInstance Is Nothing) Then
            m_vb6FormDefInstance.Form_Load()
        End If
    End Sub


    Private Sub Bastard_Activated(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles MyBase.Activated
        If Not (UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm Is eventSender) Then
            UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm = eventSender
        End If
    End Sub

    Dim Vx As Integer
    Dim Vy As Integer
    Dim Ay As Integer
    Dim GeschwindigkeitHindernis As Integer
    Dim Rechts As Integer
    Dim Unten As Integer
    Dim Leben As Integer
    Dim Level As Integer
    Dim AktuelleFigur As Integer
    Dim Sinusvariable As Double
    Dim Kollisionszähler As Integer
    Dim GeschaffteHindernisse As Integer
    Dim Bonus As Boolean
    Dim Ultramodus As Boolean
    Dim Einmalhilfe As Boolean



    Private Sub cmdNeuesSpiel_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles cmdNeuesSpiel.Click
        TimerSpiel.Enabled = False
        imgVerloren.Visible = False

        NeuesSpiel()
        NeuesLevel()

        txtEingabe.Focus()
    End Sub

    Private Sub Form_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles MyBase.Click
        Dim asdf As DialogResult = MessageBox.Show("W-A-S-D Tasten benutzen. Cheats existieren und sind geheim.", "Steuerung")
    End Sub

    'UPGRADE_WARNING: (2080) Form_Load event was upgraded to Form_Load method and has a new behavior. More Information: https://docs.mobilize.net/vbuc/ewis#2080
    Private Sub Form_Load()

        'Konstanten
        'It looks like I multiplied all the pixel coordinates by 15 (or divided by 15) s.th. the numerics use something more fine-grained than pixel locations.
        'This is why the margins below and to the right are so huge here.
        Unten = 2500
        Rechts = 1200
    End Sub




    Private isInitializingComponent As Boolean
    Private Sub Form_Resize(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles MyBase.Resize
        If isInitializingComponent Then
            Exit Sub
        End If

        'Unten anpassen
        'UPGRADE_ISSUE: (2064) Line property linLinks.Y2 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linLinks.setY2(Me.Height * 15 - Unten)
        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linUnten.setY1(Me.Height * 15 - Unten)
        'UPGRADE_ISSUE: (2064) Line property linUnten.Y2 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linUnten.setY2(Me.Height * 15 - Unten)
        'UPGRADE_ISSUE: (2064) Line property linRechts.Y2 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linRechts.setY2(Me.Height * 15 - Unten)
        cmdNeuesSpiel.Top = Me.Height - Unten / 15 + 20
        lblLevel.Top = Me.Height - Unten / 15 + 27
        imgHilfe.Top = Me.Height - Unten / 15 - imgHilfe.Height
        imgZiel.Top = Me.Height - Unten / 15 - imgZiel.Height

        'Rechts anpassen
        'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linRechts.setX1(Me.Width * 15 - Rechts)
        'UPGRADE_ISSUE: (2064) Line property linRechts.X2 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linRechts.setX2(Me.Width * 15 - Rechts)
        'UPGRADE_ISSUE: (2064) Line property linUnten.X2 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        linUnten.setX2(Me.Width * 15 - Rechts)
        cmdNeuesSpiel.Left = Me.Width - Rechts / 15 - cmdNeuesSpiel.Width
        lblLevel.Left = (imgLeben(3).Left + imgLeben(3).Width + cmdNeuesSpiel.Left - lblLevel.Width) / 2 + 50
        imgZiel.Left = Me.Width - Rechts / 15 - imgZiel.Width

        'Abdeckungen am Rand anpassen
        imgWeiss(0).Left = Me.Width - Rechts / 15
        imgWeiss(0).Top = 0
        imgWeiss(0).Width = Rechts / 15
        imgWeiss(0).Height = Me.Height + 100
        ' imgWeiss(0).Location = New Point(0, 0)

        imgWeiss(1).Left = 0
        imgWeiss(0).Top = 0
        'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        imgWeiss(1).Width = linLinks.getX1() / 15
        imgWeiss(1).Height = Me.Height + 100
        ' imgWeiss(1).Location = New Point(0, 0)

        'Sachen in die Mitte Setzen
        imgLebenWeg.Top = (Me.Height - imgLebenWeg.Height) / 2
        imgLebenWeg.Left = (Me.Width - imgLebenWeg.Width) / 2

        imgVerloren.Top = (Me.Height - imgVerloren.Height) / 2
        imgVerloren.Left = (Me.Width - imgVerloren.Width) / 2

        imgNaechstesLevel.Top = (Me.Height - imgNaechstesLevel.Height) / 2
        imgNaechstesLevel.Left = (Me.Width - imgNaechstesLevel.Width) / 2

        imgGewonnen.Top = (Me.Height - imgGewonnen.Height) / 2
        imgGewonnen.Left = (Me.Width - imgGewonnen.Width) / 2

        imgHilfe.Left = 267
        'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        imgBonusleben.Left = linLinks.getX1() / 15 - imgBonusleben.Width
        imgBonusleben.Top = linUnten.getY1() / 15 - imgBonusleben.Height - 1.3 * imgA.Height
        imgBonusleben.Visible = True

        For a As Double = 1 To imgLeben.GetUpperBound(0)
            imgLeben(CInt(a)).Top = Me.Height - Unten / 15 + 20
        Next a

        For a As Double = 0 To imgHindernis.GetUpperBound(0)
            'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgHindernis(CInt(a)).Top = linUnten.getY1() / 15 - imgHindernis(CInt(a)).Height
            'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgHindernis(CInt(a)).Left = linRechts.getX1() / 15
        Next a

    End Sub

    Private Sub TimerLebenWeg_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles TimerLebenWeg.Tick
        TimerSpiel.Enabled = True
        TimerLebenWeg.Enabled = False
        imgLebenWeg.Visible = False
    End Sub

    Private Sub TimerNächstesLevel_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles TimerNächstesLevel.Tick

        imgNaechstesLevel.Visible = False
        TimerNächstesLevel.Enabled = False

        NeuesLevel()

    End Sub

    Private Sub TimerSpiel_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles TimerSpiel.Tick

        CodeFürAlleSpieltimer()

        Select Case Level
            Case 1
                LevelEinsCode()
            Case 2
                LevelZweiCode()
            Case 3
                LevelDreiCode()
            Case 4
                LevelVierCode()
            Case 5
                LevelFünfCode()
            Case 6
                LevelSechsCode()
        End Select

        If Level <> 6 Then
            Kollision()
        End If

    End Sub

    Private Sub TimerAnfang_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles TimerAnfang.Tick

        'Neuen Platz berechnen
        imgA.Top += Vy / 15
        'Gravitation
        Vy += Ay

        'Boden als untere Grenze
        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Top * 15 + imgA.Height * 15 >= linUnten.getY1() Then
            If Vy > 200 Then 'noch einmal hochfedern
                Vy = -150
            Else
                Vy = 0
            End If

            'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgA.Top = linUnten.getY1() / 15 - imgA.Height
        End If

        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Top * 15 + imgA.Height * 15 = linUnten.getY1() Then
            imgHindernis(AktuelleFigur).Visible = True
            TimerSpiel.Enabled = True
            TimerAnfang.Enabled = False
        End If

    End Sub


    Private Sub txtEingabe_KeyPress(ByVal eventSender As Object, ByVal eventArgs As KeyPressEventArgs) Handles txtEingabe.KeyPress
        Dim KeyAscii As Integer = Convert.ToInt32(eventArgs.KeyChar)
        Try

            If Not Ultramodus Then
                Select Case KeyAscii
                    Case 119 'w
                        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                        If imgA.Top * 15 + imgA.Height * 15 > linUnten.getY1() - 300 Then 'von unten hochspringen
                            Vy = -550
                        End If

                        'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                        'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                        If (imgA.Left * 15 < linLinks.getX1() + 200) Or (imgA.Left * 15 + imgA.Width * 15 > linRechts.getX1() - 200) Then 'an den wänden weiterspringen
                            Vy = -350
                        End If
                    Case 97 'a
                        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                        If imgA.Top * 15 + imgA.Height * 15 > linUnten.getY1() - 300 Then
                            Vx = -140
                        End If
                    Case 115 's
                        If Vy < 200 Then
                            Vy += 200
                        End If
                    Case 100 'd
                        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                        If imgA.Top * 15 + imgA.Height * 15 > linUnten.getY1() - 300 Then
                            Vx = 140
                        End If
                    Case 112 'p
                        If TimerSpiel.Enabled Then
                            TimerSpiel.Enabled = False
                            txtEingabe.Focus()
                        Else
                            TimerSpiel.Enabled = True
                            txtEingabe.Focus()
                        End If
                    Case 99 ' c for cheat
                        GeschaffteHindernisse = 0
                        Level += 1
                        imgNaechstesLevel.Visible = True
                        TimerSpiel.Enabled = False
                        TimerNächstesLevel.Enabled = True

                End Select
            Else

                Select Case KeyAscii
                    Case 119 'w
                        imgA.Top -= 7
                        imgHilfe.Top -= 7
                    Case 97 'a
                        imgA.Left -= 7
                        imgHilfe.Left -= 7
                    Case 115 's
                        imgA.Top += 7
                        imgHilfe.Top += 7
                    Case 100 'd
                        imgA.Left += 7
                        imgHilfe.Left += 7
                End Select
            End If
        Finally
            If KeyAscii = 0 Then
                eventArgs.Handled = True
            End If
            eventArgs.KeyChar = Convert.ToChar(KeyAscii)
        End Try

    End Sub

    Private Sub CodeFürAlleSpieltimer()

        'Neuen Platz berechnen
        imgA.Top += Vy / 15
        imgA.Left += Vx / 15

        'Gravitation
        Vy += Ay

        'Reibung am Boden
        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Top * 15 + imgA.Height * 15 > linUnten.getY1() - 10 Then
            If Vx > 20 Or Vx < -20 Then
                Vx *= 0.95
            Else
                Vx = 0
            End If
        End If

        'Rückfedern links
        'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Left * 15 <= linLinks.getX1() Then
            'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgA.Left = (linLinks.getX1() + 50) / 15
            Vx = -Vx
        End If

        'Rückfedern rechts
        'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Left * 15 + imgA.Width * 15 >= linRechts.getX1() Then
            'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgA.Left = (linRechts.getX1() - 50) / 15 - imgA.Width
            Vx = -Vx
        End If

        'Boden als untere Grenze
        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgA.Top * 15 + imgA.Height * 15 >= linUnten.getY1() Then
            If Vy > 200 Then 'noch einmal hochfedern
                Vy = -150
            Else
                Vy = 0
            End If

            'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgA.Top = linUnten.getY1() / 15 - imgA.Height
        End If
    End Sub

    Private Sub LevelEinsCode()

        GeschwindigkeitHindernis = 80


        Select Case AktuelleFigur
            Case 0
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If


            Case 1
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 67 + Math.Sin(Sinusvariable) * 1000 / 15
                Sinusvariable += 0.1

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur -= 1
                    GeschaffteHindernisse += 1
                End If

        End Select

        If GeschaffteHindernisse = 8 Then
            GeschaffteHindernisse = 0
            Level += 1
            TimerSpiel.Enabled = False
            TimerNächstesLevel.Enabled = True
            imgNaechstesLevel.Visible = True
        End If

    End Sub

    Sub LevelZweiCode()

        GeschwindigkeitHindernis = 130


        Select Case AktuelleFigur
            Case 0
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If


            Case 1
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 67 + Math.Sin(Sinusvariable) * 1000 / 15
                Sinusvariable += 0.1

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur -= 1
                    GeschaffteHindernisse += 1
                End If

        End Select

        If GeschaffteHindernisse = 10 Then
            GeschaffteHindernisse = 0
            Level += 1
            TimerSpiel.Enabled = False
            TimerNächstesLevel.Enabled = True
            imgNaechstesLevel.Visible = True
        End If

    End Sub

    Sub LevelDreiCode()

        GeschwindigkeitHindernis = 100


        Select Case AktuelleFigur
            Case 0
                imgHindernis(AktuelleFigur).Left = imgHindernis(AktuelleFigur).Left - GeschwindigkeitHindernis / 15 + Math.Sin(Sinusvariable) * 300 / 15
                Sinusvariable += 0.15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If


            Case 1
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 67 + Math.Sin(Sinusvariable) * 1000 / 15
                Sinusvariable += 0.2

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur -= 1
                    GeschaffteHindernisse += 1
                End If

        End Select

        If GeschaffteHindernisse = 10 Then
            GeschaffteHindernisse = 0
            Level += 1
            TimerSpiel.Enabled = False
            TimerNächstesLevel.Enabled = True
            imgNaechstesLevel.Visible = True
        End If

    End Sub

    Sub LevelVierCode()




        Select Case AktuelleFigur
            Case 0
                GeschwindigkeitHindernis = 50
                imgHindernis(AktuelleFigur).Left = imgHindernis(AktuelleFigur).Left - GeschwindigkeitHindernis / 15 + Math.Sin(Sinusvariable) * 200 / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 20 + Math.Sin(Sinusvariable * 2) * 300 / 15
                Sinusvariable += 0.12

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If


            Case 1
                GeschwindigkeitHindernis = 100
                imgHindernis(AktuelleFigur).Left = imgHindernis(AktuelleFigur).Left - GeschwindigkeitHindernis / 15 + Math.Sin(Sinusvariable) * 100 / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 80 + Math.Sin(Sinusvariable) * 1200 / 15
                Sinusvariable += 0.1

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur -= 1
                    GeschaffteHindernisse += 1
                End If

        End Select

        If GeschaffteHindernisse = 10 Then
            GeschaffteHindernisse = 0
            Level += 1
            TimerSpiel.Enabled = False
            TimerNächstesLevel.Enabled = True
            imgNaechstesLevel.Visible = True
        End If

    End Sub

    Sub LevelFünfCode()


        Select Case AktuelleFigur
            Case 0
                GeschwindigkeitHindernis = 50
                imgHindernis(AktuelleFigur).Left = imgHindernis(AktuelleFigur).Left - GeschwindigkeitHindernis / 15 + Math.Sin(Sinusvariable) * 250 / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 27 + Math.Sin(Sinusvariable * 4) * 400 / 15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If


            Case 1
                GeschwindigkeitHindernis = 80
                imgHindernis(AktuelleFigur).Left = imgHindernis(AktuelleFigur).Left - GeschwindigkeitHindernis / 15 + Math.Sin(Sinusvariable) * 100 / 15
                'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                imgHindernis(AktuelleFigur).Top = linUnten.getY1() / 15 - imgHindernis(AktuelleFigur).Height - 67 + Math.Sin(Sinusvariable) * 1000 / 15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur += 1
                    GeschaffteHindernisse += 1
                End If

            Case 2
                GeschwindigkeitHindernis = 130
                imgHindernis(AktuelleFigur).Left -= GeschwindigkeitHindernis / 15

                'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                If imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 <= linLinks.getX1() Then
                    'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
                    imgHindernis(AktuelleFigur).Left = linRechts.getX1() / 15
                    AktuelleFigur = 0
                    GeschaffteHindernisse += 1
                End If

        End Select

        Sinusvariable += 0.1

        'Bonus
        If GeschaffteHindernisse >= 3 And Not Bonus And Leben < 4 Then
            imgBonusleben.Visible = True
            imgBonusleben.Left += 1

            'Kollision von Spieler mit Bonus?

            If imgA.Left * 15 + imgA.Width * 15 > imgBonusleben.Left * 15 And imgA.Left * 15 < imgBonusleben.Left * 15 + imgBonusleben.Width * 15 And imgA.Top * 15 + imgA.Height * 15 > imgBonusleben.Top * 15 And imgA.Top * 15 < imgBonusleben.Top * 15 + imgBonusleben.Height * 15 Then
                Bonus = True
                imgBonusleben.Visible = False
                Leben += 1
                imgLeben(Leben - 1).Visible = True
            End If

        End If

        If GeschaffteHindernisse = 12 Then
            GeschaffteHindernisse = 0
            Level += 1
            TimerSpiel.Enabled = False
            TimerNächstesLevel.Enabled = True
            imgNaechstesLevel.Visible = True
        End If

    End Sub


    Sub LevelSechsCode()

        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        imgHindernis(3).Top = linUnten.getY1() / 15 - imgHindernis(3).Height
        imgHindernis(2).Top = imgHindernis(3).Top - imgHindernis(2).Height
        imgHindernis(1).Top = imgHindernis(2).Top - imgHindernis(1).Height
        imgHindernis(0).Top = imgHindernis(1).Top - imgHindernis(0).Height

        For a As Double = 0 To imgHindernis.GetUpperBound(0)
            imgHindernis(CInt(a)).Left -= 1
        Next a

        'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgHindernis(3).Left * 15 + imgHindernis(3).Width * 15 < linRechts.getX1() And Einmalhilfe Then
            imgHilfe.Visible = True
            Einmalhilfe = False
        End If

        ' Make sure imgZiel does not appear too early
        If imgHindernis(3).Left * 15 < imgZiel.Left * 15 - 50 Then
            imgZiel.Visible = True
        End If

        ' Activate the ultra mode
        If imgA.Top * 15 + imgA.Height * 15 <= imgHilfe.Top * 15 And  ' above
            imgA.Left * 15 < imgHilfe.Left * 15 + imgHilfe.Width * 15 + 100 And  ' not too far right
            imgA.Left * 15 + imgA.Width * 15 > imgHilfe.Left * 15 - 100 And  ' not too far left
            imgA.Top * 15 + imgA.Height * 15 > imgHilfe.Top * 15 - 50 * 15 And  ' not too high
            imgHilfe.Visible Then

            Ultramodus = True
            Ay = 0
            Vy = 0
            Vx = 0
        End If

        'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        If imgHilfe.Top * 15 > linUnten.getY1() - imgHilfe.Height * 15 Then
            Ultramodus = False
            Ay = 30
            imgHilfe.Visible = False
        End If

        For AktuelleFigur = 0 To 3
            If imgA.Left * 15 + imgA.Width * 15 > imgHindernis(AktuelleFigur).Left * 15 And imgA.Left * 15 < imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 And imgA.Top * 15 + imgA.Height * 15 > imgHindernis(AktuelleFigur).Top * 15 And imgA.Top * 15 < imgHindernis(AktuelleFigur).Top * 15 + imgHindernis(AktuelleFigur).Height * 15 Then

                For a As Double = 1 To imgLeben.GetUpperBound(0)
                    imgLeben(CInt(a)).Visible = False
                Next a

                imgVerloren.Visible = True
                TimerSpiel.Enabled = False
                cmdNeuesSpiel.Focus()
            End If
        Next AktuelleFigur

        If imgA.Left * 15 + imgA.Width * 15 > imgZiel.Left * 15 And imgA.Top * 15 + imgA.Height * 15 > imgZiel.Top * 15 And
            imgZiel.Visible Then
            imgGewonnen.Visible = True
            TimerSpiel.Enabled = False
            cmdNeuesSpiel.Focus()
        End If




    End Sub

    Sub Kollision()

        If Kollisionszähler >= 50 Then

            If imgA.Left * 15 + imgA.Width * 15 > imgHindernis(AktuelleFigur).Left * 15 And imgA.Left * 15 < imgHindernis(AktuelleFigur).Left * 15 + imgHindernis(AktuelleFigur).Width * 15 And imgA.Top * 15 + imgA.Height * 15 > imgHindernis(AktuelleFigur).Top * 15 And imgA.Top * 15 < imgHindernis(AktuelleFigur).Top * 15 + imgHindernis(AktuelleFigur).Height * 15 Then

                Leben -= 1


                If Leben > 0 Then
                    imgLeben(Leben).Visible = False
                    imgLebenWeg.Visible = True
                    TimerLebenWeg.Enabled = True
                    TimerSpiel.Enabled = False
                    Kollisionszähler = 0
                Else
                    imgVerloren.Visible = True
                    TimerSpiel.Enabled = False
                End If

            End If

        Else
            Kollisionszähler += 1
        End If

    End Sub

    Sub NeuesSpiel()

        Form_Resize(Me, New EventArgs())

        Einmalhilfe = True
        Leben = 4
        Level = 1
        Ultramodus = False
        Ay = 30
        imgHilfe.Visible = False
        imgZiel.Visible = False
        imgGewonnen.Visible = False

        For a As Double = 1 To imgLeben.GetUpperBound(0)
            imgLeben(CInt(a)).Visible = True
        Next a

    End Sub

    Sub NeuesLevel()



        AktuelleFigur = 0
        Bonus = False
        Vy = 0
        Vx = 0
        Sinusvariable = 0
        GeschaffteHindernisse = 0

        If Level < 6 Then
            lblLevel.Text = "Level: " & Level
        Else
            lblLevel.Text = "Endgegner!"
        End If

        For a As Double = 0 To imgHindernis.GetUpperBound(0)
            'UPGRADE_ISSUE: (2064) Line property linUnten.Y1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgHindernis(CInt(a)).Top = linUnten.getY1() / 15 - imgHindernis(CInt(a)).Height
            'UPGRADE_ISSUE: (2064) Line property linRechts.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
            imgHindernis(CInt(a)).Left = linRechts.getX1() / 15
        Next a



        'UPGRADE_ISSUE: (2064) Line property linLinks.X1 was not upgraded. More Information: https://docs.mobilize.net/vbuc/ewis#2064
        imgA.Left = (linLinks.getX1() + 200) / 15
        imgA.Top = -imgA.Height

        TimerAnfang.Enabled = True

    End Sub
End Class