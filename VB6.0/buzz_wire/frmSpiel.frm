VERSION 5.00
Begin VB.Form frmSpiel 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Der heiße Draht"
   ClientHeight    =   6810
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10095
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6810
   ScaleWidth      =   10095
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   700
      Left            =   5055
      Top             =   1155
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   8625
      Top             =   5985
   End
   Begin VB.CommandButton cmdNeu 
      Caption         =   "Neu"
      Height          =   450
      Left            =   6030
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   6
      Top             =   2745
      Visible         =   0   'False
      Width           =   1200
   End
   Begin VB.CommandButton cmdBeenden 
      BackColor       =   &H00C0FFC0&
      Caption         =   "&Beenden"
      Height          =   450
      Left            =   7560
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   8
      Top             =   2745
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "&Neustart"
      Default         =   -1  'True
      Height          =   450
      Left            =   3600
      TabIndex        =   0
      Top             =   5835
      Width           =   1335
   End
   Begin VB.TextBox txtEingabe 
      ForeColor       =   &H80000004&
      Height          =   525
      Left            =   30000
      TabIndex        =   5
      Top             =   30000
      Width           =   825
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5325
      Top             =   5910
   End
   Begin VB.Line hin14 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   3
      X1              =   2925
      X2              =   2925
      Y1              =   900
      Y2              =   1300
   End
   Begin VB.Line hin14 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   2
      X1              =   2450
      X2              =   2450
      Y1              =   900
      Y2              =   1300
   End
   Begin VB.Line hin14 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   1
      X1              =   1975
      X2              =   1975
      Y1              =   900
      Y2              =   1300
   End
   Begin VB.Line hin14 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   0
      X1              =   1500
      X2              =   1500
      Y1              =   900
      Y2              =   1300
   End
   Begin VB.Line hin16 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   1
      X1              =   1300
      X2              =   1700
      Y1              =   1500
      Y2              =   1500
   End
   Begin VB.Line hin16 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   0
      X1              =   3500
      X2              =   3900
      Y1              =   3500
      Y2              =   3500
   End
   Begin VB.Label lblAnweisung 
      BackStyle       =   0  'Transparent
      Caption         =   "WASD benutzen!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1440
      Left            =   6360
      TabIndex        =   1
      Top             =   1935
      Width           =   3420
   End
   Begin VB.Label lblBlau 
      BackStyle       =   0  'Transparent
      Caption         =   "frei schalten"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   645
      Left            =   4080
      TabIndex        =   10
      Top             =   990
      Width           =   960
   End
   Begin VB.Shape hin15 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Height          =   400
      Left            =   3500
      Top             =   1350
      Width           =   400
   End
   Begin VB.Shape shpBlau 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Height          =   800
      Left            =   4000
      Top             =   900
      Width           =   900
   End
   Begin VB.Line linBlau 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      X1              =   2670
      X2              =   3370
      Y1              =   795
      Y2              =   795
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   15
      Left            =   4400
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   14
      Left            =   4200
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   13
      Left            =   4000
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   12
      Left            =   3800
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   11
      Left            =   3600
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   10
      Left            =   3400
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   9
      Left            =   3200
      Top             =   2250
      Width           =   105
   End
   Begin VB.Line hin13 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   1500
      X2              =   4850
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   8
      Left            =   3000
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   7
      Left            =   2800
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   105
      Index           =   6
      Left            =   2600
      Top             =   2250
      Width           =   105
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   5
      Left            =   2400
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   4
      Left            =   2200
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   3
      Left            =   2000
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   2
      Left            =   1800
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   1
      Left            =   1600
      Top             =   2250
      Width           =   100
   End
   Begin VB.Shape hin12 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   100
      Index           =   0
      Left            =   1400
      Top             =   2250
      Width           =   100
   End
   Begin VB.Line hin11 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   3400
      X2              =   3400
      Y1              =   800
      Y2              =   1300
   End
   Begin VB.Line hin10 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   1500
      X2              =   3400
      Y1              =   1300
      Y2              =   1300
   End
   Begin VB.Shape hin9 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   200
      Index           =   1
      Left            =   4750
      Top             =   2799
      Width           =   200
   End
   Begin VB.Shape hin9 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Ausgefüllt
      Height          =   200
      Index           =   0
      Left            =   4450
      Top             =   2799
      Width           =   200
   End
   Begin VB.Line hin6 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   1
      X1              =   2750
      X2              =   2750
      Y1              =   2900
      Y2              =   4500
   End
   Begin VB.Line hin7 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   1150
      X2              =   4400
      Y1              =   2800
      Y2              =   2800
   End
   Begin VB.Line hin8 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   4400
      X2              =   4400
      Y1              =   2800
      Y2              =   4000
   End
   Begin VB.Line hin6 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   0
      X1              =   1150
      X2              =   2750
      Y1              =   4500
      Y2              =   4500
   End
   Begin VB.Line hin3 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   1
      X1              =   4800
      X2              =   4800
      Y1              =   4600
      Y2              =   5000
   End
   Begin VB.Line hin4 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   2500
      X2              =   4875
      Y1              =   4500
      Y2              =   4500
   End
   Begin VB.Line hin5 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   2000
      X2              =   1150
      Y1              =   4500
      Y2              =   4500
   End
   Begin VB.Line hin3 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   0
      X1              =   2800
      X2              =   2800
      Y1              =   4600
      Y2              =   5000
   End
   Begin VB.Line hin2 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   4510
      X2              =   1110
      Y1              =   5145
      Y2              =   5145
   End
   Begin VB.Line hin1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   3000
      X2              =   3000
      Y1              =   5300
      Y2              =   5550
   End
   Begin VB.Label lblGewonnen 
      BackStyle       =   0  'Transparent
      Caption         =   "Gewonnen!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   885
      Left            =   6405
      TabIndex        =   7
      Top             =   1590
      Visible         =   0   'False
      Width           =   3000
   End
   Begin VB.Label lblZeit 
      Caption         =   "60"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1905
      TabIndex        =   4
      Top             =   5865
      Width           =   495
   End
   Begin VB.Label lblnoch 
      Caption         =   "noch"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1305
      TabIndex        =   3
      Top             =   5850
      Width           =   555
   End
   Begin VB.Shape shpZiel 
      BorderColor     =   &H000000FF&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgefüllt
      Height          =   200
      Left            =   2900
      Top             =   400
      Width           =   200
   End
   Begin VB.Label lblZiel 
      Caption         =   "<-- Ziel"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   3630
      TabIndex        =   2
      Top             =   300
      Width           =   2625
   End
   Begin VB.Line Line12 
      BorderWidth     =   4
      X1              =   2600
      X2              =   3400
      Y1              =   6300
      Y2              =   6300
   End
   Begin VB.Line Line11 
      BorderWidth     =   4
      X1              =   3400
      X2              =   3400
      Y1              =   5700
      Y2              =   6300
   End
   Begin VB.Line Line10 
      BorderWidth     =   4
      X1              =   2600
      X2              =   2600
      Y1              =   5700
      Y2              =   6300
   End
   Begin VB.Line Line9 
      BorderWidth     =   4
      X1              =   3400
      X2              =   3400
      Y1              =   800
      Y2              =   200
   End
   Begin VB.Line Line8 
      BorderWidth     =   4
      X1              =   2600
      X2              =   3400
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line Line7 
      BorderWidth     =   4
      X1              =   2600
      X2              =   2600
      Y1              =   800
      Y2              =   200
   End
   Begin VB.Line Line6 
      BorderWidth     =   4
      X1              =   5000
      X2              =   5000
      Y1              =   800
      Y2              =   5700
   End
   Begin VB.Line Line5 
      BorderWidth     =   4
      X1              =   3400
      X2              =   5000
      Y1              =   5700
      Y2              =   5700
   End
   Begin VB.Line Line4 
      BorderWidth     =   4
      X1              =   1000
      X2              =   2600
      Y1              =   5700
      Y2              =   5700
   End
   Begin VB.Line Line3 
      BorderWidth     =   4
      X1              =   1000
      X2              =   1000
      Y1              =   800
      Y2              =   5700
   End
   Begin VB.Line Line2 
      BorderWidth     =   4
      X1              =   3420
      X2              =   5020
      Y1              =   795
      Y2              =   795
   End
   Begin VB.Line Line1 
      BorderWidth     =   4
      X1              =   1000
      X2              =   2600
      Y1              =   800
      Y2              =   800
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00C0FFFF&
      FillStyle       =   0  'Ausgefüllt
      Height          =   5000
      Index           =   0
      Left            =   5500
      Top             =   800
      Width           =   4000
   End
   Begin VB.Shape shpFigur 
      DrawMode        =   1  'Schwarzintensität
      FillStyle       =   0  'Ausgefüllt
      Height          =   200
      Left            =   2900
      Top             =   5900
      Width           =   200
   End
   Begin VB.Shape shpBonus 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      Height          =   345
      Left            =   2715
      Top             =   2145
      Width           =   615
   End
   Begin VB.Label lblBonus 
      Caption         =   "+30"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   2805
      TabIndex        =   9
      Top             =   2145
      Width           =   450
   End
   Begin VB.Shape shpGewonnen 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Ausgefüllt
      Height          =   5000
      Left            =   5500
      Top             =   800
      Visible         =   0   'False
      Width           =   4000
   End
