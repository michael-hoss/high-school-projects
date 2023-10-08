<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ASDF
#Region "Upgrade Support "
	Private Shared m_vb6FormDefInstance As ASDF
	Private Shared m_InitializingDefInstance As Boolean
	Public Shared Property DefInstance() As ASDF
		Get
			If m_vb6FormDefInstance Is Nothing OrElse m_vb6FormDefInstance.IsDisposed Then
				m_InitializingDefInstance = True
				m_vb6FormDefInstance = CreateInstance()
				m_InitializingDefInstance = False
			End If
			Return m_vb6FormDefInstance
		End Get
		Set(ByVal Value As ASDF)
			m_vb6FormDefInstance = Value
		End Set
	End Property
#End Region
#Region "Windows Form Designer generated code "
	Public Shared Function CreateInstance() As ASDF
		Dim theInstance As New ASDF()
		theInstance.Form_Load()
		Return theInstance
	End Function
	Private visualControls() As String = New String() {"components", "ToolTipMain", "cmdWeiter", "Command1", "Reihe", "Text1", "Zufallsgenerator", "cmdStart", "Timer1", "Player", "imgBear", "lblPause", "lblLevel", "lblasdf", "lblLinien", "Label2", "lblVerloren", "_Fünf_2", "_Fünf_1", "_Fünf_0", "_Vier_2", "_Vier_1", "_Vier_0", "_Drei_3", "_Drei_2", "_Drei_1", "_Drei_0", "_Zwei_3", "_Zwei_2", "_Zwei_1", "_Zwei_0", "_Eins_3", "_Eins_2", "_Eins_1", "Label1", "_Figur_0", "LinRechts", "LinUnten", "LinLinks", "_Sieben_0", "_Sechs_1", "_Sieben_3", "_Sechs_2", "_Sieben_2", "_Sechs_3", "_Sechs_0", "_Sieben_1", "_Fünf_3", "_Vier_3", "_Eins_0", "Drei", "Eins", "Figur", "Fünf", "Sechs", "Sieben", "Vier", "Zwei", "commandButtonHelper1"}
	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer
	Private resources As System.ComponentModel.ComponentResourceManager
	Public ToolTipMain As System.Windows.Forms.ToolTip
	Public WithEvents cmdWeiter As System.Windows.Forms.Button
	Public WithEvents Command1 As System.Windows.Forms.Button
	Public WithEvents Reihe As System.Windows.Forms.Timer
	Public WithEvents Text1 As System.Windows.Forms.TextBox
	Public WithEvents Zufallsgenerator As System.Windows.Forms.Timer
	Public WithEvents cmdStart As System.Windows.Forms.Button
	Public WithEvents Timer1 As System.Windows.Forms.Timer
	Public WithEvents Player As AxWMPLib.AxWindowsMediaPlayer
	Public WithEvents imgBear As System.Windows.Forms.PictureBox
	Public WithEvents lblPause As System.Windows.Forms.Label
	Public WithEvents lblLevel As System.Windows.Forms.Label
	Public WithEvents lblasdf As System.Windows.Forms.Label
	Public WithEvents lblLinien As System.Windows.Forms.Label
	Public WithEvents Label2 As System.Windows.Forms.Label
	Public WithEvents lblVerloren As System.Windows.Forms.Label
	Private WithEvents _Fünf_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Fünf_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Fünf_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Vier_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Vier_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Vier_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Drei_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Drei_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Drei_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Drei_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Zwei_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Zwei_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Zwei_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Zwei_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Eins_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Eins_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Eins_1 As UpgradeHelpers.Gui.ShapeHelper
	Public WithEvents Label1 As System.Windows.Forms.Label
	Private WithEvents _Figur_0 As UpgradeHelpers.Gui.ShapeHelper
	Public WithEvents LinRechts As System.Windows.Forms.Label
	Public WithEvents LinUnten As System.Windows.Forms.Label
	Public WithEvents LinLinks As System.Windows.Forms.Label
	Private WithEvents _Sieben_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sechs_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sieben_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sechs_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sieben_2 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sechs_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sechs_0 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Sieben_1 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Fünf_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Vier_3 As UpgradeHelpers.Gui.ShapeHelper
	Private WithEvents _Eins_0 As UpgradeHelpers.Gui.ShapeHelper
	Public Drei(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Eins(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Figur(0) As UpgradeHelpers.Gui.ShapeHelper
	Public Fünf(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Sechs(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Sieben(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Vier(3) As UpgradeHelpers.Gui.ShapeHelper
	Public Zwei(3) As UpgradeHelpers.Gui.ShapeHelper
	Public commandButtonHelper1 As UpgradeHelpers.Gui.Controls.CommandButtonHelper
	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()> _
	 Private Sub InitializeComponent()
		Me.components = New System.ComponentModel.Container()
		Me.resources = New System.ComponentModel.ComponentResourceManager(GetType(ASDF))
		Me.ToolTipMain = New System.Windows.Forms.ToolTip(Me.components)
		Me.cmdWeiter = New System.Windows.Forms.Button()
		Me.Command1 = New System.Windows.Forms.Button()
		Me.Reihe = New System.Windows.Forms.Timer(components)
		Me.Text1 = New System.Windows.Forms.TextBox()
		Me.Zufallsgenerator = New System.Windows.Forms.Timer(components)
		Me.cmdStart = New System.Windows.Forms.Button()
		Me.Timer1 = New System.Windows.Forms.Timer(components)
		Me.Player = New AxWMPLib.AxWindowsMediaPlayer()
		Me.imgBear = New System.Windows.Forms.PictureBox()
		Me.lblPause = New System.Windows.Forms.Label()
		Me.lblLevel = New System.Windows.Forms.Label()
		Me.lblasdf = New System.Windows.Forms.Label()
		Me.lblLinien = New System.Windows.Forms.Label()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.lblVerloren = New System.Windows.Forms.Label()
		Me._Fünf_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Fünf_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Fünf_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Vier_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Vier_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Vier_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Drei_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Drei_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Drei_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Drei_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Zwei_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Zwei_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Zwei_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Zwei_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Eins_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Eins_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Eins_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me.Label1 = New System.Windows.Forms.Label()
		Me._Figur_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me.LinRechts = New System.Windows.Forms.Label()
		Me.LinUnten = New System.Windows.Forms.Label()
		Me.LinLinks = New System.Windows.Forms.Label()
		Me._Sieben_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sechs_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sieben_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sechs_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sieben_2 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sechs_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sechs_0 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Sieben_1 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Fünf_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Vier_3 = New UpgradeHelpers.Gui.ShapeHelper()
		Me._Eins_0 = New UpgradeHelpers.Gui.ShapeHelper()
		CType(Me.Player, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.SuspendLayout()
		Me.commandButtonHelper1 = New UpgradeHelpers.Gui.Controls.CommandButtonHelper(Me.components)

		' 
		'cmdWeiter
		' 
		Me.cmdWeiter.AllowDrop = True
		Me.cmdWeiter.BackColor = System.Drawing.SystemColors.Control
		Me.cmdWeiter.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.cmdWeiter.ForeColor = System.Drawing.SystemColors.ControlText
		Me.cmdWeiter.Location = New System.Drawing.Point(424, 456)
		Me.cmdWeiter.Name = "cmdWeiter"
		Me.cmdWeiter.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.cmdWeiter.Size = New System.Drawing.Size(81, 33)
		Me.cmdWeiter.TabIndex = 9
		Me.cmdWeiter.Text = "&Weiter"
		Me.cmdWeiter.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me.cmdWeiter.UseVisualStyleBackColor = False
		Me.cmdWeiter.Visible = False
		' 
		'Command1
		' 
		Me.Command1.AllowDrop = True
		Me.Command1.BackColor = System.Drawing.SystemColors.Control
		Me.Command1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Command1.ForeColor = System.Drawing.SystemColors.ControlText
		Me.Command1.Location = New System.Drawing.Point(424, 504)
		Me.Command1.Name = "Command1"
		Me.Command1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Command1.Size = New System.Drawing.Size(81, 33)
		Me.Command1.TabIndex = 2
		Me.Command1.Text = "&Info"
		Me.Command1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me.Command1.UseVisualStyleBackColor = False
		' 
		'Reihe
		' 
		Me.Reihe.Enabled = False
		Me.Reihe.Interval = 600
		' 
		'Text1
		' 
		Me.Text1.AcceptsReturn = True
		Me.Text1.AllowDrop = True
		Me.Text1.BackColor = System.Drawing.SystemColors.Window
		Me.Text1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
		Me.Text1.Cursor = System.Windows.Forms.Cursors.IBeam
		Me.Text1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Text1.ForeColor = System.Drawing.SystemColors.WindowText
		Me.Text1.Location = New System.Drawing.Point(664, 248)
		Me.Text1.MaxLength = 0
		Me.Text1.Name = "Text1"
		Me.Text1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Text1.Size = New System.Drawing.Size(121, 49)
		Me.Text1.TabIndex = 0
		' 
		'Zufallsgenerator
		' 
		Me.Zufallsgenerator.Enabled = True
		Me.Zufallsgenerator.Interval = 1
		' 
		'cmdStart
		' 
		Me.cmdStart.AllowDrop = True
		Me.cmdStart.BackColor = System.Drawing.SystemColors.Control
		Me.cmdStart.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.cmdStart.ForeColor = System.Drawing.SystemColors.ControlText
		Me.cmdStart.Location = New System.Drawing.Point(424, 456)
		Me.cmdStart.Name = "cmdStart"
		Me.cmdStart.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.cmdStart.Size = New System.Drawing.Size(81, 33)
		Me.cmdStart.TabIndex = 1
		Me.cmdStart.Text = "&Start"
		Me.cmdStart.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me.cmdStart.UseVisualStyleBackColor = False
		' 
		'Timer1
		' 
		Me.Timer1.Enabled = False
		Me.Timer1.Interval = 600
		' 
		'Player
		' 
		Me.Player.AllowDrop = True
		Me.Player.Location = New System.Drawing.Point(424, 392)
		Me.Player.Name = "Player"
		Me.Player.OcxState = CType(Me.resources.GetObject("Player.OcxState"), System.Windows.Forms.AxHost.State)
		Me.Player.Size = New System.Drawing.Size(81, 37)
		Me.Player.TabIndex = 11
		' 
		'imgBear
		' 
		Me.imgBear.AllowDrop = True
		Me.imgBear.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgBear.Enabled = True
		Me.imgBear.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgBear.Image = CType(Me.resources.GetObject("imgBear.Image"), System.Drawing.Image)
		Me.imgBear.Location = New System.Drawing.Point(80, 184)
		Me.imgBear.Name = "imgBear"
		Me.imgBear.Size = New System.Drawing.Size(289, 228)
		Me.imgBear.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		Me.imgBear.Visible = False
		' 
		'lblPause
		' 
		Me.lblPause.AllowDrop = True
		Me.lblPause.BackColor = System.Drawing.Color.Transparent
		Me.lblPause.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblPause.Font = New System.Drawing.Font("Comic Sans MS", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblPause.ForeColor = System.Drawing.Color.White
		Me.lblPause.Location = New System.Drawing.Point(88, 208)
		Me.lblPause.Name = "lblPause"
		Me.lblPause.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblPause.Size = New System.Drawing.Size(273, 73)
		Me.lblPause.TabIndex = 10
		Me.lblPause.Text = "Pause"
		Me.lblPause.TextAlign = System.Drawing.ContentAlignment.TopCenter
		Me.lblPause.Visible = False
		' 
		'lblLevel
		' 
		Me.lblLevel.AllowDrop = True
		Me.lblLevel.BackColor = System.Drawing.Color.Transparent
		Me.lblLevel.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblLevel.Font = New System.Drawing.Font("Comic Sans MS", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblLevel.ForeColor = System.Drawing.Color.White
		Me.lblLevel.Location = New System.Drawing.Point(424, 104)
		Me.lblLevel.Name = "lblLevel"
		Me.lblLevel.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblLevel.Size = New System.Drawing.Size(129, 49)
		Me.lblLevel.TabIndex = 8
		Me.lblLevel.Text = "1"
		' 
		'lblasdf
		' 
		Me.lblasdf.AllowDrop = True
		Me.lblasdf.BackColor = System.Drawing.Color.Transparent
		Me.lblasdf.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblasdf.Font = New System.Drawing.Font("Comic Sans MS", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblasdf.ForeColor = System.Drawing.Color.White
		Me.lblasdf.Location = New System.Drawing.Point(424, 80)
		Me.lblasdf.Name = "lblasdf"
		Me.lblasdf.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblasdf.Size = New System.Drawing.Size(97, 25)
		Me.lblasdf.TabIndex = 7
		Me.lblasdf.Text = "Level"
		' 
		'lblLinien
		' 
		Me.lblLinien.AllowDrop = True
		Me.lblLinien.BackColor = System.Drawing.Color.Transparent
		Me.lblLinien.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblLinien.Font = New System.Drawing.Font("Comic Sans MS", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblLinien.ForeColor = System.Drawing.Color.White
		Me.lblLinien.Location = New System.Drawing.Point(424, 192)
		Me.lblLinien.Name = "lblLinien"
		Me.lblLinien.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblLinien.Size = New System.Drawing.Size(129, 49)
		Me.lblLinien.TabIndex = 6
		Me.lblLinien.Text = "0"
		' 
		'Label2
		' 
		Me.Label2.AllowDrop = True
		Me.Label2.BackColor = System.Drawing.Color.Transparent
		Me.Label2.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.Label2.Font = New System.Drawing.Font("Comic Sans MS", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Label2.ForeColor = System.Drawing.Color.White
		Me.Label2.Location = New System.Drawing.Point(424, 168)
		Me.Label2.Name = "Label2"
		Me.Label2.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Label2.Size = New System.Drawing.Size(97, 25)
		Me.Label2.TabIndex = 5
		Me.Label2.Text = "Linien"
		' 
		'lblVerloren
		' 
		Me.lblVerloren.AllowDrop = True
		Me.lblVerloren.BackColor = System.Drawing.Color.Transparent
		Me.lblVerloren.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblVerloren.Font = New System.Drawing.Font("Comic Sans MS", 27.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblVerloren.ForeColor = System.Drawing.Color.White
		Me.lblVerloren.Location = New System.Drawing.Point(88, 208)
		Me.lblVerloren.Name = "lblVerloren"
		Me.lblVerloren.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblVerloren.Size = New System.Drawing.Size(273, 73)
		Me.lblVerloren.TabIndex = 4
		Me.lblVerloren.Text = "Fail!"
		Me.lblVerloren.TextAlign = System.Drawing.ContentAlignment.TopCenter
		Me.lblVerloren.Visible = False
		' 
		'_Fünf_2
		' 
		Me._Fünf_2.AllowDrop = True
		Me._Fünf_2.BackColor = System.Drawing.SystemColors.Window
		Me._Fünf_2.BackStyle = 0
		Me._Fünf_2.BorderColor = System.Drawing.Color.White
		Me._Fünf_2.BorderStyle = 1
		Me._Fünf_2.BorderWidth = 2
		Me._Fünf_2.Enabled = False
		Me._Fünf_2.FillColor = System.Drawing.Color.FromArgb(255, 173, 63)
		Me._Fünf_2.FillStyle = 0
		Me._Fünf_2.Location = New System.Drawing.Point(448, 312)
		Me._Fünf_2.Name = "_Fünf_2"
		Me._Fünf_2.Size = New System.Drawing.Size(24, 24)
		Me._Fünf_2.Visible = True
		' 
		'_Fünf_1
		' 
		Me._Fünf_1.AllowDrop = True
		Me._Fünf_1.BackColor = System.Drawing.SystemColors.Window
		Me._Fünf_1.BackStyle = 0
		Me._Fünf_1.BorderColor = System.Drawing.Color.White
		Me._Fünf_1.BorderStyle = 1
		Me._Fünf_1.BorderWidth = 2
		Me._Fünf_1.Enabled = False
		Me._Fünf_1.FillColor = System.Drawing.Color.FromArgb(255, 173, 63)
		Me._Fünf_1.FillStyle = 0
		Me._Fünf_1.Location = New System.Drawing.Point(472, 312)
		Me._Fünf_1.Name = "_Fünf_1"
		Me._Fünf_1.Size = New System.Drawing.Size(24, 24)
		Me._Fünf_1.Visible = True
		' 
		'_Fünf_0
		' 
		Me._Fünf_0.AllowDrop = True
		Me._Fünf_0.BackColor = System.Drawing.SystemColors.Window
		Me._Fünf_0.BackStyle = 0
		Me._Fünf_0.BorderColor = System.Drawing.Color.White
		Me._Fünf_0.BorderStyle = 1
		Me._Fünf_0.BorderWidth = 2
		Me._Fünf_0.Enabled = False
		Me._Fünf_0.FillColor = System.Drawing.Color.FromArgb(255, 173, 63)
		Me._Fünf_0.FillStyle = 0
		Me._Fünf_0.Location = New System.Drawing.Point(496, 312)
		Me._Fünf_0.Name = "_Fünf_0"
		Me._Fünf_0.Size = New System.Drawing.Size(24, 24)
		Me._Fünf_0.Visible = True
		' 
		'_Vier_2
		' 
		Me._Vier_2.AllowDrop = True
		Me._Vier_2.BackColor = System.Drawing.SystemColors.Window
		Me._Vier_2.BackStyle = 0
		Me._Vier_2.BorderColor = System.Drawing.Color.White
		Me._Vier_2.BorderStyle = 1
		Me._Vier_2.BorderWidth = 2
		Me._Vier_2.Enabled = False
		Me._Vier_2.FillColor = System.Drawing.Color.FromArgb(29, 15, 5)
		Me._Vier_2.FillStyle = 0
		Me._Vier_2.Location = New System.Drawing.Point(424, 336)
		Me._Vier_2.Name = "_Vier_2"
		Me._Vier_2.Size = New System.Drawing.Size(24, 24)
		Me._Vier_2.Visible = False
		' 
		'_Vier_1
		' 
		Me._Vier_1.AllowDrop = True
		Me._Vier_1.BackColor = System.Drawing.SystemColors.Window
		Me._Vier_1.BackStyle = 0
		Me._Vier_1.BorderColor = System.Drawing.Color.White
		Me._Vier_1.BorderStyle = 1
		Me._Vier_1.BorderWidth = 2
		Me._Vier_1.Enabled = False
		Me._Vier_1.FillColor = System.Drawing.Color.FromArgb(29, 15, 5)
		Me._Vier_1.FillStyle = 0
		Me._Vier_1.Location = New System.Drawing.Point(448, 312)
		Me._Vier_1.Name = "_Vier_1"
		Me._Vier_1.Size = New System.Drawing.Size(24, 24)
		Me._Vier_1.Visible = False
		' 
		'_Vier_0
		' 
		Me._Vier_0.AllowDrop = True
		Me._Vier_0.BackColor = System.Drawing.SystemColors.Window
		Me._Vier_0.BackStyle = 0
		Me._Vier_0.BorderColor = System.Drawing.Color.White
		Me._Vier_0.BorderStyle = 1
		Me._Vier_0.BorderWidth = 2
		Me._Vier_0.Enabled = False
		Me._Vier_0.FillColor = System.Drawing.Color.FromArgb(29, 15, 5)
		Me._Vier_0.FillStyle = 0
		Me._Vier_0.Location = New System.Drawing.Point(448, 336)
		Me._Vier_0.Name = "_Vier_0"
		Me._Vier_0.Size = New System.Drawing.Size(24, 24)
		Me._Vier_0.Visible = False
		' 
		'_Drei_3
		' 
		Me._Drei_3.AllowDrop = True
		Me._Drei_3.BackColor = System.Drawing.SystemColors.Window
		Me._Drei_3.BackStyle = 0
		Me._Drei_3.BorderColor = System.Drawing.Color.White
		Me._Drei_3.BorderStyle = 1
		Me._Drei_3.BorderWidth = 2
		Me._Drei_3.Enabled = False
		Me._Drei_3.FillColor = System.Drawing.Color.FromArgb(0, 32, 96)
		Me._Drei_3.FillStyle = 0
		Me._Drei_3.Location = New System.Drawing.Point(472, 336)
		Me._Drei_3.Name = "_Drei_3"
		Me._Drei_3.Size = New System.Drawing.Size(24, 24)
		Me._Drei_3.Visible = False
		' 
		'_Drei_2
		' 
		Me._Drei_2.AllowDrop = True
		Me._Drei_2.BackColor = System.Drawing.SystemColors.Window
		Me._Drei_2.BackStyle = 0
		Me._Drei_2.BorderColor = System.Drawing.Color.White
		Me._Drei_2.BorderStyle = 1
		Me._Drei_2.BorderWidth = 2
		Me._Drei_2.Enabled = False
		Me._Drei_2.FillColor = System.Drawing.Color.FromArgb(0, 32, 96)
		Me._Drei_2.FillStyle = 0
		Me._Drei_2.Location = New System.Drawing.Point(424, 336)
		Me._Drei_2.Name = "_Drei_2"
		Me._Drei_2.Size = New System.Drawing.Size(24, 24)
		Me._Drei_2.Visible = False
		' 
		'_Drei_1
		' 
		Me._Drei_1.AllowDrop = True
		Me._Drei_1.BackColor = System.Drawing.SystemColors.Window
		Me._Drei_1.BackStyle = 0
		Me._Drei_1.BorderColor = System.Drawing.Color.White
		Me._Drei_1.BorderStyle = 1
		Me._Drei_1.BorderWidth = 2
		Me._Drei_1.Enabled = False
		Me._Drei_1.FillColor = System.Drawing.Color.FromArgb(0, 32, 96)
		Me._Drei_1.FillStyle = 0
		Me._Drei_1.Location = New System.Drawing.Point(448, 312)
		Me._Drei_1.Name = "_Drei_1"
		Me._Drei_1.Size = New System.Drawing.Size(24, 24)
		Me._Drei_1.Visible = False
		' 
		'_Drei_0
		' 
		Me._Drei_0.AllowDrop = True
		Me._Drei_0.BackColor = System.Drawing.SystemColors.Window
		Me._Drei_0.BackStyle = 0
		Me._Drei_0.BorderColor = System.Drawing.Color.White
		Me._Drei_0.BorderStyle = 1
		Me._Drei_0.BorderWidth = 2
		Me._Drei_0.Enabled = False
		Me._Drei_0.FillColor = System.Drawing.Color.FromArgb(0, 32, 96)
		Me._Drei_0.FillStyle = 0
		Me._Drei_0.Location = New System.Drawing.Point(448, 336)
		Me._Drei_0.Name = "_Drei_0"
		Me._Drei_0.Size = New System.Drawing.Size(24, 24)
		Me._Drei_0.Visible = False
		' 
		'_Zwei_3
		' 
		Me._Zwei_3.AllowDrop = True
		Me._Zwei_3.BackColor = System.Drawing.SystemColors.Window
		Me._Zwei_3.BackStyle = 0
		Me._Zwei_3.BorderColor = System.Drawing.Color.White
		Me._Zwei_3.BorderStyle = 1
		Me._Zwei_3.BorderWidth = 2
		Me._Zwei_3.Enabled = False
		Me._Zwei_3.FillColor = System.Drawing.Color.Red
		Me._Zwei_3.FillStyle = 0
		Me._Zwei_3.Location = New System.Drawing.Point(424, 336)
		Me._Zwei_3.Name = "_Zwei_3"
		Me._Zwei_3.Size = New System.Drawing.Size(24, 24)
		Me._Zwei_3.Visible = False
		' 
		'_Zwei_2
		' 
		Me._Zwei_2.AllowDrop = True
		Me._Zwei_2.BackColor = System.Drawing.SystemColors.Window
		Me._Zwei_2.BackStyle = 0
		Me._Zwei_2.BorderColor = System.Drawing.Color.White
		Me._Zwei_2.BorderStyle = 1
		Me._Zwei_2.BorderWidth = 2
		Me._Zwei_2.Enabled = False
		Me._Zwei_2.FillColor = System.Drawing.Color.Red
		Me._Zwei_2.FillStyle = 0
		Me._Zwei_2.Location = New System.Drawing.Point(448, 336)
		Me._Zwei_2.Name = "_Zwei_2"
		Me._Zwei_2.Size = New System.Drawing.Size(24, 24)
		Me._Zwei_2.Visible = False
		' 
		'_Zwei_1
		' 
		Me._Zwei_1.AllowDrop = True
		Me._Zwei_1.BackColor = System.Drawing.SystemColors.Window
		Me._Zwei_1.BackStyle = 0
		Me._Zwei_1.BorderColor = System.Drawing.Color.White
		Me._Zwei_1.BorderStyle = 1
		Me._Zwei_1.BorderWidth = 2
		Me._Zwei_1.Enabled = False
		Me._Zwei_1.FillColor = System.Drawing.Color.Red
		Me._Zwei_1.FillStyle = 0
		Me._Zwei_1.Location = New System.Drawing.Point(472, 312)
		Me._Zwei_1.Name = "_Zwei_1"
		Me._Zwei_1.Size = New System.Drawing.Size(24, 24)
		Me._Zwei_1.Visible = False
		' 
		'_Zwei_0
		' 
		Me._Zwei_0.AllowDrop = True
		Me._Zwei_0.BackColor = System.Drawing.SystemColors.Window
		Me._Zwei_0.BackStyle = 0
		Me._Zwei_0.BorderColor = System.Drawing.Color.White
		Me._Zwei_0.BorderStyle = 1
		Me._Zwei_0.BorderWidth = 2
		Me._Zwei_0.Enabled = False
		Me._Zwei_0.FillColor = System.Drawing.Color.Red
		Me._Zwei_0.FillStyle = 0
		Me._Zwei_0.Location = New System.Drawing.Point(448, 312)
		Me._Zwei_0.Name = "_Zwei_0"
		Me._Zwei_0.Size = New System.Drawing.Size(24, 24)
		Me._Zwei_0.Visible = False
		' 
		'_Eins_3
		' 
		Me._Eins_3.AllowDrop = True
		Me._Eins_3.BackColor = System.Drawing.SystemColors.Window
		Me._Eins_3.BackStyle = 0
		Me._Eins_3.BorderColor = System.Drawing.Color.White
		Me._Eins_3.BorderStyle = 1
		Me._Eins_3.BorderWidth = 2
		Me._Eins_3.Enabled = False
		Me._Eins_3.FillColor = System.Drawing.Color.Lime
		Me._Eins_3.FillStyle = 0
		Me._Eins_3.Location = New System.Drawing.Point(448, 312)
		Me._Eins_3.Name = "_Eins_3"
		Me._Eins_3.Size = New System.Drawing.Size(24, 24)
		Me._Eins_3.Visible = False
		' 
		'_Eins_2
		' 
		Me._Eins_2.AllowDrop = True
		Me._Eins_2.BackColor = System.Drawing.SystemColors.Window
		Me._Eins_2.BackStyle = 0
		Me._Eins_2.BorderColor = System.Drawing.Color.White
		Me._Eins_2.BorderStyle = 1
		Me._Eins_2.BorderWidth = 2
		Me._Eins_2.Enabled = False
		Me._Eins_2.FillColor = System.Drawing.Color.Lime
		Me._Eins_2.FillStyle = 0
		Me._Eins_2.Location = New System.Drawing.Point(448, 336)
		Me._Eins_2.Name = "_Eins_2"
		Me._Eins_2.Size = New System.Drawing.Size(24, 24)
		Me._Eins_2.Visible = False
		' 
		'_Eins_1
		' 
		Me._Eins_1.AllowDrop = True
		Me._Eins_1.BackColor = System.Drawing.SystemColors.Window
		Me._Eins_1.BackStyle = 0
		Me._Eins_1.BorderColor = System.Drawing.Color.White
		Me._Eins_1.BorderStyle = 1
		Me._Eins_1.BorderWidth = 2
		Me._Eins_1.Enabled = False
		Me._Eins_1.FillColor = System.Drawing.Color.Lime
		Me._Eins_1.FillStyle = 0
		Me._Eins_1.Location = New System.Drawing.Point(472, 336)
		Me._Eins_1.Name = "_Eins_1"
		Me._Eins_1.Size = New System.Drawing.Size(24, 24)
		Me._Eins_1.Visible = False
		' 
		'Label1
		' 
		Me.Label1.AllowDrop = True
		Me.Label1.BackColor = System.Drawing.Color.Transparent
		Me.Label1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.Label1.Font = New System.Drawing.Font("Comic Sans MS", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Label1.ForeColor = System.Drawing.Color.White
		Me.Label1.Location = New System.Drawing.Point(424, 264)
		Me.Label1.Name = "Label1"
		Me.Label1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Label1.Size = New System.Drawing.Size(97, 33)
		Me.Label1.TabIndex = 3
		Me.Label1.Text = "Nächstes"
		' 
		'_Figur_0
		' 
		Me._Figur_0.AllowDrop = True
		Me._Figur_0.BackColor = System.Drawing.SystemColors.Window
		Me._Figur_0.BackStyle = 0
		Me._Figur_0.BorderColor = System.Drawing.Color.White
		Me._Figur_0.BorderStyle = 1
		Me._Figur_0.BorderWidth = 2
		Me._Figur_0.Enabled = False
		Me._Figur_0.FillColor = System.Drawing.Color.Lime
		Me._Figur_0.FillStyle = 0
		Me._Figur_0.Location = New System.Drawing.Point(248, 56)
		Me._Figur_0.Name = "_Figur_0"
		Me._Figur_0.Size = New System.Drawing.Size(24, 24)
		Me._Figur_0.Visible = False
		' 
		'LinRechts
		' 
		Me.LinRechts.AllowDrop = True
		Me.LinRechts.BackColor = System.Drawing.Color.White
		Me.LinRechts.Enabled = False
		Me.LinRechts.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.LinRechts.Location = New System.Drawing.Point(368, 80)
		Me.LinRechts.Name = "LinRechts"
		Me.LinRechts.Size = New System.Drawing.Size(1, 480)
		Me.LinRechts.Visible = True
		' 
		'LinUnten
		' 
		Me.LinUnten.AllowDrop = True
		Me.LinUnten.BackColor = System.Drawing.Color.White
		Me.LinUnten.Enabled = False
		Me.LinUnten.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.LinUnten.Location = New System.Drawing.Point(80, 560)
		Me.LinUnten.Name = "LinUnten"
		Me.LinUnten.Size = New System.Drawing.Size(288, 1)
		Me.LinUnten.Visible = True
		' 
		'LinLinks
		' 
		Me.LinLinks.AllowDrop = True
		Me.LinLinks.BackColor = System.Drawing.Color.White
		Me.LinLinks.Enabled = False
		Me.LinLinks.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.LinLinks.Location = New System.Drawing.Point(80, 80)
		Me.LinLinks.Name = "LinLinks"
		Me.LinLinks.Size = New System.Drawing.Size(1, 480)
		Me.LinLinks.Visible = True
		' 
		'_Sieben_0
		' 
		Me._Sieben_0.AllowDrop = True
		Me._Sieben_0.BackColor = System.Drawing.SystemColors.Window
		Me._Sieben_0.BackStyle = 0
		Me._Sieben_0.BorderColor = System.Drawing.Color.White
		Me._Sieben_0.BorderStyle = 1
		Me._Sieben_0.BorderWidth = 2
		Me._Sieben_0.Enabled = False
		Me._Sieben_0.FillColor = System.Drawing.Color.FromArgb(239, 216, 0)
		Me._Sieben_0.FillStyle = 0
		Me._Sieben_0.Location = New System.Drawing.Point(472, 336)
		Me._Sieben_0.Name = "_Sieben_0"
		Me._Sieben_0.Size = New System.Drawing.Size(24, 24)
		Me._Sieben_0.Visible = False
		' 
		'_Sechs_1
		' 
		Me._Sechs_1.AllowDrop = True
		Me._Sechs_1.BackColor = System.Drawing.SystemColors.Window
		Me._Sechs_1.BackStyle = 0
		Me._Sechs_1.BorderColor = System.Drawing.Color.White
		Me._Sechs_1.BorderStyle = 1
		Me._Sechs_1.BorderWidth = 2
		Me._Sechs_1.Enabled = False
		Me._Sechs_1.FillColor = System.Drawing.Color.FromArgb(0, 176, 240)
		Me._Sechs_1.FillStyle = 0
		Me._Sechs_1.Location = New System.Drawing.Point(472, 336)
		Me._Sechs_1.Name = "_Sechs_1"
		Me._Sechs_1.Size = New System.Drawing.Size(24, 24)
		Me._Sechs_1.Visible = False
		' 
		'_Sieben_3
		' 
		Me._Sieben_3.AllowDrop = True
		Me._Sieben_3.BackColor = System.Drawing.SystemColors.Window
		Me._Sieben_3.BackStyle = 0
		Me._Sieben_3.BorderColor = System.Drawing.Color.White
		Me._Sieben_3.BorderStyle = 1
		Me._Sieben_3.BorderWidth = 2
		Me._Sieben_3.Enabled = False
		Me._Sieben_3.FillColor = System.Drawing.Color.FromArgb(239, 216, 0)
		Me._Sieben_3.FillStyle = 0
		Me._Sieben_3.Location = New System.Drawing.Point(448, 336)
		Me._Sieben_3.Name = "_Sieben_3"
		Me._Sieben_3.Size = New System.Drawing.Size(24, 24)
		Me._Sieben_3.Visible = False
		' 
		'_Sechs_2
		' 
		Me._Sechs_2.AllowDrop = True
		Me._Sechs_2.BackColor = System.Drawing.SystemColors.Window
		Me._Sechs_2.BackStyle = 0
		Me._Sechs_2.BorderColor = System.Drawing.Color.White
		Me._Sechs_2.BorderStyle = 1
		Me._Sechs_2.BorderWidth = 2
		Me._Sechs_2.Enabled = False
		Me._Sechs_2.FillColor = System.Drawing.Color.FromArgb(0, 176, 240)
		Me._Sechs_2.FillStyle = 0
		Me._Sechs_2.Location = New System.Drawing.Point(448, 336)
		Me._Sechs_2.Name = "_Sechs_2"
		Me._Sechs_2.Size = New System.Drawing.Size(24, 24)
		Me._Sechs_2.Visible = False
		' 
		'_Sieben_2
		' 
		Me._Sieben_2.AllowDrop = True
		Me._Sieben_2.BackColor = System.Drawing.SystemColors.Window
		Me._Sieben_2.BackStyle = 0
		Me._Sieben_2.BorderColor = System.Drawing.Color.White
		Me._Sieben_2.BorderStyle = 1
		Me._Sieben_2.BorderWidth = 2
		Me._Sieben_2.Enabled = False
		Me._Sieben_2.FillColor = System.Drawing.Color.FromArgb(239, 216, 0)
		Me._Sieben_2.FillStyle = 0
		Me._Sieben_2.Location = New System.Drawing.Point(424, 336)
		Me._Sieben_2.Name = "_Sieben_2"
		Me._Sieben_2.Size = New System.Drawing.Size(24, 24)
		Me._Sieben_2.Visible = False
		' 
		'_Sechs_3
		' 
		Me._Sechs_3.AllowDrop = True
		Me._Sechs_3.BackColor = System.Drawing.SystemColors.Window
		Me._Sechs_3.BackStyle = 0
		Me._Sechs_3.BorderColor = System.Drawing.Color.White
		Me._Sechs_3.BorderStyle = 1
		Me._Sechs_3.BorderWidth = 2
		Me._Sechs_3.Enabled = False
		Me._Sechs_3.FillColor = System.Drawing.Color.FromArgb(0, 176, 240)
		Me._Sechs_3.FillStyle = 0
		Me._Sechs_3.Location = New System.Drawing.Point(424, 336)
		Me._Sechs_3.Name = "_Sechs_3"
		Me._Sechs_3.Size = New System.Drawing.Size(24, 24)
		Me._Sechs_3.Visible = False
		' 
		'_Sechs_0
		' 
		Me._Sechs_0.AllowDrop = True
		Me._Sechs_0.BackColor = System.Drawing.SystemColors.Window
		Me._Sechs_0.BackStyle = 0
		Me._Sechs_0.BorderColor = System.Drawing.Color.White
		Me._Sechs_0.BorderStyle = 1
		Me._Sechs_0.BorderWidth = 2
		Me._Sechs_0.Enabled = False
		Me._Sechs_0.FillColor = System.Drawing.Color.FromArgb(0, 176, 240)
		Me._Sechs_0.FillStyle = 0
		Me._Sechs_0.Location = New System.Drawing.Point(472, 312)
		Me._Sechs_0.Name = "_Sechs_0"
		Me._Sechs_0.Size = New System.Drawing.Size(24, 24)
		Me._Sechs_0.Visible = False
		' 
		'_Sieben_1
		' 
		Me._Sieben_1.AllowDrop = True
		Me._Sieben_1.BackColor = System.Drawing.SystemColors.Window
		Me._Sieben_1.BackStyle = 0
		Me._Sieben_1.BorderColor = System.Drawing.Color.White
		Me._Sieben_1.BorderStyle = 1
		Me._Sieben_1.BorderWidth = 2
		Me._Sieben_1.Enabled = False
		Me._Sieben_1.FillColor = System.Drawing.Color.FromArgb(239, 216, 0)
		Me._Sieben_1.FillStyle = 0
		Me._Sieben_1.Location = New System.Drawing.Point(424, 312)
		Me._Sieben_1.Name = "_Sieben_1"
		Me._Sieben_1.Size = New System.Drawing.Size(24, 24)
		Me._Sieben_1.Visible = False
		' 
		'_Fünf_3
		' 
		Me._Fünf_3.AllowDrop = True
		Me._Fünf_3.BackColor = System.Drawing.SystemColors.Window
		Me._Fünf_3.BackStyle = 0
		Me._Fünf_3.BorderColor = System.Drawing.Color.White
		Me._Fünf_3.BorderStyle = 1
		Me._Fünf_3.BorderWidth = 2
		Me._Fünf_3.Enabled = False
		Me._Fünf_3.FillColor = System.Drawing.Color.FromArgb(255, 173, 63)
		Me._Fünf_3.FillStyle = 0
		Me._Fünf_3.Location = New System.Drawing.Point(424, 312)
		Me._Fünf_3.Name = "_Fünf_3"
		Me._Fünf_3.Size = New System.Drawing.Size(24, 24)
		Me._Fünf_3.Visible = True
		' 
		'_Vier_3
		' 
		Me._Vier_3.AllowDrop = True
		Me._Vier_3.BackColor = System.Drawing.SystemColors.Window
		Me._Vier_3.BackStyle = 0
		Me._Vier_3.BorderColor = System.Drawing.Color.White
		Me._Vier_3.BorderStyle = 1
		Me._Vier_3.BorderWidth = 2
		Me._Vier_3.Enabled = False
		Me._Vier_3.FillColor = System.Drawing.Color.FromArgb(29, 15, 5)
		Me._Vier_3.FillStyle = 0
		Me._Vier_3.Location = New System.Drawing.Point(424, 312)
		Me._Vier_3.Name = "_Vier_3"
		Me._Vier_3.Size = New System.Drawing.Size(24, 24)
		Me._Vier_3.Visible = False
		' 
		'_Eins_0
		' 
		Me._Eins_0.AllowDrop = True
		Me._Eins_0.BackColor = System.Drawing.SystemColors.Window
		Me._Eins_0.BackStyle = 0
		Me._Eins_0.BorderColor = System.Drawing.Color.White
		Me._Eins_0.BorderStyle = 1
		Me._Eins_0.BorderWidth = 2
		Me._Eins_0.Enabled = False
		Me._Eins_0.FillColor = System.Drawing.Color.Lime
		Me._Eins_0.FillStyle = 0
		Me._Eins_0.Location = New System.Drawing.Point(424, 312)
		Me._Eins_0.Name = "_Eins_0"
		Me._Eins_0.Size = New System.Drawing.Size(24, 24)
		Me._Eins_0.Visible = False
		' 
		'ASDF
		' 
		Me.AllowDrop = True
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6, 13)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.BackColor = System.Drawing.Color.FromArgb(64, 64, 64)
		Me.ClientSize = New System.Drawing.Size(581, 629)
		Me.Controls.Add(Me.cmdWeiter)
		Me.Controls.Add(Me.Command1)
		Me.Controls.Add(Me.Text1)
		Me.Controls.Add(Me.cmdStart)
		Me.Controls.Add(Me.Player)
		Me.Controls.Add(Me.imgBear)
		Me.Controls.Add(Me.lblPause)
		Me.Controls.Add(Me.lblLevel)
		Me.Controls.Add(Me.lblasdf)
		Me.Controls.Add(Me.lblLinien)
		Me.Controls.Add(Me.Label2)
		Me.Controls.Add(Me.lblVerloren)
		Me.Controls.Add(Me._Fünf_2)
		Me.Controls.Add(Me._Fünf_1)
		Me.Controls.Add(Me._Fünf_0)
		Me.Controls.Add(Me._Vier_2)
		Me.Controls.Add(Me._Vier_1)
		Me.Controls.Add(Me._Vier_0)
		Me.Controls.Add(Me._Drei_3)
		Me.Controls.Add(Me._Drei_2)
		Me.Controls.Add(Me._Drei_1)
		Me.Controls.Add(Me._Drei_0)
		Me.Controls.Add(Me._Zwei_3)
		Me.Controls.Add(Me._Zwei_2)
		Me.Controls.Add(Me._Zwei_1)
		Me.Controls.Add(Me._Zwei_0)
		Me.Controls.Add(Me._Eins_3)
		Me.Controls.Add(Me._Eins_2)
		Me.Controls.Add(Me._Eins_1)
		Me.Controls.Add(Me.Label1)
		Me.Controls.Add(Me._Figur_0)
		Me.Controls.Add(Me.LinRechts)
		Me.Controls.Add(Me.LinUnten)
		Me.Controls.Add(Me.LinLinks)
		Me.Controls.Add(Me._Sieben_0)
		Me.Controls.Add(Me._Sechs_1)
		Me.Controls.Add(Me._Sieben_3)
		Me.Controls.Add(Me._Sechs_2)
		Me.Controls.Add(Me._Sieben_2)
		Me.Controls.Add(Me._Sechs_3)
		Me.Controls.Add(Me._Sechs_0)
		Me.Controls.Add(Me._Sieben_1)
		Me.Controls.Add(Me._Fünf_3)
		Me.Controls.Add(Me._Vier_3)
		Me.Controls.Add(Me._Eins_0)
		Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Location = New System.Drawing.Point(8, 28)
		Me.MaximizeBox = True
		Me.MinimizeBox = True
		Me.Name = "ASDF"
		Me.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Tetris"
		CType(Me.Player, System.ComponentModel.ISupportInitialize).EndInit()
		Me.ResumeLayout(False)
	End Sub
	Sub ReLoadForm(ByVal addEvents As Boolean)
		InitializeZwei()
		InitializeVier()
		InitializeSieben()
		InitializeSechs()
		InitializeFünf()
		InitializeFigur()
		InitializeEins()
		InitializeDrei()
		If addEvents Then
			AddHandler MyBase.Click, AddressOf Me.Form_Click
			AddHandler MyBase.Closed, AddressOf Me.Form_Closed
			AddHandler Me.Activated, AddressOf Me.ASDF_Activated
		End If
	End Sub
	Sub InitializeZwei()
		ReDim Zwei(3)
		Me.Zwei(3) = _Zwei_3
		Me.Zwei(2) = _Zwei_2
		Me.Zwei(1) = _Zwei_1
		Me.Zwei(0) = _Zwei_0
	End Sub
	Sub InitializeVier()
		ReDim Vier(3)
		Me.Vier(2) = _Vier_2
		Me.Vier(1) = _Vier_1
		Me.Vier(0) = _Vier_0
		Me.Vier(3) = _Vier_3
	End Sub
	Sub InitializeSieben()
		ReDim Sieben(3)
		Me.Sieben(0) = _Sieben_0
		Me.Sieben(3) = _Sieben_3
		Me.Sieben(2) = _Sieben_2
		Me.Sieben(1) = _Sieben_1
	End Sub
	Sub InitializeSechs()
		ReDim Sechs(3)
		Me.Sechs(1) = _Sechs_1
		Me.Sechs(2) = _Sechs_2
		Me.Sechs(3) = _Sechs_3
		Me.Sechs(0) = _Sechs_0
	End Sub
	Sub InitializeFünf()
		ReDim Fünf(3)
		Me.Fünf(2) = _Fünf_2
		Me.Fünf(1) = _Fünf_1
		Me.Fünf(0) = _Fünf_0
		Me.Fünf(3) = _Fünf_3
	End Sub
	Sub InitializeFigur()
		ReDim Figur(0)
		Me.Figur(0) = _Figur_0
	End Sub
	Sub InitializeEins()
		ReDim Eins(3)
		Me.Eins(3) = _Eins_3
		Me.Eins(2) = _Eins_2
		Me.Eins(1) = _Eins_1
		Me.Eins(0) = _Eins_0
	End Sub
	Sub InitializeDrei()
		ReDim Drei(3)
		Me.Drei(3) = _Drei_3
		Me.Drei(2) = _Drei_2
		Me.Drei(1) = _Drei_1
		Me.Drei(0) = _Drei_0
	End Sub
#End Region
End Class