VERSION 5.00
Begin VB.Form frmSnake 
   Caption         =   "Snake"
   ClientHeight    =   7305
   ClientLeft      =   7200
   ClientTop       =   2190
   ClientWidth     =   6165
   LinkTopic       =   "Form1"
   ScaleHeight     =   7305
   ScaleWidth      =   6165
   Begin VB.CommandButton cmdHighscore 
      Caption         =   "&Highscore"
      Height          =   500
      Left            =   3840
      TabIndex        =   7
      Top             =   6480
      Width           =   1500
   End
   Begin VB.TextBox txtEingabe 
      Height          =   495
      Left            =   5310
      TabIndex        =   0
      Text            =   " "
      Top             =   7755
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   4800
      Top             =   4860
   End
   Begin VB.CommandButton cmdNeu 
      Caption         =   "&Neustart"
      Height          =   500
      Left            =   3840
      TabIndex        =   3
      Top             =   5760
      Width           =   1500
   End
   Begin VB.Label lblHighscore 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   6
      Top             =   6240
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Highscore:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   810
      TabIndex        =   5
      Top             =   6255
      Width           =   1530
   End
   Begin VB.Label lblVerloren 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      BackColor       =   &H00C0FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Verloren"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1185
      Left            =   645
      TabIndex        =   4
      Top             =   1470
      Visible         =   0   'False
      Width           =   4710
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   486
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   485
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   484
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   483
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   482
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   481
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   480
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   479
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   478
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   477
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   476
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   475
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   474
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   473
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   472
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   471
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   470
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   469
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   468
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   467
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   466
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   465
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   464
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   463
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   462
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   461
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   460
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   459
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   458
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   457
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   456
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   455
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   454
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   453
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   452
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   451
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   450
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   449
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   448
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   447
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   446
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   445
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   444
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   443
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   442
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   441
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   440
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   439
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   438
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   437
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   436
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   435
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   434
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   433
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   432
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   431
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   430
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   429
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   428
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   427
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   426
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   425
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   424
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   423
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   422
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   421
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   420
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   419
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   418
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   417
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   416
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   415
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   414
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   413
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   412
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   411
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   410
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   409
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   408
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   407
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   406
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   405
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   404
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   403
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   402
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   401
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   400
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   399
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   398
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   397
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   396
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   395
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   394
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   393
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   392
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   391
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   390
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   389
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   388
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   387
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   386
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   385
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   384
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   383
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   382
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   381
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   380
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   379
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   378
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   377
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   376
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   375
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   374
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   373
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   372
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   371
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   370
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   369
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   368
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   367
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   366
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   365
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   364
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   363
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   362
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   361
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   360
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   359
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   358
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   357
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   356
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   355
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   354
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   353
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   352
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   351
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   350
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   349
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   348
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   347
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   346
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   345
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   344
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   343
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   342
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   341
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   340
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   339
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   338
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   337
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   336
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   335
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   334
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   333
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   332
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   331
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   330
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   329
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   328
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   327
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   326
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   325
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   324
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   323
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   322
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   321
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   320
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   319
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   318
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   317
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   316
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   315
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   314
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   313
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   312
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   311
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   310
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   309
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   308
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   307
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   306
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   305
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   304
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   303
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   302
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   301
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   300
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   299
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   298
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   297
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   296
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   295
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   294
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   293
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   292
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   291
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   290
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   289
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   288
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   287
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   286
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   285
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   284
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   283
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   282
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   281
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   280
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   279
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   278
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   277
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   276
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   275
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   274
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   273
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   272
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   271
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   270
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   269
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   268
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   267
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   266
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   265
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   264
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   263
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   262
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   261
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   260
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   259
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   258
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   257
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   256
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   255
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   254
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   253
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   252
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   251
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   250
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   249
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   248
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   247
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   246
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   245
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   244
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   243
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   242
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   241
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   240
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   239
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   238
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   237
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   236
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   235
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   234
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   233
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   232
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   231
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   230
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   229
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   228
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   227
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   226
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   225
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   224
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   223
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   222
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   221
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   220
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   219
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   218
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   217
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   216
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   215
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   214
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   213
      Left            =   120
      Top             =   1575
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   212
      Left            =   375
      Top             =   1260
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   211
      Left            =   660
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   210
      Left            =   1050
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   209
      Left            =   1305
      Top             =   1290
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   208
      Left            =   1545
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   207
      Left            =   1815
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   206
      Left            =   2145
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   205
      Left            =   2445
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   204
      Left            =   2760
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   203
      Left            =   3015
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   202
      Left            =   3285
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   201
      Left            =   3585
      Top             =   1320
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   200
      Left            =   3900
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   199
      Left            =   4200
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   198
      Left            =   4485
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   197
      Left            =   4725
      Top             =   1350
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   196
      Left            =   5025
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   195
      Left            =   5280
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   194
      Left            =   5550
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   193
      Left            =   5850
      Top             =   1335
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   192
      Left            =   60
      Top             =   1050
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   191
      Left            =   315
      Top             =   735
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   190
      Left            =   600
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   189
      Left            =   990
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   188
      Left            =   1245
      Top             =   765
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   187
      Left            =   1485
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   186
      Left            =   1755
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   185
      Left            =   2085
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   184
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   183
      Left            =   2700
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   182
      Left            =   2955
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   181
      Left            =   3225
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   180
      Left            =   3525
      Top             =   795
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   179
      Left            =   3840
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   178
      Left            =   4140
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   177
      Left            =   4425
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   176
      Left            =   4665
      Top             =   825
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   175
      Left            =   4965
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   174
      Left            =   5220
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   173
      Left            =   5490
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   172
      Left            =   5790
      Top             =   810
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   171
      Left            =   75
      Top             =   6735
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   170
      Left            =   330
      Top             =   6420
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   169
      Left            =   615
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   168
      Left            =   1005
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   167
      Left            =   1260
      Top             =   6450
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   166
      Left            =   1500
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   165
      Left            =   1770
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   164
      Left            =   2100
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   163
      Left            =   2400
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   162
      Left            =   2715
      Top             =   6495
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   161
      Left            =   2970
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   160
      Left            =   3240
      Top             =   6495
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   159
      Left            =   3180
      Top             =   5040
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   158
      Left            =   3495
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   157
      Left            =   3795
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   156
      Left            =   4080
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   155
      Left            =   4320
      Top             =   5070
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   154
      Left            =   4620
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   153
      Left            =   4875
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   152
      Left            =   5145
      Top             =   5055
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   151
      Left            =   5805
      Top             =   6495
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   150
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   149
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   148
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   147
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   146
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   145
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   144
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   143
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   142
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   141
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   140
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   139
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   138
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   137
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   136
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   135
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   134
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   133
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   132
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   131
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   130
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   129
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   128
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   127
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   126
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   125
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   124
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   123
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   122
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   121
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   120
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   119
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   118
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   117
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   116
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   115
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   114
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   113
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   112
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   111
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   110
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   109
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   108
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   107
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   106
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   105
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   104
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   103
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   102
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   101
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   100
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   99
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   98
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   97
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   96
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   95
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   94
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   93
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   92
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   91
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   90
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   89
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   88
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   87
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   86
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   85
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   84
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   83
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   82
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   81
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   80
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   79
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   78
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   77
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   76
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   75
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   74
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   73
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   72
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   71
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   70
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   69
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   68
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   67
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   66
      Left            =   0
      Top             =   315
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   65
      Left            =   255
      Top             =   0
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   64
      Left            =   540
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   63
      Left            =   930
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   62
      Left            =   1185
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   61
      Left            =   1425
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   60
      Left            =   1695
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   59
      Left            =   2025
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   58
      Left            =   2325
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   57
      Left            =   2640
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   56
      Left            =   2895
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   55
      Left            =   3165
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   54
      Left            =   3465
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   53
      Left            =   3780
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   52
      Left            =   4080
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   51
      Left            =   4365
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   50
      Left            =   4605
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   49
      Left            =   4905
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   48
      Left            =   5160
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   47
      Left            =   5430
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   46
      Left            =   5730
      Top             =   75
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   45
      Left            =   5820
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   44
      Left            =   5520
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   43
      Left            =   5250
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   42
      Left            =   4995
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   41
      Left            =   4695
      Top             =   120
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   40
      Left            =   4455
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   39
      Left            =   4170
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   38
      Left            =   3870
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   37
      Left            =   3555
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   36
      Left            =   3255
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   35
      Left            =   2985
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   34
      Left            =   2730
      Top             =   105
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   33
      Left            =   2415
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   32
      Left            =   2115
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   31
      Left            =   1785
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   30
      Left            =   1515
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   29
      Left            =   1275
      Top             =   60
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   28
      Left            =   1020
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   27
      Left            =   630
      Top             =   90
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   26
      Left            =   345
      Top             =   30
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   25
      Left            =   90
      Top             =   345
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   24
      Left            =   105
      Top             =   645
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   23
      Left            =   135
      Top             =   960
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   22
      Left            =   120
      Top             =   1215
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   21
      Left            =   135
      Top             =   1485
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   20
      Left            =   90
      Top             =   1725
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   19
      Left            =   45
      Top             =   2025
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   18
      Left            =   75
      Top             =   2340
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   17
      Left            =   60
      Top             =   2565
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   16
      Left            =   90
      Top             =   2895
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   15
      Left            =   75
      Top             =   3150
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   14
      Left            =   90
      Top             =   3435
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   13
      Left            =   75
      Top             =   3660
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   12
      Left            =   45
      Top             =   3960
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   11
      Left            =   60
      Top             =   4260
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   10
      Left            =   75
      Top             =   4500
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   9
      Left            =   90
      Top             =   4830
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   8
      Left            =   45
      Top             =   5085
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   7
      Left            =   120
      Top             =   5400
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   6
      Left            =   180
      Top             =   5745
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   5
      Left            =   105
      Top             =   6120
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   4
      Left            =   240
      Top             =   6420
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   3
      Left            =   495
      Top             =   6405
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   2
      Left            =   780
      Top             =   6435
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   195
      Index           =   1
      Left            =   1110
      Top             =   6480
      Visible         =   0   'False
      Width           =   195
   End
   Begin VB.Shape shpK 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Undurchsichtig
      BorderStyle     =   0  'Transparent
      Height          =   200
      Left            =   1900
      Top             =   1700
      Width           =   200
   End
   Begin VB.Shape shpS 
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Ausgefüllt
      Height          =   200
      Index           =   0
      Left            =   500
      Top             =   2500
      Width           =   200
   End
   Begin VB.Label lblPunkte 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2400
      TabIndex        =   2
      Top             =   5730
      Width           =   1035
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Punkte:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   5745
      Width           =   1230
   End
   Begin VB.Shape shpRand 
      BorderWidth     =   3
      Height          =   4995
      Left            =   510
      Top             =   510
      Width           =   4995
   End