End
Attribute VB_Name = "frmSpiel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim iSekunden As Integer
Public iGeschwindigkeit As Integer
Public ii As Long
Public aa As Long
Public bb As Long
Public cSteigungLin As Currency
Public cSteigungLin2 As Currency
Public cSteigungOL As Currency
Public cSteigungOR As Currency
Public cSteigungUL As Currency
Public cSteigungUR As Currency
Public iFigX As Integer
Public iFigY As Integer
Public iLinX As Integer
Public iLinY As Integer
Public iLin2X As Integer
Public iLin2Y As Integer
Public cVHin90 As Currency
Public cVHin91 As Currency
Public Bonus As Integer
Public sSchwingungszahl As Single
Public iSchwinggeschwindigkeit As Integer
Public iAB As Integer
Public iCD As Integer
Public iasdf As Integer
Public frei As Boolean
Dim sVMittelpunktX(1) As Single
Dim sVMittelpunktY(1) As Single
Dim iMittelpunktX(1) As Integer
Dim iMittelpunktY(1) As Integer
Dim a As Integer





Private Sub cmdBeenden_Click()
End

End Sub

Private Sub cmdNeu_Click()
    
        shpFigur.Top = 5900
        shpFigur.Left = 2900
        
        shpGewonnen.Visible = False
        lblGewonnen.Visible = False
        cmdNeu.Visible = False
        cmdBeenden.Visible = False
        txtEingabe.SetFocus
        iSekunden = 60
        Timer1.Enabled = True
        Timer2.Enabled = True
        Timer3.Enabled = True
        lblBonus.Visible = True
        shpBonus.Visible = True
        Bonus = 0
        frei = False
        linBlau.Visible = True
        shpBlau.Visible = True
        lblBlau.Visible = True
        
        
        
    
