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
    Public ToolTipMain As ToolTip
    Public WithEvents TimerNächstesLevel As Timer
    Public WithEvents cmdNeuesSpiel As Button
    Public WithEvents TimerLebenWeg As Timer
    Public WithEvents TimerAnfang As Timer
    Public WithEvents TimerSpiel As Timer
    Public WithEvents txtEingabe As TextBox
    Public WithEvents imgGewonnen As PictureBox
    Public WithEvents imgVerloren As PictureBox
    Public WithEvents imgHilfe As PictureBox
    Public WithEvents imgNaechstesLevel As PictureBox
    Public WithEvents lblLevel As Label
    Public WithEvents imgLebenWeg As PictureBox
    Private WithEvents _imgLeben_3 As PictureBox
    Private WithEvents _imgLeben_2 As PictureBox
    Private WithEvents _imgLeben_1 As PictureBox
    Public WithEvents linUnten As Label
    Public WithEvents linLinks As Label
    Private WithEvents _imgWeiss_1 As PictureBox
    Public WithEvents linRechts As Label
    Public WithEvents imgA As PictureBox
    Private WithEvents _imgWeiss_0 As PictureBox
    Private WithEvents _imgHindernis_1 As PictureBox
    Private WithEvents _imgHindernis_0 As PictureBox
    Private WithEvents _imgHindernis_2 As PictureBox
    Public WithEvents imgBonusleben As PictureBox
    Private WithEvents _imgHindernis_3 As PictureBox
    Public WithEvents imgZiel As PictureBox
    Public imgHindernis(3) As PictureBox
    Public imgLeben(3) As PictureBox
    Public imgWeiss(1) As PictureBox
    Public commandButtonHelper1 As UpgradeHelpers.Gui.Controls.CommandButtonHelper
    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        components = New ComponentModel.Container()
        Dim resources As ComponentModel.ComponentResourceManager = New ComponentModel.ComponentResourceManager(GetType(Bastard))
        ToolTipMain = New ToolTip(components)
        TimerNächstesLevel = New Timer(components)
        cmdNeuesSpiel = New Button()
        TimerLebenWeg = New Timer(components)
        TimerAnfang = New Timer(components)
        TimerSpiel = New Timer(components)
        txtEingabe = New TextBox()
        imgGewonnen = New PictureBox()
        imgVerloren = New PictureBox()
        imgHilfe = New PictureBox()
        imgNaechstesLevel = New PictureBox()
        lblLevel = New Label()
        imgLebenWeg = New PictureBox()
        _imgLeben_3 = New PictureBox()
        _imgLeben_2 = New PictureBox()
        _imgLeben_1 = New PictureBox()
        linUnten = New Label()
        linLinks = New Label()
        _imgWeiss_1 = New PictureBox()
        linRechts = New Label()
        imgA = New PictureBox()
        _imgWeiss_0 = New PictureBox()
        _imgHindernis_1 = New PictureBox()
        _imgHindernis_0 = New PictureBox()
        _imgHindernis_2 = New PictureBox()
        imgBonusleben = New PictureBox()
        _imgHindernis_3 = New PictureBox()
        imgZiel = New PictureBox()
        commandButtonHelper1 = New UpgradeHelpers.Gui.Controls.CommandButtonHelper(components)
        CType(imgGewonnen, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgVerloren, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgHilfe, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgNaechstesLevel, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgLebenWeg, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgLeben_3, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgLeben_2, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgLeben_1, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgWeiss_1, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgA, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgWeiss_0, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgHindernis_1, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgHindernis_0, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgHindernis_2, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgBonusleben, ComponentModel.ISupportInitialize).BeginInit()
        CType(_imgHindernis_3, ComponentModel.ISupportInitialize).BeginInit()
        CType(imgZiel, ComponentModel.ISupportInitialize).BeginInit()
        CType(commandButtonHelper1, ComponentModel.ISupportInitialize).BeginInit()
        SuspendLayout()
        ' 
        ' TimerNächstesLevel
        ' 
        TimerNächstesLevel.Interval = 2000
        ' 
        ' cmdNeuesSpiel
        ' 
        cmdNeuesSpiel.AllowDrop = True
        cmdNeuesSpiel.BackColor = SystemColors.Control
        commandButtonHelper1.SetCorrectEventsBehavior(cmdNeuesSpiel, True)
        commandButtonHelper1.SetDisabledPicture(cmdNeuesSpiel, Nothing)
        commandButtonHelper1.SetDownPicture(cmdNeuesSpiel, Nothing)
        cmdNeuesSpiel.Font = New Font("Comic Sans MS", 18.0F, FontStyle.Regular, GraphicsUnit.Point)
        cmdNeuesSpiel.ForeColor = SystemColors.ControlText
        cmdNeuesSpiel.Location = New Point(672, 624)
        commandButtonHelper1.SetMaskColor(cmdNeuesSpiel, Color.Silver)
        cmdNeuesSpiel.Name = "cmdNeuesSpiel"
        cmdNeuesSpiel.RightToLeft = RightToLeft.No
        cmdNeuesSpiel.Size = New Size(201, 81)
        commandButtonHelper1.SetStyle(cmdNeuesSpiel, 0)
        cmdNeuesSpiel.TabIndex = 1
        cmdNeuesSpiel.Text = "&Neues Spiel"
        cmdNeuesSpiel.TextImageRelation = TextImageRelation.ImageAboveText
        cmdNeuesSpiel.UseVisualStyleBackColor = False
        ' 
        ' TimerLebenWeg
        ' 
        TimerLebenWeg.Interval = 1000
        ' 
        ' TimerAnfang
        ' 
        TimerAnfang.Interval = 20
        ' 
        ' TimerSpiel
        ' 
        TimerSpiel.Interval = 20
        ' 
        ' txtEingabe
        ' 
        txtEingabe.AcceptsReturn = True
        txtEingabe.AllowDrop = True
        txtEingabe.BackColor = SystemColors.Window
        txtEingabe.Cursor = Cursors.IBeam
        txtEingabe.Font = New Font("Microsoft Sans Serif", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        txtEingabe.ForeColor = SystemColors.WindowText
        txtEingabe.Location = New Point(5667, 5592)
        txtEingabe.MaxLength = 0
        txtEingabe.Name = "txtEingabe"
        txtEingabe.RightToLeft = RightToLeft.No
        txtEingabe.Size = New Size(121, 20)
        txtEingabe.TabIndex = 0
        txtEingabe.Text = "Text1"
        ' 
        ' imgGewonnen
        ' 
        imgGewonnen.AllowDrop = True
        imgGewonnen.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgGewonnen.Image = CType(resources.GetObject("imgGewonnen.Image"), Image)
        imgGewonnen.Location = New Point(136, 376)
        imgGewonnen.Name = "imgGewonnen"
        imgGewonnen.Size = New Size(338, 450)
        imgGewonnen.TabIndex = 2
        imgGewonnen.TabStop = False
        imgGewonnen.Visible = False
        ' 
        ' imgVerloren
        ' 
        imgVerloren.AllowDrop = True
        imgVerloren.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgVerloren.Image = CType(resources.GetObject("imgVerloren.Image"), Image)
        imgVerloren.Location = New Point(432, 536)
        imgVerloren.Name = "imgVerloren"
        imgVerloren.Size = New Size(797, 375)
        imgVerloren.TabIndex = 3
        imgVerloren.TabStop = False
        imgVerloren.Visible = False
        ' 
        ' imgHilfe
        ' 
        imgHilfe.AllowDrop = True
        imgHilfe.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgHilfe.Image = CType(resources.GetObject("imgHilfe.Image"), Image)
        imgHilfe.Location = New Point(568, 304)
        imgHilfe.Name = "imgHilfe"
        imgHilfe.Size = New Size(198, 138)
        imgHilfe.TabIndex = 4
        imgHilfe.TabStop = False
        imgHilfe.Visible = False
        ' 
        ' imgNaechstesLevel
        ' 
        imgNaechstesLevel.AllowDrop = True
        imgNaechstesLevel.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgNaechstesLevel.Image = CType(resources.GetObject("imgNaechstesLevel.Image"), Image)
        imgNaechstesLevel.Location = New Point(520, 544)
        imgNaechstesLevel.Name = "imgNaechstesLevel"
        imgNaechstesLevel.Size = New Size(797, 375)
        imgNaechstesLevel.TabIndex = 5
        imgNaechstesLevel.TabStop = False
        imgNaechstesLevel.Visible = False
        ' 
        ' lblLevel
        ' 
        lblLevel.AllowDrop = True
        lblLevel.BackColor = Color.White
        lblLevel.Font = New Font("Comic Sans MS", 36.0F, FontStyle.Regular, GraphicsUnit.Point)
        lblLevel.ForeColor = SystemColors.ControlText
        lblLevel.Location = New Point(392, 640)
        lblLevel.Name = "lblLevel"
        lblLevel.RightToLeft = RightToLeft.No
        lblLevel.Size = New Size(350, 81)
        lblLevel.TabIndex = 2
        ' 
        ' imgLebenWeg
        ' 
        imgLebenWeg.AllowDrop = True
        imgLebenWeg.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgLebenWeg.Image = CType(resources.GetObject("imgLebenWeg.Image"), Image)
        imgLebenWeg.Location = New Point(496, 504)
        imgLebenWeg.Name = "imgLebenWeg"
        imgLebenWeg.Size = New Size(797, 375)
        imgLebenWeg.TabIndex = 6
        imgLebenWeg.TabStop = False
        imgLebenWeg.Visible = False
        ' 
        ' _imgLeben_3
        ' 
        _imgLeben_3.AllowDrop = True
        _imgLeben_3.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgLeben_3.Image = CType(resources.GetObject("_imgLeben_3.Image"), Image)
        _imgLeben_3.Location = New Point(248, 632)
        _imgLeben_3.Name = "_imgLeben_3"
        _imgLeben_3.Size = New Size(70, 78)
        _imgLeben_3.TabIndex = 7
        _imgLeben_3.TabStop = False
        _imgLeben_3.Visible = False
        ' 
        ' _imgLeben_2
        ' 
        _imgLeben_2.AllowDrop = True
        _imgLeben_2.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgLeben_2.Image = CType(resources.GetObject("_imgLeben_2.Image"), Image)
        _imgLeben_2.Location = New Point(160, 632)
        _imgLeben_2.Name = "_imgLeben_2"
        _imgLeben_2.Size = New Size(70, 78)
        _imgLeben_2.TabIndex = 8
        _imgLeben_2.TabStop = False
        _imgLeben_2.Visible = False
        ' 
        ' _imgLeben_1
        ' 
        _imgLeben_1.AllowDrop = True
        _imgLeben_1.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgLeben_1.Image = CType(resources.GetObject("_imgLeben_1.Image"), Image)
        _imgLeben_1.Location = New Point(72, 632)
        _imgLeben_1.Name = "_imgLeben_1"
        _imgLeben_1.Size = New Size(70, 78)
        _imgLeben_1.TabIndex = 9
        _imgLeben_1.TabStop = False
        _imgLeben_1.Visible = False
        ' 
        ' linUnten
        ' 
        linUnten.AllowDrop = True
        linUnten.BackColor = SystemColors.WindowText
        linUnten.Enabled = False
        linUnten.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        linUnten.Location = New Point(64, 616)
        linUnten.Name = "linUnten"
        linUnten.Size = New Size(1136, 5)
        linUnten.TabIndex = 10
        ' 
        ' linLinks
        ' 
        linLinks.AllowDrop = True
        linLinks.BackColor = SystemColors.WindowText
        linLinks.Enabled = False
        linLinks.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        linLinks.Location = New Point(64, 240)
        linLinks.Name = "linLinks"
        linLinks.Size = New Size(5, 376)
        linLinks.TabIndex = 11
        ' 
        ' _imgWeiss_1
        ' 
        _imgWeiss_1.AllowDrop = True
        _imgWeiss_1.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgWeiss_1.Image = CType(resources.GetObject("_imgWeiss_1.Image"), Image)
        _imgWeiss_1.Location = New Point(856, 0)
        _imgWeiss_1.Name = "_imgWeiss_1"
        _imgWeiss_1.Size = New Size(57, 88)
        _imgWeiss_1.SizeMode = PictureBoxSizeMode.StretchImage
        _imgWeiss_1.TabIndex = 12
        _imgWeiss_1.TabStop = False
        ' 
        ' linRechts
        ' 
        linRechts.AllowDrop = True
        linRechts.BackColor = SystemColors.WindowText
        linRechts.Enabled = False
        linRechts.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        linRechts.Location = New Point(1200, 240)
        linRechts.Name = "linRechts"
        linRechts.Size = New Size(5, 376)
        linRechts.TabIndex = 13
        ' 
        ' imgA
        ' 
        imgA.AllowDrop = True
        imgA.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgA.Image = CType(resources.GetObject("imgA.Image"), Image)
        imgA.Location = New Point(80, -400)
        imgA.Name = "imgA"
        imgA.Size = New Size(88, 228)
        imgA.SizeMode = PictureBoxSizeMode.StretchImage
        imgA.TabIndex = 14
        imgA.TabStop = False
        ' 
        ' _imgWeiss_0
        ' 
        _imgWeiss_0.AllowDrop = True
        _imgWeiss_0.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgWeiss_0.Image = CType(resources.GetObject("_imgWeiss_0.Image"), Image)
        _imgWeiss_0.Location = New Point(776, 0)
        _imgWeiss_0.Name = "_imgWeiss_0"
        _imgWeiss_0.Size = New Size(57, 88)
        _imgWeiss_0.SizeMode = PictureBoxSizeMode.StretchImage
        _imgWeiss_0.TabIndex = 15
        _imgWeiss_0.TabStop = False
        ' 
        ' _imgHindernis_1
        ' 
        _imgHindernis_1.AllowDrop = True
        _imgHindernis_1.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgHindernis_1.Image = CType(resources.GetObject("_imgHindernis_1.Image"), Image)
        _imgHindernis_1.Location = New Point(320, 80)
        _imgHindernis_1.Name = "_imgHindernis_1"
        _imgHindernis_1.Size = New Size(85, 64)
        _imgHindernis_1.SizeMode = PictureBoxSizeMode.StretchImage
        _imgHindernis_1.TabIndex = 16
        _imgHindernis_1.TabStop = False
        ' 
        ' _imgHindernis_0
        ' 
        _imgHindernis_0.AllowDrop = True
        _imgHindernis_0.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgHindernis_0.Image = CType(resources.GetObject("_imgHindernis_0.Image"), Image)
        _imgHindernis_0.Location = New Point(232, 80)
        _imgHindernis_0.Name = "_imgHindernis_0"
        _imgHindernis_0.Size = New Size(67, 68)
        _imgHindernis_0.TabIndex = 17
        _imgHindernis_0.TabStop = False
        ' 
        ' _imgHindernis_2
        ' 
        _imgHindernis_2.AllowDrop = True
        _imgHindernis_2.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgHindernis_2.Image = CType(resources.GetObject("_imgHindernis_2.Image"), Image)
        _imgHindernis_2.Location = New Point(424, 80)
        _imgHindernis_2.Name = "_imgHindernis_2"
        _imgHindernis_2.Size = New Size(178, 180)
        _imgHindernis_2.TabIndex = 18
        _imgHindernis_2.TabStop = False
        ' 
        ' imgBonusleben
        ' 
        imgBonusleben.AllowDrop = True
        imgBonusleben.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgBonusleben.Image = CType(resources.GetObject("imgBonusleben.Image"), Image)
        imgBonusleben.Location = New Point(64, 120)
        imgBonusleben.Name = "imgBonusleben"
        imgBonusleben.Size = New Size(160, 192)
        imgBonusleben.TabIndex = 19
        imgBonusleben.TabStop = False
        imgBonusleben.Visible = False
        ' 
        ' _imgHindernis_3
        ' 
        _imgHindernis_3.AllowDrop = True
        _imgHindernis_3.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        _imgHindernis_3.Image = CType(resources.GetObject("_imgHindernis_3.Image"), Image)
        _imgHindernis_3.Location = New Point(280, 224)
        _imgHindernis_3.Name = "_imgHindernis_3"
        _imgHindernis_3.Size = New Size(253, 221)
        _imgHindernis_3.TabIndex = 20
        _imgHindernis_3.TabStop = False
        ' 
        ' imgZiel
        ' 
        imgZiel.AllowDrop = True
        imgZiel.Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        imgZiel.Image = CType(resources.GetObject("imgZiel.Image"), Image)
        imgZiel.Location = New Point(664, 240)
        imgZiel.Name = "imgZiel"
        imgZiel.Size = New Size(295, 183)
        imgZiel.TabIndex = 21
        imgZiel.TabStop = False
        imgZiel.Visible = False
        ' 
        ' Bastard
        ' 
        AllowDrop = True
        AutoScaleDimensions = New SizeF(7.0F, 15.0F)
        AutoScaleMode = AutoScaleMode.Font
        BackColor = Color.White
        BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), Image)
        BackgroundImageLayout = ImageLayout.None
        ClientSize = New Size(935, 773)
        Controls.Add(cmdNeuesSpiel)
        Controls.Add(txtEingabe)
        Controls.Add(imgGewonnen)
        Controls.Add(imgVerloren)
        Controls.Add(imgHilfe)
        Controls.Add(imgNaechstesLevel)
        Controls.Add(lblLevel)
        Controls.Add(imgLebenWeg)
        Controls.Add(_imgLeben_3)
        Controls.Add(_imgLeben_2)
        Controls.Add(_imgLeben_1)
        Controls.Add(linUnten)
        Controls.Add(linLinks)
        Controls.Add(_imgWeiss_1)
        Controls.Add(linRechts)
        Controls.Add(imgA)
        Controls.Add(_imgWeiss_0)
        Controls.Add(_imgHindernis_1)
        Controls.Add(_imgHindernis_0)
        Controls.Add(_imgHindernis_2)
        Controls.Add(imgBonusleben)
        Controls.Add(_imgHindernis_3)
        Controls.Add(imgZiel)
        Font = New Font("Comic Sans MS", 8.25F, FontStyle.Regular, GraphicsUnit.Point)
        Location = New Point(8, 28)
        Name = "Bastard"
        RightToLeft = RightToLeft.No
        Text = "Jump and Run von Micha"
        CType(imgGewonnen, ComponentModel.ISupportInitialize).EndInit()
        CType(imgVerloren, ComponentModel.ISupportInitialize).EndInit()
        CType(imgHilfe, ComponentModel.ISupportInitialize).EndInit()
        CType(imgNaechstesLevel, ComponentModel.ISupportInitialize).EndInit()
        CType(imgLebenWeg, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgLeben_3, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgLeben_2, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgLeben_1, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgWeiss_1, ComponentModel.ISupportInitialize).EndInit()
        CType(imgA, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgWeiss_0, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgHindernis_1, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgHindernis_0, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgHindernis_2, ComponentModel.ISupportInitialize).EndInit()
        CType(imgBonusleben, ComponentModel.ISupportInitialize).EndInit()
        CType(_imgHindernis_3, ComponentModel.ISupportInitialize).EndInit()
        CType(imgZiel, ComponentModel.ISupportInitialize).EndInit()
        CType(commandButtonHelper1, ComponentModel.ISupportInitialize).EndInit()
        ResumeLayout(False)
        PerformLayout()
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