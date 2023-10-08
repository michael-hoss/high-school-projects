<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Bastard
#Region "Upgrade Support "
	Private Shared m_vb6FormDefInstance As Bastard
	Private Shared m_InitializingDefInstance As Boolean
	Public Shared Property DefInstance() As Bastard
		Get
			If m_vb6FormDefInstance Is Nothing OrElse m_vb6FormDefInstance.IsDisposed Then
				m_InitializingDefInstance = True
				m_vb6FormDefInstance = CreateInstance()
				m_InitializingDefInstance = False
			End If
			Return m_vb6FormDefInstance
		End Get
		Set(ByVal Value As Bastard)
			m_vb6FormDefInstance = Value
		End Set
	End Property
#End Region
#Region "Windows Form Designer generated code "
	Public Shared Function CreateInstance() As Bastard
		Dim theInstance As New Bastard()
		theInstance.Form_Load()
		Return theInstance
	End Function
	Private visualControls() As String = New String() {"components", "ToolTipMain", "TimerNächstesLevel", "cmdNeuesSpiel", "TimerLebenWeg", "TimerAnfang", "TimerSpiel", "txtEingabe", "imgGewonnen", "imgVerloren", "imgHilfe", "imgNaechstesLevel", "lblLevel", "imgLebenWeg", "_imgLeben_3", "_imgLeben_2", "_imgLeben_1", "linUnten", "linLinks", "_imgWeiss_1", "linRechts", "imgA", "_imgWeiss_0", "_imgHindernis_1", "_imgHindernis_0", "_imgHindernis_2", "imgBonusleben", "_imgHindernis_3", "imgZiel", "imgHindernis", "imgLeben", "imgWeiss", "commandButtonHelper1"}
	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer
	Public ToolTipMain As System.Windows.Forms.ToolTip
	Public WithEvents TimerNächstesLevel As System.Windows.Forms.Timer
	Public WithEvents cmdNeuesSpiel As System.Windows.Forms.Button
	Public WithEvents TimerLebenWeg As System.Windows.Forms.Timer
	Public WithEvents TimerAnfang As System.Windows.Forms.Timer
	Public WithEvents TimerSpiel As System.Windows.Forms.Timer
	Public WithEvents txtEingabe As System.Windows.Forms.TextBox
	Public WithEvents imgGewonnen As System.Windows.Forms.PictureBox
	Public WithEvents imgVerloren As System.Windows.Forms.PictureBox
	Public WithEvents imgHilfe As System.Windows.Forms.PictureBox
	Public WithEvents imgNaechstesLevel As System.Windows.Forms.PictureBox
	Public WithEvents lblLevel As System.Windows.Forms.Label
	Public WithEvents imgLebenWeg As System.Windows.Forms.PictureBox
	Private WithEvents _imgLeben_3 As System.Windows.Forms.PictureBox
	Private WithEvents _imgLeben_2 As System.Windows.Forms.PictureBox
	Private WithEvents _imgLeben_1 As System.Windows.Forms.PictureBox
	Public WithEvents linUnten As System.Windows.Forms.Label
	Public WithEvents linLinks As System.Windows.Forms.Label
	Private WithEvents _imgWeiss_1 As System.Windows.Forms.PictureBox
	Public WithEvents linRechts As System.Windows.Forms.Label
	Public WithEvents imgA As System.Windows.Forms.PictureBox
	Private WithEvents _imgWeiss_0 As System.Windows.Forms.PictureBox
	Private WithEvents _imgHindernis_1 As System.Windows.Forms.PictureBox
	Private WithEvents _imgHindernis_0 As System.Windows.Forms.PictureBox
	Private WithEvents _imgHindernis_2 As System.Windows.Forms.PictureBox
	Public WithEvents imgBonusleben As System.Windows.Forms.PictureBox
	Private WithEvents _imgHindernis_3 As System.Windows.Forms.PictureBox
	Public WithEvents imgZiel As System.Windows.Forms.PictureBox
	Public imgHindernis(3) As System.Windows.Forms.PictureBox
	Public imgLeben(3) As System.Windows.Forms.PictureBox
	Public imgWeiss(1) As System.Windows.Forms.PictureBox
	Public commandButtonHelper1 As UpgradeHelpers.Gui.Controls.CommandButtonHelper
	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()>
	Private Sub InitializeComponent()
		Me.components = New System.ComponentModel.Container()
		Dim resources As New System.ComponentModel.ComponentResourceManager(GetType(Bastard))
		Me.ToolTipMain = New System.Windows.Forms.ToolTip(Me.components)
		Me.TimerNächstesLevel = New System.Windows.Forms.Timer(components)
		Me.cmdNeuesSpiel = New System.Windows.Forms.Button()
		Me.TimerLebenWeg = New System.Windows.Forms.Timer(components)
		Me.TimerAnfang = New System.Windows.Forms.Timer(components)
		Me.TimerSpiel = New System.Windows.Forms.Timer(components)
		Me.txtEingabe = New System.Windows.Forms.TextBox()
		Me.imgGewonnen = New System.Windows.Forms.PictureBox()
		Me.imgVerloren = New System.Windows.Forms.PictureBox()
		Me.imgHilfe = New System.Windows.Forms.PictureBox()
		Me.imgNaechstesLevel = New System.Windows.Forms.PictureBox()
		Me.lblLevel = New System.Windows.Forms.Label()
		Me.imgLebenWeg = New System.Windows.Forms.PictureBox()
		Me._imgLeben_3 = New System.Windows.Forms.PictureBox()
		Me._imgLeben_2 = New System.Windows.Forms.PictureBox()
		Me._imgLeben_1 = New System.Windows.Forms.PictureBox()
		Me.linUnten = New System.Windows.Forms.Label()
		Me.linLinks = New System.Windows.Forms.Label()
		Me._imgWeiss_1 = New System.Windows.Forms.PictureBox()
		Me.linRechts = New System.Windows.Forms.Label()
		Me.imgA = New System.Windows.Forms.PictureBox()
		Me._imgWeiss_0 = New System.Windows.Forms.PictureBox()
		Me._imgHindernis_1 = New System.Windows.Forms.PictureBox()
		Me._imgHindernis_0 = New System.Windows.Forms.PictureBox()
		Me._imgHindernis_2 = New System.Windows.Forms.PictureBox()
		Me.imgBonusleben = New System.Windows.Forms.PictureBox()
		Me._imgHindernis_3 = New System.Windows.Forms.PictureBox()
		Me.imgZiel = New System.Windows.Forms.PictureBox()
		Me.SuspendLayout()
		Me.commandButtonHelper1 = New UpgradeHelpers.Gui.Controls.CommandButtonHelper(Me.components)
		' 
		'TimerNächstesLevel
		' 
		Me.TimerNächstesLevel.Enabled = False
		Me.TimerNächstesLevel.Interval = 2000
		' 
		'cmdNeuesSpiel
		' 
		Me.cmdNeuesSpiel.AllowDrop = True
		Me.cmdNeuesSpiel.BackColor = System.Drawing.SystemColors.Control
		Me.cmdNeuesSpiel.Font = New System.Drawing.Font("Comic Sans MS", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.cmdNeuesSpiel.ForeColor = System.Drawing.SystemColors.ControlText
		Me.cmdNeuesSpiel.Location = New System.Drawing.Point(672, 624)
		Me.cmdNeuesSpiel.Name = "cmdNeuesSpiel"
		Me.cmdNeuesSpiel.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.cmdNeuesSpiel.Size = New System.Drawing.Size(201, 81)
		Me.cmdNeuesSpiel.TabIndex = 1
		Me.cmdNeuesSpiel.Text = "&Neues Spiel"
		Me.cmdNeuesSpiel.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me.cmdNeuesSpiel.UseVisualStyleBackColor = False
		' 
		'TimerLebenWeg
		' 
		Me.TimerLebenWeg.Enabled = False
		Me.TimerLebenWeg.Interval = 1000
		' 
		'TimerAnfang
		' 
		Me.TimerAnfang.Enabled = False
		Me.TimerAnfang.Interval = 20
		' 
		'TimerSpiel
		' 
		Me.TimerSpiel.Enabled = False
		Me.TimerSpiel.Interval = 20
		' 
		'txtEingabe
		' 
		Me.txtEingabe.AcceptsReturn = True
		Me.txtEingabe.AllowDrop = True
		Me.txtEingabe.BackColor = System.Drawing.SystemColors.Window
		Me.txtEingabe.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
		Me.txtEingabe.Cursor = System.Windows.Forms.Cursors.IBeam
		Me.txtEingabe.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.txtEingabe.ForeColor = System.Drawing.SystemColors.WindowText
		Me.txtEingabe.Location = New System.Drawing.Point(5667, 5592)
		Me.txtEingabe.MaxLength = 0
		Me.txtEingabe.Name = "txtEingabe"
		Me.txtEingabe.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.txtEingabe.Size = New System.Drawing.Size(121, 57)
		Me.txtEingabe.TabIndex = 0
		Me.txtEingabe.Text = "Text1"
		' 
		'imgGewonnen
		' 
		Me.imgGewonnen.AllowDrop = True
		Me.imgGewonnen.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgGewonnen.Enabled = True
		Me.imgGewonnen.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgGewonnen.Image = CType(resources.GetObject("imgGewonnen.Image"), System.Drawing.Image)
		Me.imgGewonnen.Location = New System.Drawing.Point(136, 376)
		Me.imgGewonnen.Name = "imgGewonnen"
		Me.imgGewonnen.Size = New System.Drawing.Size(338, 450)
		Me.imgGewonnen.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgGewonnen.Visible = False
		' 
		'imgVerloren
		' 
		Me.imgVerloren.AllowDrop = True
		Me.imgVerloren.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgVerloren.Enabled = True
		Me.imgVerloren.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgVerloren.Image = CType(resources.GetObject("imgVerloren.Image"), System.Drawing.Image)
		Me.imgVerloren.Location = New System.Drawing.Point(432, 536)
		Me.imgVerloren.Name = "imgVerloren"
		Me.imgVerloren.Size = New System.Drawing.Size(797, 375)
		Me.imgVerloren.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgVerloren.Visible = False
		' 
		'imgHilfe
		' 
		Me.imgHilfe.AllowDrop = True
		Me.imgHilfe.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgHilfe.Enabled = True
		Me.imgHilfe.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgHilfe.Image = CType(resources.GetObject("imgHilfe.Image"), System.Drawing.Image)
		Me.imgHilfe.Location = New System.Drawing.Point(568, 304)
		Me.imgHilfe.Name = "imgHilfe"
		Me.imgHilfe.Size = New System.Drawing.Size(198, 138)
		Me.imgHilfe.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgHilfe.Visible = False
		' 
		'imgNaechstesLevel
		' 
		Me.imgNaechstesLevel.AllowDrop = True
		Me.imgNaechstesLevel.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgNaechstesLevel.Enabled = True
		Me.imgNaechstesLevel.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgNaechstesLevel.Image = CType(resources.GetObject("imgNaechstesLevel.Image"), System.Drawing.Image)
		Me.imgNaechstesLevel.Location = New System.Drawing.Point(520, 544)
		Me.imgNaechstesLevel.Name = "imgNaechstesLevel"
		Me.imgNaechstesLevel.Size = New System.Drawing.Size(797, 375)
		Me.imgNaechstesLevel.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgNaechstesLevel.Visible = False
		' 
		'lblLevel
		' 
		Me.lblLevel.AllowDrop = True
		Me.lblLevel.BackColor = System.Drawing.Color.White
		Me.lblLevel.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblLevel.Font = New System.Drawing.Font("Comic Sans MS", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblLevel.ForeColor = System.Drawing.SystemColors.ControlText
		Me.lblLevel.Location = New System.Drawing.Point(392, 640)
		Me.lblLevel.Name = "lblLevel"
		Me.lblLevel.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblLevel.Size = New System.Drawing.Size(350, 81)
		Me.lblLevel.TabIndex = 2
		' 
		'imgLebenWeg
		' 
		Me.imgLebenWeg.AllowDrop = True
		Me.imgLebenWeg.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgLebenWeg.Enabled = True
		Me.imgLebenWeg.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgLebenWeg.Image = CType(resources.GetObject("imgLebenWeg.Image"), System.Drawing.Image)
		Me.imgLebenWeg.Location = New System.Drawing.Point(496, 504)
		Me.imgLebenWeg.Name = "imgLebenWeg"
		Me.imgLebenWeg.Size = New System.Drawing.Size(797, 375)
		Me.imgLebenWeg.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgLebenWeg.Visible = False
		' 
		'_imgLeben_3
		' 
		Me._imgLeben_3.AllowDrop = True
		Me._imgLeben_3.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgLeben_3.Enabled = True
		Me._imgLeben_3.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgLeben_3.Image = CType(resources.GetObject("_imgLeben_3.Image"), System.Drawing.Image)
		Me._imgLeben_3.Location = New System.Drawing.Point(248, 632)
		Me._imgLeben_3.Name = "_imgLeben_3"
		Me._imgLeben_3.Size = New System.Drawing.Size(70, 78)
		Me._imgLeben_3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgLeben_3.Visible = False
		' 
		'_imgLeben_2
		' 
		Me._imgLeben_2.AllowDrop = True
		Me._imgLeben_2.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgLeben_2.Enabled = True
		Me._imgLeben_2.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgLeben_2.Image = CType(resources.GetObject("_imgLeben_2.Image"), System.Drawing.Image)
		Me._imgLeben_2.Location = New System.Drawing.Point(160, 632)
		Me._imgLeben_2.Name = "_imgLeben_2"
		Me._imgLeben_2.Size = New System.Drawing.Size(70, 78)
		Me._imgLeben_2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgLeben_2.Visible = False
		' 
		'_imgLeben_1
		' 
		Me._imgLeben_1.AllowDrop = True
		Me._imgLeben_1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgLeben_1.Enabled = True
		Me._imgLeben_1.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgLeben_1.Image = CType(resources.GetObject("_imgLeben_1.Image"), System.Drawing.Image)
		Me._imgLeben_1.Location = New System.Drawing.Point(72, 632)
		Me._imgLeben_1.Name = "_imgLeben_1"
		Me._imgLeben_1.Size = New System.Drawing.Size(70, 78)
		Me._imgLeben_1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgLeben_1.Visible = False
		' 
		'linUnten
		' 
		Me.linUnten.AllowDrop = True
		Me.linUnten.BackColor = System.Drawing.SystemColors.WindowText
		Me.linUnten.Enabled = False
		Me.linUnten.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.linUnten.Location = New System.Drawing.Point(64, 616)
		Me.linUnten.Name = "linUnten"
		Me.linUnten.Size = New System.Drawing.Size(1136, 5)
		Me.linUnten.Visible = True
		' 
		'linLinks
		' 
		Me.linLinks.AllowDrop = True
		Me.linLinks.BackColor = System.Drawing.SystemColors.WindowText
		Me.linLinks.Enabled = False
		Me.linLinks.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.linLinks.Location = New System.Drawing.Point(64, 240)
		Me.linLinks.Name = "linLinks"
		Me.linLinks.Size = New System.Drawing.Size(5, 376)
		Me.linLinks.Visible = True
		' 
		'_imgWeiss_1
		' 
		Me._imgWeiss_1.AllowDrop = True
		Me._imgWeiss_1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgWeiss_1.Enabled = True
		Me._imgWeiss_1.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgWeiss_1.Image = CType(resources.GetObject("_imgWeiss_1.Image"), System.Drawing.Image)
		Me._imgWeiss_1.Location = New System.Drawing.Point(856, 80)
		Me._imgWeiss_1.Name = "_imgWeiss_1"
		Me._imgWeiss_1.Size = New System.Drawing.Size(57, 88)
		Me._imgWeiss_1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		Me._imgWeiss_1.Visible = True
		' 
		'linRechts
		' 
		Me.linRechts.AllowDrop = True
		Me.linRechts.BackColor = System.Drawing.SystemColors.WindowText
		Me.linRechts.Enabled = False
		Me.linRechts.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.linRechts.Location = New System.Drawing.Point(1200, 240)
		Me.linRechts.Name = "linRechts"
		Me.linRechts.Size = New System.Drawing.Size(5, 376)
		Me.linRechts.Visible = True
		' 
		'imgA
		' 
		Me.imgA.AllowDrop = True
		Me.imgA.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgA.Enabled = True
		Me.imgA.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgA.Image = CType(resources.GetObject("imgA.Image"), System.Drawing.Image)
		Me.imgA.Location = New System.Drawing.Point(80, -400)
		Me.imgA.Name = "imgA"
		Me.imgA.Size = New System.Drawing.Size(88, 228)
		Me.imgA.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		Me.imgA.Visible = True
		' 
		'_imgWeiss_0
		' 
		Me._imgWeiss_0.AllowDrop = True
		Me._imgWeiss_0.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgWeiss_0.Enabled = True
		Me._imgWeiss_0.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgWeiss_0.Image = CType(resources.GetObject("_imgWeiss_0.Image"), System.Drawing.Image)
		Me._imgWeiss_0.Location = New System.Drawing.Point(776, 80)
		Me._imgWeiss_0.Name = "_imgWeiss_0"
		Me._imgWeiss_0.Size = New System.Drawing.Size(57, 88)
		Me._imgWeiss_0.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		Me._imgWeiss_0.Visible = True
		' 
		'_imgHindernis_1
		' 
		Me._imgHindernis_1.AllowDrop = True
		Me._imgHindernis_1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgHindernis_1.Enabled = True
		Me._imgHindernis_1.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgHindernis_1.Image = CType(resources.GetObject("_imgHindernis_1.Image"), System.Drawing.Image)
		Me._imgHindernis_1.Location = New System.Drawing.Point(320, 80)
		Me._imgHindernis_1.Name = "_imgHindernis_1"
		Me._imgHindernis_1.Size = New System.Drawing.Size(85, 64)
		Me._imgHindernis_1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		Me._imgHindernis_1.Visible = True
		' 
		'_imgHindernis_0
		' 
		Me._imgHindernis_0.AllowDrop = True
		Me._imgHindernis_0.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgHindernis_0.Enabled = True
		Me._imgHindernis_0.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgHindernis_0.Image = CType(resources.GetObject("_imgHindernis_0.Image"), System.Drawing.Image)
		Me._imgHindernis_0.Location = New System.Drawing.Point(232, 80)
		Me._imgHindernis_0.Name = "_imgHindernis_0"
		Me._imgHindernis_0.Size = New System.Drawing.Size(67, 68)
		Me._imgHindernis_0.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgHindernis_0.Visible = True
		' 
		'_imgHindernis_2
		' 
		Me._imgHindernis_2.AllowDrop = True
		Me._imgHindernis_2.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgHindernis_2.Enabled = True
		Me._imgHindernis_2.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgHindernis_2.Image = CType(resources.GetObject("_imgHindernis_2.Image"), System.Drawing.Image)
		Me._imgHindernis_2.Location = New System.Drawing.Point(424, 80)
		Me._imgHindernis_2.Name = "_imgHindernis_2"
		Me._imgHindernis_2.Size = New System.Drawing.Size(178, 180)
		Me._imgHindernis_2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgHindernis_2.Visible = True
		' 
		'imgBonusleben
		' 
		Me.imgBonusleben.AllowDrop = True
		Me.imgBonusleben.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgBonusleben.Enabled = True
		Me.imgBonusleben.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgBonusleben.Image = CType(resources.GetObject("imgBonusleben.Image"), System.Drawing.Image)
		Me.imgBonusleben.Location = New System.Drawing.Point(64, 120)
		Me.imgBonusleben.Name = "imgBonusleben"
		Me.imgBonusleben.Size = New System.Drawing.Size(160, 192)
		Me.imgBonusleben.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgBonusleben.Visible = False
		' 
		'_imgHindernis_3
		' 
		Me._imgHindernis_3.AllowDrop = True
		Me._imgHindernis_3.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me._imgHindernis_3.Enabled = True
		Me._imgHindernis_3.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._imgHindernis_3.Image = CType(resources.GetObject("_imgHindernis_3.Image"), System.Drawing.Image)
		Me._imgHindernis_3.Location = New System.Drawing.Point(280, 224)
		Me._imgHindernis_3.Name = "_imgHindernis_3"
		Me._imgHindernis_3.Size = New System.Drawing.Size(253, 221)
		Me._imgHindernis_3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me._imgHindernis_3.Visible = True
		' 
		'imgZiel
		' 
		Me.imgZiel.AllowDrop = True
		Me.imgZiel.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.imgZiel.Enabled = True
		Me.imgZiel.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.imgZiel.Image = CType(resources.GetObject("imgZiel.Image"), System.Drawing.Image)
		Me.imgZiel.Location = New System.Drawing.Point(664, 240)
		Me.imgZiel.Name = "imgZiel"
		Me.imgZiel.Size = New System.Drawing.Size(295, 183)
		Me.imgZiel.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.imgZiel.Visible = False
		' 
		'Bastard
		' 
		Me.AllowDrop = True
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6, 15)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.BackColor = System.Drawing.Color.White
		Me.BackgroundImage = CType(resources.GetObject("Bastard.BackgroundImage"), System.Drawing.Image)
		Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
		Me.ClientSize = New System.Drawing.Size(935, 628)
		Me.Controls.Add(Me.cmdNeuesSpiel)
		Me.Controls.Add(Me.txtEingabe)
		Me.Controls.Add(Me.imgGewonnen)
		Me.Controls.Add(Me.imgVerloren)
		Me.Controls.Add(Me.imgHilfe)
		Me.Controls.Add(Me.imgNaechstesLevel)
		Me.Controls.Add(Me.lblLevel)
		Me.Controls.Add(Me.imgLebenWeg)
		Me.Controls.Add(Me._imgLeben_3)
		Me.Controls.Add(Me._imgLeben_2)
		Me.Controls.Add(Me._imgLeben_1)
		Me.Controls.Add(Me.linUnten)
		Me.Controls.Add(Me.linLinks)
		Me.Controls.Add(Me._imgWeiss_1)
		Me.Controls.Add(Me.linRechts)
		Me.Controls.Add(Me.imgA)
		Me.Controls.Add(Me._imgWeiss_0)
		Me.Controls.Add(Me._imgHindernis_1)
		Me.Controls.Add(Me._imgHindernis_0)
		Me.Controls.Add(Me._imgHindernis_2)
		Me.Controls.Add(Me.imgBonusleben)
		Me.Controls.Add(Me._imgHindernis_3)
		Me.Controls.Add(Me.imgZiel)
		Me.Font = New System.Drawing.Font("Comic Sans MS", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Location = New System.Drawing.Point(8, 28)
		Me.MaximizeBox = True
		Me.MinimizeBox = True
		Me.Name = "Bastard"
		Me.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Text = "Billiges Jump and Run von Micha"
		Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
		Me.ResumeLayout(False)
	End Sub
	Sub ReLoadForm(ByVal addEvents As Boolean)
		InitializeimgWeiss()
		InitializeimgLeben()
		InitializeimgHindernis()
		If addEvents Then
			AddHandler MyBase.Click, AddressOf Me.Form_Click
			AddHandler MyBase.Resize, AddressOf Me.Form_Resize
			AddHandler Me.Activated, AddressOf Me.Bastard_Activated
		End If
	End Sub
	Sub InitializeimgWeiss()
		ReDim imgWeiss(1)
		Me.imgWeiss(1) = _imgWeiss_1
		Me.imgWeiss(0) = _imgWeiss_0
	End Sub
	Sub InitializeimgLeben()
		ReDim imgLeben(3)
		Me.imgLeben(3) = _imgLeben_3
		Me.imgLeben(2) = _imgLeben_2
		Me.imgLeben(1) = _imgLeben_1
	End Sub
	Sub InitializeimgHindernis()
		ReDim imgHindernis(3)
		Me.imgHindernis(1) = _imgHindernis_1
		Me.imgHindernis(0) = _imgHindernis_0
		Me.imgHindernis(2) = _imgHindernis_2
		Me.imgHindernis(3) = _imgHindernis_3
	End Sub
#End Region
End Class