End Sub

Private Sub cmdReset_Click()
        shpFigur.Top = 5900
        shpFigur.Left = 2900
        txtEingabe.SetFocus
        
        Shape2(0).Visible = False
        lblAnweisung.Visible = False
        
        iSekunden = 60
        Timer1.Enabled = True
        Timer2.Enabled = True
        Timer3.Enabled = True
        
        lblBonus.Visible = True
        shpBonus.Visible = True
        Bonus = 0
        
        shpGewonnen.Visible = False
        lblGewonnen.Visible = False
        cmdNeu.Visible = False
        cmdBeenden.Visible = False
        
        frei = False
        linBlau.Visible = True
        shpBlau.Visible = True
        lblBlau.Visible = True
        
        
        
End Sub

Private Sub Form_Load()
    iSekunden = 60
    iGeschwindigkeit = 30
    Bonus = 0
    iasdf = 0
    frei = False
    
    sSchwingungszahl = 0.5
    iSchwinggeschwindigkeit = 30
    
    For iCD = 0 To 15 Step 1
    
        hin12(iCD).Top = 2250 + Sin(sSchwingungszahl * iCD) * 450
        
    Next
    
    sVMittelpunktX(0) = -1
    sVMittelpunktY(0) = -2
    iMittelpunktX(0) = 3700
    iMittelpunktY(0) = 3500
    
    sVMittelpunktX(1) = 2
    sVMittelpunktY(1) = 1
    iMittelpunktX(1) = 1500
    iMittelpunktY(1) = 1500
    