End
Attribute VB_Name = "frmSnake"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public keinGewinner As Boolean
Dim Zug As Boolean
Dim strEingabe As String
Dim Hoch As Boolean
Dim Runter As Boolean
Dim Links As Boolean
Dim Rechts As Boolean
Dim iV As Integer
Dim Time1 As Integer
Dim Time2 As Integer
Dim KastenNr As Integer
Dim a As Integer
Dim b As Integer
Dim Zeitpunkt As Integer
Dim KastenX(0 To 450, 0 To 50000) As Integer ' (KastenNr,Zeitpunkt)
Dim KastenY(0 To 450, 0 To 50000) As Integer ' (KastenNr,Zeitpunkt)
Dim Punkte As Integer
Dim Standardscore As String
Dim Standardname As String


Public sName1 As String
Public sName2 As String
Public sName3 As String
Public sName4 As String
Public sName5 As String

Public iScore1 As Integer
Public iScore2 As Integer
Public iScore3 As Integer
Public iScore4 As Integer
Public iScore5 As Integer

Dim Score1auf2 As Integer
Dim Score2auf3 As Integer
Dim Score3auf4 As Integer
Dim Score4auf5 As Integer

Dim Name1auf2 As String
Dim Name2auf3 As String
Dim Name3auf4 As String
Dim Name4auf5 As String











