VERSION 5.00
Begin VB.Form frmHighscore 
   Caption         =   "Highscore"
   ClientHeight    =   5865
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5625
   LinkTopic       =   "Form1"
   ScaleHeight     =   5865
   ScaleWidth      =   5625
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton cmdEnd 
      Caption         =   "&Beenden"
      Height          =   500
      Left            =   3060
      TabIndex        =   17
      Top             =   4600
      Width           =   1500
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   500
      Left            =   1200
      TabIndex        =   0
      Top             =   4600
      Width           =   1500
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   4
      Left            =   4005
      TabIndex        =   16
      Top             =   3810
      Width           =   705
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   3
      Left            =   4005
      TabIndex        =   15
      Top             =   3210
      Width           =   705
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   2
      Left            =   4005
      TabIndex        =   14
      Top             =   2610
      Width           =   705
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   1
      Left            =   4005
      TabIndex        =   13
      Top             =   2010
      Width           =   705
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   0
      Left            =   4005
      TabIndex        =   12
      Top             =   1410
      Width           =   705
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
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
      Index           =   4
      Left            =   1065
      TabIndex        =   11
      Top             =   3795
      Width           =   2505
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
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
      Index           =   3
      Left            =   1065
      TabIndex        =   10
      Top             =   3195
      Width           =   2505
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
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
      Index           =   2
      Left            =   1065
      TabIndex        =   9
      Top             =   2595
      Width           =   2505
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
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
      Index           =   1
      Left            =   1065
      TabIndex        =   8
      Top             =   1995
      Width           =   2505
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
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
      Index           =   0
      Left            =   1065
      TabIndex        =   7
      Top             =   1410
      Width           =   2505
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Highscore"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   1410
      TabIndex        =   6
      Top             =   255
      Width           =   2970
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "5."
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
      Left            =   570
      TabIndex        =   5
      Top             =   3810
      Width           =   405
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "4."
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
      Left            =   570
      TabIndex        =   4
      Top             =   3210
      Width           =   405
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "3."
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
      Left            =   570
      TabIndex        =   3
      Top             =   2610
      Width           =   405
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "2."
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
      Left            =   570
      TabIndex        =   2
      Top             =   2010
      Width           =   405
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "1."
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
      Left            =   570
      TabIndex        =   1
      Top             =   1410
      Width           =   405
   End
End
Attribute VB_Name = "frmHighscore"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmdEnd_Click()

    Open "C:\Snake 2009\Score.txt" For Output As #1
    Open "C:\Snake 2009\Names.txt" For Output As #2
    
    Print #1, frmSnake.iScore1
    Print #1, frmSnake.iScore2
    Print #1, frmSnake.iScore3
    Print #1, frmSnake.iScore4
    Print #1, frmSnake.iScore5
    
    Print #2, frmSnake.sName1
    Print #2, frmSnake.sName2
    Print #2, frmSnake.sName3
    Print #2, frmSnake.sName4
    Print #2, frmSnake.sName5
    
    Close


    End
End Sub

Private Sub cmdOK_Click()

    frmHighscore.Hide
    frmSnake.Show
    frmSnake.cmdNeu.SetFocus
    

End Sub


Private Sub Form_Activate()
    lblName(0).Caption = frmSnake.sName1
    lblName(1).Caption = frmSnake.sName2
    lblName(2).Caption = frmSnake.sName3
    lblName(3).Caption = frmSnake.sName4
    lblName(4).Caption = frmSnake.sName5
    
    lblPunkte(0).Caption = frmSnake.iScore1
    lblPunkte(1).Caption = frmSnake.iScore2
    lblPunkte(2).Caption = frmSnake.iScore3
    lblPunkte(3).Caption = frmSnake.iScore4
    lblPunkte(4).Caption = frmSnake.iScore5
End Sub

Private Sub Form_Unload(Cancel As Integer)

    Open "C:\Snake 2009\Score.txt" For Output As #1
    Open "C:\Snake 2009\Names.txt" For Output As #2
    
    Print #1, frmSnake.iScore1
    Print #1, frmSnake.iScore2
    Print #1, frmSnake.iScore3
    Print #1, frmSnake.iScore4
    Print #1, frmSnake.iScore5
    
    Print #2, frmSnake.sName1
    Print #2, frmSnake.sName2
    Print #2, frmSnake.sName3
    Print #2, frmSnake.sName4
    Print #2, frmSnake.sName5
    
    Close

End Sub