End Sub



Private Sub Timer1_Timer()

    iSekunden = iSekunden - 1
    lblZeit.Caption = iSekunden
    
    If (iSekunden <= 0) Then
      Call Lose

    End If

End Sub

Private Sub Timer2_Timer()


    ii = ii + 1
    aa = aa + 1
    bb = bb + 1
    
    'Bewegungen
    
    hin1.X1 = 3000 + Sin(ii / 30) * 1000
    hin1.X2 = 3000 + Sin(ii / 30) * 1000
    
    hin3(0).X1 = hin3(0).X1 - 8
    hin3(0).X2 = hin3(0).X2 - 8
    hin3(1).X1 = hin3(1).X1 - 8
    hin3(1).X2 = hin3(1).X2 - 8
    
    If (hin3(0).X1 < 1200) Then
        hin3(0).X1 = 4800
        hin3(0).X2 = 4800
    End If
    
    If (hin3(1).X1 < 1200) Then
        hin3(1).X1 = 4800
        hin3(1).X2 = 4800
    End If
    
    hin6(0).X1 = 2750 - 1600 * Cos(aa / 150)
    hin6(0).Y1 = 4500 - 1600 * Sin(aa / 150)
    
    hin6(1).X1 = 2750 - 1600 * Cos(bb / 150 + 3.141 / 2)
    hin6(1).Y1 = 4500 - 1600 * Sin(bb / 150 + 3.141 / 2)
    
    If (hin6(0).Y1 > 4500) Then
        aa = aa + 3.141 * 150
    End If
        
    If (hin6(1).Y1 > 4500) Then
        bb = bb + 3.141 * 150
    End If
    
        
    'hin9
    If (hin9(0).Top <= 2800) Then
        cVHin90 = 5
    End If
    
    If (hin9(0).Top >= 3800) Then
        cVHin90 = -3
    End If
    
    hin9(0).Top = hin9(0).Top + cVHin90
    
    If (hin9(1).Top <= 2800) Then
        cVHin91 = 2
    End If
    
    If (hin9(1).Top >= 3800) Then
        cVHin91 = -2
    End If
    
    hin9(1).Top = hin9(1).Top + cVHin91
    
    'hin 12
    
    
    For iCD = 0 To 15 Step 1
    
        hin12(iCD).Top = 2250 + Sin(ii / iSchwinggeschwindigkeit + sSchwingungszahl * iCD) * 450
    
    Next
    
    'hin14: siehe timer 3
    
    'hin 15: siehe timer 3
    
    'hin16(0):
        iMittelpunktX(0) = iMittelpunktX(0) + sVMittelpunktX(0)
        iMittelpunktY(0) = iMittelpunktY(0) + sVMittelpunktY(0)
        
        hin16(0).X1 = iMittelpunktX(0) - 200 * Cos(ii / 30)
        hin16(0).Y1 = iMittelpunktY(0) - 200 * Sin(ii / 30)
        hin16(0).X2 = iMittelpunktX(0) + 200 * Cos(ii / 30)
        hin16(0).Y2 = iMittelpunktY(0) + 200 * Sin(ii / 30)
        
        'nach rechts/links
        If (hin16(0).X1 > 5000) Or (hin16(0).X2 > 5000) Or _
        (hin16(0).X1 < 1000) Or (hin16(0).X2 < 1000) Then
            sVMittelpunktX(0) = -sVMittelpunktX(0)
        End If
        
        'nach oben/unten
        If (hin16(0).Y1 < 800) Or (hin16(0).Y2 < 800) Or _
        (hin16(0).Y1 > 5700) Or (hin16(0).Y2 > 5700) Then
            sVMittelpunktY(0) = -sVMittelpunktY(0)
        End If

    'hin16(1):
        iMittelpunktX(1) = iMittelpunktX(1) + sVMittelpunktX(1)
        iMittelpunktY(1) = iMittelpunktY(1) + sVMittelpunktY(1)
        
        hin16(1).X1 = iMittelpunktX(1) + 200 * Cos(-ii / 20)
        hin16(1).Y1 = iMittelpunktY(1) + 200 * Sin(-ii / 20)
        hin16(1).X2 = iMittelpunktX(1) - 200 * Cos(-ii / 20)
        hin16(1).Y2 = iMittelpunktY(1) - 200 * Sin(-ii / 20)
        
        'nach rechts/links
        If (hin16(1).X1 > 5000) Or (hin16(1).X2 > 5000) Or _
        (hin16(1).X1 < 1000) Or (hin16(1).X2 < 1000) Then
            sVMittelpunktX(1) = -sVMittelpunktX(1)
        End If
        
        'nach oben/unten
        If (hin16(1).Y1 < 800) Or (hin16(1).Y2 < 800) Or _
        (hin16(1).Y1 > 5700) Or (hin16(1).Y2 > 5700) Then
            sVMittelpunktY(1) = -sVMittelpunktY(1)
        End If
    
    
    'Bedingungen fürs Versagen
    
    'hin 1
    
    If (shpFigur.Top < 5550) And (shpFigur.Top > 5100) And _
    ((shpFigur.Left < hin1.X1) And (shpFigur.Left + 200 > hin1.X1)) Then
    
        Call Lose
    
    End If
    
    'hin 2
    If (shpFigur.Top < hin2.Y1) And (shpFigur.Top + 200 > hin2.Y1) And _
    (shpFigur.Left < 4500) Then
        Call Lose
    End If
    

    'hin 3
    If (shpFigur.Left < hin3(0).X1) And (shpFigur.Left + 200 > hin3(0).X1) _
    And (shpFigur.Top + 200 > hin3(0).Y1) And (shpFigur.Top < hin3(0).Y2) Then
        Call Lose
    End If
    
    If (shpFigur.Left < hin3(1).X1) And (shpFigur.Left + 200 > hin3(1).X1) _
    And (shpFigur.Top + 200 > hin3(1).Y1) And (shpFigur.Top < hin3(1).Y2) Then
        Call Lose
    End If
    
    'hin 4
    If (shpFigur.Top < hin4.Y1) And (shpFigur.Top + 200 > hin4.Y1) And _
    (shpFigur.Left + 200 > hin4.X1) Then
        Call Lose
    End If
    
    'hin 5
    If (shpFigur.Top < hin5.Y1) And (shpFigur.Top + 200 > hin5.Y1) And _
    (shpFigur.Left < hin5.X1) Then
        Call Lose
    End If
    
    'hin6