Private Sub cmdHighscore_Click()
    
    keinGewinner = True
    
    frmHighscore.Show
    
End Sub

Private Sub cmdNeu_Click()

    For a = 1 To 450
        shpS(a).Visible = False
    Next

    Hoch = False
    Runter = False
    Links = False
    Rechts = True
    
    iV = 200
    
    KastenX(0, 0) = 700
    KastenY(0, 0) = 2500
    
    Time1 = 3
    Time2 = 2
    
    KastenNr = 0
    Zeitpunkt = 0
    
    Timer1.Enabled = True
    lblPunkte.Caption = 0
    Punkte = 0
    lblVerloren.Visible = False
    
    txtEingabe.SetFocus
    

    Call NeuerKasten
    
End Sub




Private Sub Form_Load()
    Hoch = False
    Runter = False
    Links = False
    Rechts = True
    
    iV = 200
    
    KastenX(0, 0) = 700
    KastenY(0, 0) = 2500
    
    Time1 = 3
    Time2 = 1
    
    Punkte = 0
    
    Standardscore = "0"
    Standardname = "Name"
    
    
    
    If (Dir("c:\Snake 2009\Score.txt")) = "Score.txt" Then
        
        Open "C:\Snake 2009\Score.txt" For Input As #1
        Open "C:\Snake 2009\Names.txt" For Input As #2
        
        Input #1, iScore1
        Input #1, iScore2
        Input #1, iScore3
        Input #1, iScore4
        Input #1, iScore5
        
        Input #2, sName1
        Input #2, sName2
        Input #2, sName3
        Input #2, sName4
        Input #2, sName5
        
        Close
        
        lblHighscore.Caption = iScore1
        
    Else
    

        MkDir ("C:\Snake 2009")
        
        Open "C:\Snake 2009\Score.txt" For Output As #1
        Open "C:\Snake 2009\Names.txt" For Output As #2
        
        Print #1, Standardscore
        Print #1, Standardscore
        Print #1, Standardscore
        Print #1, Standardscore
        Print #1, Standardscore
        
        Print #2, Standardname
        Print #2, Standardname
        Print #2, Standardname
        Print #2, Standardname
        Print #2, Standardname
        
        Close
    End If
    
    KastenNr = 0
    Zeitpunkt = 0

    Call NeuerKasten
    
    
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Open "C:\Snake 2009\Score.txt" For Output As #1
    Open "C:\Snake 2009\Names.txt" For Output As #2
    
    Print #1, iScore1
    Print #1, iScore2
    Print #1, iScore3
    Print #1, iScore4
    Print #1, iScore5
    
    Print #2, sName1
    Print #2, sName2
    Print #2, sName3
    Print #2, sName4
    Print #2, sName5
    
    Close
    
    End
    
