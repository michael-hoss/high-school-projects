VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H0000FFFF&
   Caption         =   "TicTacToe"
   ClientHeight    =   5760
   ClientLeft      =   225
   ClientTop       =   825
   ClientWidth     =   10095
   LinkTopic       =   "Form1"
   ScaleHeight     =   5760
   ScaleWidth      =   10095
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   5760
      Top             =   4920
   End
   Begin VB.CommandButton cmdRename 
      Caption         =   "&Umbenennen"
      Height          =   615
      Left            =   7800
      TabIndex        =   13
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   8
      Left            =   3300
      TabIndex        =   8
      Top             =   3300
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   7
      Left            =   2000
      TabIndex        =   7
      Top             =   3300
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   6
      Left            =   700
      TabIndex        =   6
      Top             =   3300
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   5
      Left            =   3300
      TabIndex        =   5
      Top             =   2000
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   4
      Left            =   2000
      TabIndex        =   4
      Top             =   2000
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   3
      Left            =   700
      TabIndex        =   3
      Top             =   2000
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   2
      Left            =   3300
      TabIndex        =   2
      Top             =   700
      Width           =   1200
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Index           =   1
      Left            =   2000
      TabIndex        =   1
      Top             =   700
      Width           =   1215
   End
   Begin VB.CommandButton cmdTick 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Index           =   0
      Left            =   700
      TabIndex        =   0
      Top             =   700
      Width           =   1215
   End
   Begin VB.Label lblPunkte2 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   7920
      TabIndex        =   12
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label lblPunkte1 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   7920
      TabIndex        =   11
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Line Line2 
      BorderWidth     =   2
      X1              =   7560
      X2              =   7560
      Y1              =   1680
      Y2              =   3000
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   5400
      X2              =   9240
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Label lblSpieler2 
      BackStyle       =   0  'Transparent
      Caption         =   "Spieler 2"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5760
      TabIndex        =   10
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label lblSpieler1 
      BackStyle       =   0  'Transparent
      Caption         =   "Spieler 1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5760
      TabIndex        =   9
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&Datei"
      Begin VB.Menu mnuFileNew 
         Caption         =   "&Neu"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "&Beenden"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&?"
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "Inf&o "
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim Spieler1dran As Boolean
Dim Beginner As Boolean

Private Sub cmdRename_Click()
    
    lblSpieler1.Caption = InputBox("Name:", "Spieler 1", lblSpieler1.Caption)
    lblSpieler2.Caption = InputBox("Name:", "Spieler 2", lblSpieler2.Caption)
    
End Sub

Private Sub cmdTick_Click(Index As Integer)

If cmdTick(Index).Caption <> "" Then
    GoTo hh:
End If

        If Spieler1dran Then
            cmdTick(Index).Caption = "X"
        Else
            cmdTick(Index).Caption = "O"
        End If
        
'Gewonnen??

    If cmdTick(0).Caption = cmdTick(1).Caption And cmdTick(1).Caption = cmdTick(2).Caption And cmdTick(0).Caption <> "" Then
        Call Win
    End If
    
    If cmdTick(3).Caption = cmdTick(4).Caption And cmdTick(4).Caption = cmdTick(5).Caption And cmdTick(3).Caption <> "" Then
        Call Win
    End If

    If cmdTick(6).Caption = cmdTick(7).Caption And cmdTick(7).Caption = cmdTick(8).Caption And cmdTick(7).Caption <> "" Then
        Call Win
    End If
 
    If cmdTick(0).Caption = cmdTick(3).Caption And cmdTick(3).Caption = cmdTick(6).Caption And cmdTick(0).Caption <> "" Then
        Call Win
    End If
 
    If cmdTick(1).Caption = cmdTick(4).Caption And cmdTick(4).Caption = cmdTick(7).Caption And cmdTick(7).Caption <> "" Then
        Call Win
    End If
 
    If cmdTick(2).Caption = cmdTick(5).Caption And cmdTick(5).Caption = cmdTick(8).Caption And cmdTick(5).Caption <> "" Then
        Call Win
    End If
 
    If cmdTick(0).Caption = cmdTick(4).Caption And cmdTick(4).Caption = cmdTick(8).Caption And cmdTick(0).Caption <> "" Then
        Call Win
    End If
 
    If cmdTick(2).Caption = cmdTick(4).Caption And cmdTick(4).Caption = cmdTick(6).Caption And cmdTick(2).Caption <> "" Then
        Call Win
    End If
    
    'Unentschieden??
    
    If cmdTick(0).Caption <> "" And _
    cmdTick(1).Caption <> "" And _
    cmdTick(2).Caption <> "" And _
    cmdTick(3).Caption <> "" And _
    cmdTick(4).Caption <> "" And _
    cmdTick(5).Caption <> "" And _
    cmdTick(6).Caption <> "" And _
    cmdTick(7).Caption <> "" And _
    cmdTick(8).Caption <> "" Then
    
        For a = 0 To 8
            cmdTick(a).Caption = ""
        Next
        
        Beginner = Not (Beginner)
        
        
        If Beginner Then
            Spieler1dran = True
        Else
            Spieler1dran = False
        End If
        
        GoTo hh:
 
    End If

    Spieler1dran = Not (Spieler1dran)
hh:
    
End Sub

Private Sub Form_Load()
    
    Spieler1dran = True
    
End Sub


Private Sub mnuHelpAbout_Click()
    MsgBox ("Version 1.0.0")
End Sub

Private Sub mnuFileExit_Click()
    'Formular entladen
    Unload Me

End Sub

Private Sub mnuFileNew_Click()
    
    lblPunkte1.Caption = "0"
    lblPunkte2.Caption = "0"
    
    For a = 0 To 8
        cmdTick(a).Caption = ""
    Next
    
    Spieler1dran = True
    
End Sub

Private Sub Timer1_Timer()
    

    If Spieler1dran Then
        lblSpieler1.Visible = Not (lblSpieler1.Visible)
        lblSpieler2.Visible = True
    End If
    
    If Spieler1dran = False Then
        lblSpieler2.Visible = Not (lblSpieler2.Visible)
        lblSpieler1.Visible = True
    End If
        
    
End Sub

Public Function Win()
    
    If Spieler1dran Then
        lblPunkte1.Caption = lblPunkte1.Caption + 1
    Else
        lblPunkte2.Caption = lblPunkte2.Caption + 1
    End If
    
    For a = 0 To 8
        cmdTick(a).Caption = ""
    Next
    
    Beginner = Not (Beginner)
    
    
    If Beginner Then
        Spieler1dran = True
    Else
        Spieler1dran = False
    End If

    
End Function