If (shpFigur.Top < 4500) And (shpFigur.Top > 2900) _
And (shpFigur.Left < 4400) Then

    'Initialisierung der Koordinaten
    iLinY = 2750 - hin6(0).X1
    iLinX = 4500 - hin6(0).Y1
    
    iLin2Y = 2750 - hin6(1).X1
    iLin2X = 4500 - hin6(1).Y1
    
    iFigY = 2750 - shpFigur.Left
    iFigX = 4500 - shpFigur.Top
    
    If (iLinX <> 0) Then
        cSteigungLin = iLinY / iLinX
    End If
    
    If (iLin2X <> 0) Then
        cSteigungLin2 = iLin2Y / iLin2X
    End If
    
    If (iFigX > 0) And (iFigX <> 200) Then
        
        cSteigungOR = iFigY / iFigX
        cSteigungOL = iFigY / (iFigX - 200)
        cSteigungUL = (iFigY - 200) / (iFigX - 200)
        cSteigungUR = (iFigY - 200) / iFigX
    
    End If
    
        'Bedingungen fürs Versagen an hin 6(0)
            'Erster Quadrant/links
        If (cSteigungLin > 0) Then
            
            If ((iFigX - 200 > iLinX) Or (iFigY - 200 > iLinY)) Then
             
            Else
                If (cSteigungOL > cSteigungLin) And (cSteigungUR < cSteigungLin) Then
                  Call Lose
                End If
            End If
            
            If ((cSteigungOL < 0) And (cSteigungUR < cSteigungLin)) And (shpFigur.Left < 2550) Then
                Call Lose
            End If
            
        End If
            'Vierter Quadrant/rechts
        If (cSteigungLin < 0) And (shpFigur.Left > 2550) Then
        
            If ((iFigX - 200 > iLinX) Or (iFigY < iLinY)) Then
            
            Else
            
                If (cSteigungOR > cSteigungLin) And (cSteigungUL < cSteigungLin) Then
                    Call Lose
                End If
                
            End If
        End If
        
        'Bedingungen fürs Versagen an hin6(1)
            'Erster Quadrant/links
        If (cSteigungLin2 > 0) Then
    
             If ((iFigX - 200 > iLin2X) Or (iFigY - 200 > iLin2Y)) Then
             
             Else
             
                If (cSteigungOL > cSteigungLin2) And (cSteigungUR < cSteigungLin2) Then
                  Call Lose
                End If
             
             End If
             
            If ((cSteigungOL < 0) And (cSteigungUR < cSteigungLin2)) And (shpFigur.Left < 2550) Then
                Call Lose
            End If
            
            
        End If
            'Vierter Quadrant/rechts
        If (cSteigungLin2 < 0) And (shpFigur.Left > 2550) Then
            
            If ((iFigX - 200 > iLin2X) Or (iFigY < iLin2Y)) Then
            
            Else
            
                If (cSteigungOR > cSteigungLin2) And (cSteigungUL < cSteigungLin2) Then
                    Call Lose
                End If
            End If
        End If
        