End Sub

Private Sub Timer1_Timer()

    Zug = False
   
    
    
    'Steuerung
    If Hoch = True Then
        
        KastenY(0, Zeitpunkt + 1) = KastenY(0, Zeitpunkt) - iV
        shpS(0).Top = KastenY(0, Zeitpunkt + 1)
        
        KastenX(0, Zeitpunkt + 1) = KastenX(0, Zeitpunkt)
        shpS(0).Left = KastenX(0, Zeitpunkt + 1)
        
        
    End If
    
    If Runter = True Then
        
        KastenY(0, Zeitpunkt + 1) = KastenY(0, Zeitpunkt) + iV
        shpS(0).Top = KastenY(0, Zeitpunkt + 1)
        
        KastenX(0, Zeitpunkt + 1) = KastenX(0, Zeitpunkt)
        shpS(0).Left = KastenX(0, Zeitpunkt + 1)
        
    End If
    
    If Rechts = True Then
        KastenX(0, Zeitpunkt + 1) = KastenX(0, Zeitpunkt) + iV
        shpS(0).Left = KastenX(0, Zeitpunkt + 1)
        
        KastenY(0, Zeitpunkt + 1) = KastenY(0, Zeitpunkt)
        shpS(0).Top = KastenY(0, Zeitpunkt + 1)
        
    End If
    
    If Links = True Then
        KastenX(0, Zeitpunkt + 1) = KastenX(0, Zeitpunkt) - iV
        shpS(0).Left = KastenX(0, Zeitpunkt + 1)
        
        KastenY(0, Zeitpunkt + 1) = KastenY(0, Zeitpunkt)
        shpS(0).Top = KastenY(0, Zeitpunkt + 1)
    End If
    
    
    'Bedingungen für den Rand
    
    If KastenY(0, Zeitpunkt + 1) = 5500 Then 'Unten --> Oben
        KastenY(0, Zeitpunkt + 1) = 500
        GoTo hh:
        
    End If

    If KastenY(0, Zeitpunkt + 1) = 300 Then 'Oben --> Unten
        KastenY(0, Zeitpunkt + 1) = 5300
        GoTo hh:
    End If

    If KastenX(0, Zeitpunkt + 1) = 300 Then 'Links --> Rechts
        KastenX(0, Zeitpunkt + 1) = 5300
        GoTo hh:
    End If

    If KastenX(0, Zeitpunkt + 1) >= 5500 Then 'Rechts --> Links
        KastenX(0, Zeitpunkt + 1) = 500
        GoTo hh:
    End If
    
hh:
    
    'Bedingungen für den neuen Kasten
    If (shpS(0).Top < shpK.Top + 200) And (shpS(0).Top + 200 > shpK.Top) _
    And (shpS(0).Left + 200 > shpK.Left) And (shpS(0).Left < shpK.Left + 200) Then
    
        Call NeuerKasten
        KastenNr = KastenNr + 1
        Punkte = Punkte + 1
        shpS(KastenNr).Visible = True
        
        If (KastenNr > 20) And (KastenNr < 80) Then
        
            Timer1.Interval = Timer1.Interval + 1
        End If
        
    End If
    
    'Verlängern der Schlange
    
    
    
    If (KastenNr <> 0) Then
 
        For a = 1 To KastenNr
            
            KastenX(a, Zeitpunkt + 1) = KastenX(a - 1, Zeitpunkt)
            KastenY(a, Zeitpunkt + 1) = KastenY(a - 1, Zeitpunkt)
            
        Next
        
    End If
    
    'Zufallsgenerator für die Position des neuen Kastens
    Time1 = Time1 + 1
    Time2 = Time2 + 3
    
    If (Time1 >= 23) Then
        Time1 = 0
    End If
    
    If (Time2 >= 23) Then
        Time2 = 0
    End If
    
    'Darstellung
    For a = 0 To KastenNr
        shpS(a).Left = KastenX(a, Zeitpunkt + 1)
        shpS(a).Top = KastenY(a, Zeitpunkt + 1)
    Next
    
    'Bedingung fürs Versagen
    For a = 1 To KastenNr
        If (shpS(0).Top = shpS(a).Top) And (shpS(0).Left = shpS(a).Left) Then
            Call Lose
        End If
    Next
    
    lblPunkte.Caption = Punkte
    
    Zeitpunkt = Zeitpunkt + 1
        