End If

    'hin7
    If (shpFigur.Left < 4400) And (shpFigur.Top < 2800) And (shpFigur.Top + 200 > 2800) Then
        Call Lose
    End If
        
    'hin8
    
    If (shpFigur.Top < 4000) And (shpFigur.Top + 200 > 2800) And (shpFigur.Left < 4400) _
    And (shpFigur.Left + 200 > 4400) Then
        Call Lose
    End If
    
    'hin9(0)
    If (shpFigur.Top + 200 > hin9(0).Top) And (shpFigur.Top < hin9(0).Top + 200) And _
    (shpFigur.Left + 200 > hin9(0).Left) And (shpFigur.Left < hin9(0).Left + 200) Then
        Call Lose
    End If
    
    'hin9(1)
    If (shpFigur.Top + 200 > hin9(1).Top) And (shpFigur.Top < hin9(1).Top + 200) And _
    (shpFigur.Left + 200 > hin9(1).Left) And (shpFigur.Left < hin9(1).Left + 200) Then
        Call Lose
    End If
    
    'hin10
    If (shpFigur.Top < 1300) And (shpFigur.Top + 200 > 1300) And _
    (shpFigur.Left + 200 > 1500) And (shpFigur.Left < 3400) Then
        Call Lose
    End If
    
    'hin11
    If (shpFigur.Top + 200 > 800) And (shpFigur.Top < 1300) And _
    (shpFigur.Left < 3400) And (shpFigur.Left + 200 > 3400) Then
        Call Lose
    End If
    
    'hin12
    For iAB = 0 To 15 Step 1
    
        If (shpFigur.Top + 200 > hin12(iAB).Top) _
        And (shpFigur.Top < hin12(iAB).Top + 100) _
        And (shpFigur.Left + 200 > hin12(iAB).Left) _
        And (shpFigur.Left < hin12(iAB).Left + 100) Then
            Call Lose
        End If
    Next
    
    'hin13
    If (shpFigur.Top < 1800) And (shpFigur.Top + 200 > 1800) And _
    (shpFigur.Left + 200 > 1500) And (shpFigur.Left < 4850) Then
        Call Lose
    End If
    
    'hin14
    For a = 0 To 3
        If (shpFigur.Top + 200 > hin14(a).Y1) And (shpFigur.Top < hin14(a).Y2) _
        And (shpFigur.Left < hin14(a).X1) And (shpFigur.Left + 200 > hin14(a).X1) Then
            Call Lose
        End If
    Next
    
    'hin15
    If (shpFigur.Left + 200 > hin15.Left) And (shpFigur.Left < hin15.Left + hin15.Width) _
    And (shpFigur.Top < hin15.Top + hin15.Height) And (shpFigur.Top + 200 > hin15.Top) Then
    
        If (shpFigur.Top > hin15.Top) And (shpFigur.Top + 200 < hin15.Top + hin15.Height) _
        And (shpFigur.Left > hin15.Left) And (shpFigur.Left + 200 < hin15.Left + hin15.Width) Then
        
        Else
            Call Lose
        End If
    End If
    
    'hin16(0)
    
    If ((shpFigur.Left < hin16(0).X1) And (shpFigur.Left + 200 > hin16(0).X1) And _
    (shpFigur.Top < hin16(0).Y1) And (shpFigur.Top + 200 > hin16(0).Y1)) Or _
    ((shpFigur.Left < hin16(0).X2) And (shpFigur.Left + 200 > hin16(0).X2) And _
    (shpFigur.Top < hin16(0).Y2) And (shpFigur.Top + 200 > hin16(0).Y2)) Then
        Call Lose
    End If
    
    If (shpFigur.Left < iMittelpunktX(0)) And (shpFigur.Left + 200 > iMittelpunktX(0)) And _
    (shpFigur.Top < iMittelpunktY(0)) And (shpFigur.Top + 200 > iMittelpunktY(0)) Then
        Call Lose
    End If
    
    'hin16(1)
    If ((shpFigur.Left < hin16(1).X1) And (shpFigur.Left + 200 > hin16(1).X1) And _
    (shpFigur.Top < hin16(1).Y1) And (shpFigur.Top + 200 > hin16(1).Y1)) Or _
    ((shpFigur.Left < hin16(1).X2) And (shpFigur.Left + 200 > hin16(1).X2) And _
    (shpFigur.Top < hin16(1).Y2) And (shpFigur.Top + 200 > hin16(1).Y2)) Then
        Call Lose
    End If
    
    If (shpFigur.Left < iMittelpunktX(1)) And (shpFigur.Left + 200 > iMittelpunktX(1)) And _
    (shpFigur.Top < iMittelpunktY(1)) And (shpFigur.Top + 200 > iMittelpunktY(1)) Then
        Call Lose
    End If
    
    