End Sub

Private Sub txtEingabe_KeyPress(KeyAscii As Integer)
    
    Select Case KeyAscii
    Case 119 'w
        If (Not (Runter = True)) And (Zug = False) Then
            Hoch = True
            Rechts = False
            Links = False
            Zug = True
        End If
    Case 97 'a
        If (Not (Rechts = True)) And (Zug = False) Then
            Links = True
            Hoch = False
            Runter = False
            Zug = True
        End If
    Case 115 's
        If (Not (Hoch = True)) And (Zug = False) Then
            Runter = True
            Rechts = False
            Links = False
            Zug = True
        End If
    Case 100 'd
        If (Not (Links = True)) And (Zug = False) Then
            Rechts = True
            Hoch = False
            Runter = False
            Zug = True
        End If
    End Select
    
End Sub

Public Function NeuerKasten()

    shpK.Left = 700 + Time1 * 200
    shpK.Top = 700 + Time2 * 200
        
End Function

Public Function Lose()
    Timer1.Enabled = False
    keinGewinner = False
    
    
    
    If (Punkte > iScore5) Then
             
        If (Punkte > iScore1) Then 'erster platz
             
            Score1auf2 = iScore1
            Score2auf3 = iScore2
            Score3auf4 = iScore3
            Score4auf5 = iScore4
            
            iScore1 = Punkte
            
            Name1auf2 = sName1
            Name2auf3 = sName2
            Name3auf4 = sName3
            Name4auf5 = sName4
            
            sName1 = InputBox("Name:", "Highscore")
            
            iScore2 = Score1auf2
            iScore3 = Score2auf3
            iScore4 = Score3auf4
            iScore5 = Score4auf5
            
            sName2 = Name1auf2
            sName3 = Name2auf3
            sName4 = Name3auf4
            sName5 = Name4auf5
        
        
        Else
            If (Punkte > iScore2) Then 'zweiter platz
            
                Score2auf3 = iScore2
                Score3auf4 = iScore3
                Score4auf5 = iScore4
                
                iScore2 = Punkte
                
                Name2auf3 = sName2
                Name3auf4 = sName3
                Name4auf5 = sName4
                
                sName2 = InputBox("Name:", "Highscore")
                
                iScore3 = Score2auf3
                iScore4 = Score3auf4
                iScore5 = Score4auf5
                
                sName3 = Name2auf3
                sName4 = Name3auf4
                sName5 = Name4auf5
                
            
            Else
                If (Punkte > iScore3) Then 'dritter platz
                
                    Score3auf4 = iScore3
                    Score4auf5 = iScore4
                    
                    iScore3 = Punkte
                                      
                    Name3auf4 = sName3
                    Name4auf5 = sName4
            
                    sName3 = InputBox("Name:", "Highscore")
                    
                    iScore4 = Score3auf4
                    iScore5 = Score4auf5
                    
                    sName4 = Name3auf4
                    sName5 = Name4auf5
                    
                
                Else
                    If Punkte > iScore4 Then 'vierter platz
                   
                        Score4auf5 = iScore4
                        
                        iScore4 = Punkte
                       
                        Name4auf5 = sName4
                        
                        sName4 = InputBox("Name:", "Highscore")
                        
                        iScore5 = Score4auf5
                        
                        sName5 = Name4auf5
                        
                        
                    Else                               'fünfter platz
                    
                        iScore5 = Punkte
                        sName5 = InputBox("Name:", "Highscore")
                        
                    End If
                End If
            End If
        End If
        
        
        
            
        frmHighscore.Show
            
        Close
            
            
        
    Else
    
        lblVerloren.Caption = lblPunkte.Caption & " Punkte"
        lblVerloren.Visible = True
        cmdNeu.SetFocus
        
    End If
    
    lblHighscore.Caption = iScore1
End Function