End Sub

Private Sub Timer3_Timer()
    'Bewegung für hin14
    If (iasdf Mod 2 = 0) Then
        For a = 0 To 3
            
            hin14(a).Y1 = 900
            hin14(a).Y2 = 1300
            
        Next
    Else
        For a = 0 To 3
            hin14(a).Y1 = 1300
            hin14(a).Y2 = 1700
        Next
    End If
    
    
    'Bewegung für hin15
    iasdf = iasdf + 1
    
    If (iasdf Mod 2 = 0) Then
        hin15.Top = 900
    Else
        hin15.Top = 1350
    End If

End Sub

Private Sub txtEingabe_KeyPress(KeyAscii As Integer)


    'Ziel freischalten
    
    If (shpFigur.Top < shpBlau.Top + shpBlau.Height) And _
    (shpFigur.Left + 200 > shpBlau.Left) Then
        frei = True
    End If
    
    If (frei = False) Then
        If (shpFigur.Top < 800) Then
            shpFigur.Top = 800
        End If
    Else
        linBlau.Visible = False
        shpBlau.Visible = False
        lblBlau.Visible = False
        
    End If
    
    
    

    'Bonussekunden
    
    If (shpFigur.Top < shpBonus.Top + shpBonus.Height) And (shpFigur.Top + 200 > shpBonus.Top) _
    And (shpFigur.Left < shpBonus.Left + shpBonus.Width) _
    And (shpFigur.Left + 200 > shpBonus.Left) And (Bonus = 0) Then
        iSekunden = iSekunden + 30
        lblBonus.Visible = False
        shpBonus.Visible = False
        Bonus = 1
    End If
    
    'Geschwindigkeitsänderung im oberen Teil
    
    If (shpFigur.Top > 2800) Then
        iGeschwindigkeit = 30
    Else
        If (shpFigur.Top < 1300) And (shpFigur.Left < 3400) Then
            iGeschwindigkeit = 30
        Else
            iGeschwindigkeit = 40
        End If
    End If
    
   'Bewegung der Figur
   
    If (KeyAscii = 119) Then
        shpFigur.Top = shpFigur.Top - iGeschwindigkeit
    End If
        
    If (KeyAscii = 115) Then
        shpFigur.Top = shpFigur.Top + iGeschwindigkeit
    End If
    
    If (KeyAscii = 97) Then
        shpFigur.Left = shpFigur.Left - iGeschwindigkeit
    End If
    
    If (KeyAscii = 100) Then
        shpFigur.Left = shpFigur.Left + iGeschwindigkeit
    End If
    
    'Absicherung nach oben:
    
    If (shpFigur.Top < 200) Then
       shpFigur.Top = 200
    End If
        
    If ((shpFigur.Top < 800) And (shpFigur.Top > 759)) And _
    ((shpFigur.Left < 2600) Or (shpFigur.Left > 3200)) Then
        shpFigur.Top = 800
    End If
    
    'Absicherung nach unten:
    
    If (shpFigur.Top > 6100) Then
       shpFigur.Top = 6100
    End If
        
    If ((shpFigur.Top > 5500) And (shpFigur.Top < 5531)) And _
    ((shpFigur.Left < 2600) Or (shpFigur.Left > 3400)) Then
        shpFigur.Top = 5500
    End If
    
    'Absicherung nach rechts:
    
    If (shpFigur.Left > 4800) Then
        shpFigur.Left = 4800
    End If
    
    If (shpFigur.Left > 3200) And ((shpFigur.Top > 5500) Or (shpFigur.Top < 759)) Then
        shpFigur.Left = 3200
    End If
    
    'Absicherung nach links:
    
    If (shpFigur.Left < 1000) Then
        shpFigur.Left = 1000
    End If
    
    If (shpFigur.Left < 2600) And ((shpFigur.Top > 5500) Or (shpFigur.Top < 769)) Then
        shpFigur.Left = 2600
    End If
    
    'Anweisung für Ziel
    
    If (shpFigur.Top < 600) And (shpFigur.Top > 200) _
    And (shpFigur.Left > 2700) And (shpFigur.Left < 3100) Then
        shpGewonnen.Visible = True
        lblGewonnen.Visible = True
        cmdNeu.Visible = True
        cmdBeenden.Visible = True
        cmdNeu.SetFocus
        Timer1.Enabled = False
        Timer2.Enabled = False
        Timer3.Enabled = False
        lblGewonnen.Caption = "Gewonnen!"
        shpGewonnen.FillColor = &HFF&
        
    End If
        
    
    
    
End Sub

Public Function Lose()
  
        Timer1.Enabled = False
        Timer2.Enabled = False
        Timer3.Enabled = False
        lblGewonnen.Caption = "Verloren!"
        shpGewonnen.FillColor = &HFF00&
        shpGewonnen.Visible = True
        lblGewonnen.Visible = True
        cmdNeu.Visible = True
        cmdBeenden.Visible = True
        cmdNeu.SetFocus
End Function


