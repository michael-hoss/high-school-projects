<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMain
#Region "Upgrade Support "
	Private Shared m_vb6FormDefInstance As frmMain
	Private Shared m_InitializingDefInstance As Boolean
	Public Shared Property DefInstance() As frmMain
		Get
			If m_vb6FormDefInstance Is Nothing OrElse m_vb6FormDefInstance.IsDisposed Then
				m_InitializingDefInstance = True
				m_vb6FormDefInstance = CreateInstance()
				m_InitializingDefInstance = False
			End If
			Return m_vb6FormDefInstance
		End Get
		Set(ByVal Value As frmMain)
			m_vb6FormDefInstance = Value
		End Set
	End Property
#End Region
#Region "Windows Form Designer generated code "
	Public Shared Function CreateInstance() As frmMain
		Dim theInstance As New frmMain()
		theInstance.Form_Load()
		Return theInstance
	End Function
	Private visualControls() As String = New String() {"components", "ToolTipMain", "mnuFileNew", "mnuFileBar0", "mnuFileExit", "mnuFile", "mnuHelpAbout", "mnuHelp", "MainMenu1", "Timer1", "cmdRename", "_cmdTick_8", "_cmdTick_7", "_cmdTick_6", "_cmdTick_5", "_cmdTick_4", "_cmdTick_3", "_cmdTick_2", "_cmdTick_1", "_cmdTick_0", "lblPunkte2", "lblPunkte1", "Line2", "Line1", "lblSpieler2", "lblSpieler1", "cmdTick", "commandButtonHelper1"}
	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer
	Public ToolTipMain As System.Windows.Forms.ToolTip
	Public WithEvents mnuFileNew As System.Windows.Forms.ToolStripMenuItem
	Public WithEvents mnuFileBar0 As System.Windows.Forms.ToolStripSeparator
	Public WithEvents mnuFileExit As System.Windows.Forms.ToolStripMenuItem
	Public WithEvents mnuFile As System.Windows.Forms.ToolStripMenuItem
	Public WithEvents mnuHelpAbout As System.Windows.Forms.ToolStripMenuItem
	Public WithEvents mnuHelp As System.Windows.Forms.ToolStripMenuItem
	Public WithEvents MainMenu1 As System.Windows.Forms.MenuStrip
	Public WithEvents Timer1 As System.Windows.Forms.Timer
	Public WithEvents cmdRename As System.Windows.Forms.Button
	Private WithEvents _cmdTick_8 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_7 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_6 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_5 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_4 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_3 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_2 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_1 As System.Windows.Forms.Button
	Private WithEvents _cmdTick_0 As System.Windows.Forms.Button
	Public WithEvents lblPunkte2 As System.Windows.Forms.Label
	Public WithEvents lblPunkte1 As System.Windows.Forms.Label
	Public WithEvents Line2 As System.Windows.Forms.Label
	Public WithEvents Line1 As System.Windows.Forms.Label
	Public WithEvents lblSpieler2 As System.Windows.Forms.Label
	Public WithEvents lblSpieler1 As System.Windows.Forms.Label
	Public cmdTick(8) As System.Windows.Forms.Button
	Public commandButtonHelper1 As UpgradeHelpers.Gui.Controls.CommandButtonHelper
	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()> _
	 Private Sub InitializeComponent()
		Me.components = New System.ComponentModel.Container()
		Dim resources As New System.ComponentModel.ComponentResourceManager(GetType(frmMain))
		Me.ToolTipMain = New System.Windows.Forms.ToolTip(Me.components)
		Me.MainMenu1 = New System.Windows.Forms.MenuStrip()
		Me.mnuFile = New System.Windows.Forms.ToolStripMenuItem()
		Me.mnuFileNew = New System.Windows.Forms.ToolStripMenuItem()
		Me.mnuFileBar0 = New System.Windows.Forms.ToolStripSeparator()
		Me.mnuFileExit = New System.Windows.Forms.ToolStripMenuItem()
		Me.mnuHelp = New System.Windows.Forms.ToolStripMenuItem()
		Me.mnuHelpAbout = New System.Windows.Forms.ToolStripMenuItem()
		Me.Timer1 = New System.Windows.Forms.Timer(components)
		Me.cmdRename = New System.Windows.Forms.Button()
		Me._cmdTick_8 = New System.Windows.Forms.Button()
		Me._cmdTick_7 = New System.Windows.Forms.Button()
		Me._cmdTick_6 = New System.Windows.Forms.Button()
		Me._cmdTick_5 = New System.Windows.Forms.Button()
		Me._cmdTick_4 = New System.Windows.Forms.Button()
		Me._cmdTick_3 = New System.Windows.Forms.Button()
		Me._cmdTick_2 = New System.Windows.Forms.Button()
		Me._cmdTick_1 = New System.Windows.Forms.Button()
		Me._cmdTick_0 = New System.Windows.Forms.Button()
		Me.lblPunkte2 = New System.Windows.Forms.Label()
		Me.lblPunkte1 = New System.Windows.Forms.Label()
		Me.Line2 = New System.Windows.Forms.Label()
		Me.Line1 = New System.Windows.Forms.Label()
		Me.lblSpieler2 = New System.Windows.Forms.Label()
		Me.lblSpieler1 = New System.Windows.Forms.Label()
		Me.SuspendLayout()
		Me.commandButtonHelper1 = New UpgradeHelpers.Gui.Controls.CommandButtonHelper(Me.components)
		' 
		'MainMenu1
		' 
		Me.MainMenu1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuFile, Me.mnuHelp})
		' 
		'mnuFile
		' 
		Me.mnuFile.Available = True
		Me.mnuFile.Checked = False
		Me.mnuFile.Enabled = True
		Me.mnuFile.Name = "mnuFile"
		Me.mnuFile.Text = "&Datei"
		Me.mnuFile.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuFileNew, Me.mnuFileBar0, Me.mnuFileExit})
		' 
		'mnuFileNew
		' 
		Me.mnuFileNew.Available = True
		Me.mnuFileNew.Checked = False
		Me.mnuFileNew.Enabled = True
		Me.mnuFileNew.Name = "mnuFileNew"
		Me.mnuFileNew.ShortcutKeys = CType(System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.N, System.Windows.Forms.Keys)
		Me.mnuFileNew.Text = "&Neu"
		' 
		'mnuFileBar0
		' 
		Me.mnuFileBar0.AllowDrop = True
		Me.mnuFileBar0.Available = True
		Me.mnuFileBar0.Enabled = True
		Me.mnuFileBar0.Name = "mnuFileBar0"
		' 
		'mnuFileExit
		' 
		Me.mnuFileExit.Available = True
		Me.mnuFileExit.Checked = False
		Me.mnuFileExit.Enabled = True
		Me.mnuFileExit.Name = "mnuFileExit"
		Me.mnuFileExit.Text = "&Beenden"
		' 
		'mnuHelp
		' 
		Me.mnuHelp.Available = True
		Me.mnuHelp.Checked = False
		Me.mnuHelp.Enabled = True
		Me.mnuHelp.Name = "mnuHelp"
		Me.mnuHelp.Text = "&?"
		Me.mnuHelp.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuHelpAbout})
		' 
		'mnuHelpAbout
		' 
		Me.mnuHelpAbout.Available = True
		Me.mnuHelpAbout.Checked = False
		Me.mnuHelpAbout.Enabled = True
		Me.mnuHelpAbout.Name = "mnuHelpAbout"
		Me.mnuHelpAbout.Text = "Inf&o "
		' 
		'Timer1
		' 
		Me.Timer1.Enabled = True
		Me.Timer1.Interval = 500
		' 
		'cmdRename
		' 
		Me.cmdRename.AllowDrop = True
		Me.cmdRename.BackColor = System.Drawing.SystemColors.Control
		Me.cmdRename.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.cmdRename.ForeColor = System.Drawing.SystemColors.ControlText
		Me.cmdRename.Location = New System.Drawing.Point(520, 280)
		Me.cmdRename.Name = "cmdRename"
		Me.cmdRename.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.cmdRename.Size = New System.Drawing.Size(97, 41)
		Me.cmdRename.TabIndex = 13
		Me.cmdRename.Text = "&Umbenennen"
		Me.cmdRename.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me.cmdRename.UseVisualStyleBackColor = False
		' 
		'_cmdTick_8
		' 
		Me._cmdTick_8.AllowDrop = True
		Me._cmdTick_8.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_8.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_8.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_8.Location = New System.Drawing.Point(220, 244)
		Me._cmdTick_8.Name = "_cmdTick_8"
		Me._cmdTick_8.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_8.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_8.TabIndex = 8
		Me._cmdTick_8.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_8.UseVisualStyleBackColor = False
		' 
		'_cmdTick_7
		' 
		Me._cmdTick_7.AllowDrop = True
		Me._cmdTick_7.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_7.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_7.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_7.Location = New System.Drawing.Point(134, 244)
		Me._cmdTick_7.Name = "_cmdTick_7"
		Me._cmdTick_7.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_7.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_7.TabIndex = 7
		Me._cmdTick_7.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_7.UseVisualStyleBackColor = False
		' 
		'_cmdTick_6
		' 
		Me._cmdTick_6.AllowDrop = True
		Me._cmdTick_6.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_6.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_6.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_6.Location = New System.Drawing.Point(47, 244)
		Me._cmdTick_6.Name = "_cmdTick_6"
		Me._cmdTick_6.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_6.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_6.TabIndex = 6
		Me._cmdTick_6.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_6.UseVisualStyleBackColor = False
		' 
		'_cmdTick_5
		' 
		Me._cmdTick_5.AllowDrop = True
		Me._cmdTick_5.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_5.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_5.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_5.Location = New System.Drawing.Point(220, 157)
		Me._cmdTick_5.Name = "_cmdTick_5"
		Me._cmdTick_5.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_5.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_5.TabIndex = 5
		Me._cmdTick_5.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_5.UseVisualStyleBackColor = False
		' 
		'_cmdTick_4
		' 
		Me._cmdTick_4.AllowDrop = True
		Me._cmdTick_4.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_4.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_4.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_4.Location = New System.Drawing.Point(134, 157)
		Me._cmdTick_4.Name = "_cmdTick_4"
		Me._cmdTick_4.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_4.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_4.TabIndex = 4
		Me._cmdTick_4.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_4.UseVisualStyleBackColor = False
		' 
		'_cmdTick_3
		' 
		Me._cmdTick_3.AllowDrop = True
		Me._cmdTick_3.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_3.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_3.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_3.Location = New System.Drawing.Point(47, 157)
		Me._cmdTick_3.Name = "_cmdTick_3"
		Me._cmdTick_3.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_3.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_3.TabIndex = 3
		Me._cmdTick_3.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_3.UseVisualStyleBackColor = False
		' 
		'_cmdTick_2
		' 
		Me._cmdTick_2.AllowDrop = True
		Me._cmdTick_2.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_2.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_2.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_2.Location = New System.Drawing.Point(220, 70)
		Me._cmdTick_2.Name = "_cmdTick_2"
		Me._cmdTick_2.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_2.Size = New System.Drawing.Size(80, 80)
		Me._cmdTick_2.TabIndex = 2
		Me._cmdTick_2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_2.UseVisualStyleBackColor = False
		' 
		'_cmdTick_1
		' 
		Me._cmdTick_1.AllowDrop = True
		Me._cmdTick_1.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_1.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_1.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_1.Location = New System.Drawing.Point(134, 70)
		Me._cmdTick_1.Name = "_cmdTick_1"
		Me._cmdTick_1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_1.Size = New System.Drawing.Size(81, 81)
		Me._cmdTick_1.TabIndex = 1
		Me._cmdTick_1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_1.UseVisualStyleBackColor = False
		' 
		'_cmdTick_0
		' 
		Me._cmdTick_0.AllowDrop = True
		Me._cmdTick_0.BackColor = System.Drawing.SystemColors.Control
		Me._cmdTick_0.Font = New System.Drawing.Font("Comic Sans MS", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me._cmdTick_0.ForeColor = System.Drawing.SystemColors.ControlText
		Me._cmdTick_0.Location = New System.Drawing.Point(47, 70)
		Me._cmdTick_0.Name = "_cmdTick_0"
		Me._cmdTick_0.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me._cmdTick_0.Size = New System.Drawing.Size(81, 81)
		Me._cmdTick_0.TabIndex = 0
		Me._cmdTick_0.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
		Me._cmdTick_0.UseVisualStyleBackColor = False
		' 
		'lblPunkte2
		' 
		Me.lblPunkte2.AllowDrop = True
		Me.lblPunkte2.BackColor = System.Drawing.Color.Transparent
		Me.lblPunkte2.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblPunkte2.Font = New System.Drawing.Font("Comic Sans MS", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblPunkte2.ForeColor = System.Drawing.SystemColors.ControlText
		Me.lblPunkte2.Location = New System.Drawing.Point(528, 192)
		Me.lblPunkte2.Name = "lblPunkte2"
		Me.lblPunkte2.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblPunkte2.Size = New System.Drawing.Size(73, 41)
		Me.lblPunkte2.TabIndex = 12
		Me.lblPunkte2.Text = "0"
		' 
		'lblPunkte1
		' 
		Me.lblPunkte1.AllowDrop = True
		Me.lblPunkte1.BackColor = System.Drawing.Color.Transparent
		Me.lblPunkte1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblPunkte1.Font = New System.Drawing.Font("Comic Sans MS", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblPunkte1.ForeColor = System.Drawing.SystemColors.ControlText
		Me.lblPunkte1.Location = New System.Drawing.Point(528, 136)
		Me.lblPunkte1.Name = "lblPunkte1"
		Me.lblPunkte1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblPunkte1.Size = New System.Drawing.Size(73, 41)
		Me.lblPunkte1.TabIndex = 11
		Me.lblPunkte1.Text = "0"
		' 
		'Line2
		' 
		Me.Line2.AllowDrop = True
		Me.Line2.BackColor = System.Drawing.SystemColors.WindowText
		Me.Line2.Enabled = False
		Me.Line2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Line2.Location = New System.Drawing.Point(504, 136)
		Me.Line2.Name = "Line2"
		Me.Line2.Size = New System.Drawing.Size(1, 88)
		Me.Line2.Visible = True
		' 
		'Line1
		' 
		Me.Line1.AllowDrop = True
		Me.Line1.BackColor = System.Drawing.SystemColors.WindowText
		Me.Line1.Enabled = False
		Me.Line1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Line1.Location = New System.Drawing.Point(360, 184)
		Me.Line1.Name = "Line1"
		Me.Line1.Size = New System.Drawing.Size(256, 1)
		Me.Line1.Visible = True
		' 
		'lblSpieler2
		' 
		Me.lblSpieler2.AllowDrop = True
		Me.lblSpieler2.BackColor = System.Drawing.Color.Transparent
		Me.lblSpieler2.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblSpieler2.Font = New System.Drawing.Font("Comic Sans MS", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblSpieler2.ForeColor = System.Drawing.SystemColors.ControlText
		Me.lblSpieler2.Location = New System.Drawing.Point(384, 192)
		Me.lblSpieler2.Name = "lblSpieler2"
		Me.lblSpieler2.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblSpieler2.Size = New System.Drawing.Size(113, 41)
		Me.lblSpieler2.TabIndex = 10
		Me.lblSpieler2.Text = "Spieler 2"
		' 
		'lblSpieler1
		' 
		Me.lblSpieler1.AllowDrop = True
		Me.lblSpieler1.BackColor = System.Drawing.Color.Transparent
		Me.lblSpieler1.BorderStyle = System.Windows.Forms.BorderStyle.None
		Me.lblSpieler1.Font = New System.Drawing.Font("Comic Sans MS", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.lblSpieler1.ForeColor = System.Drawing.SystemColors.ControlText
		Me.lblSpieler1.Location = New System.Drawing.Point(384, 136)
		Me.lblSpieler1.Name = "lblSpieler1"
		Me.lblSpieler1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.lblSpieler1.Size = New System.Drawing.Size(113, 41)
		Me.lblSpieler1.TabIndex = 9
		Me.lblSpieler1.Text = "Spieler 1"
		' 
		'frmMain
		' 
		Me.AllowDrop = True
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6, 13)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.BackColor = System.Drawing.Color.Yellow
		Me.ClientSize = New System.Drawing.Size(673, 408)
		Me.Controls.Add(Me.cmdRename)
		Me.Controls.Add(Me._cmdTick_8)
		Me.Controls.Add(Me._cmdTick_7)
		Me.Controls.Add(Me._cmdTick_6)
		Me.Controls.Add(Me._cmdTick_5)
		Me.Controls.Add(Me._cmdTick_4)
		Me.Controls.Add(Me._cmdTick_3)
		Me.Controls.Add(Me._cmdTick_2)
		Me.Controls.Add(Me._cmdTick_1)
		Me.Controls.Add(Me._cmdTick_0)
		Me.Controls.Add(Me.lblPunkte2)
		Me.Controls.Add(Me.lblPunkte1)
		Me.Controls.Add(Me.Line2)
		Me.Controls.Add(Me.Line1)
		Me.Controls.Add(Me.lblSpieler2)
		Me.Controls.Add(Me.lblSpieler1)
		Me.Controls.Add(MainMenu1)
		Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0)
		Me.Location = New System.Drawing.Point(15, 55)
		Me.MaximizeBox = True
		Me.MinimizeBox = True
		Me.Name = "frmMain"
		Me.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Text = "TicTacToe"
		Me.ResumeLayout(False)
	End Sub
	Sub ReLoadForm(ByVal addEvents As Boolean)
		InitializecmdTick()
		If addEvents Then
			AddHandler MyBase.Closed, AddressOf Me.Form_Closed
			AddHandler Me.Activated, AddressOf Me.frmMain_Activated
		End If
	End Sub
	Sub InitializecmdTick()
		ReDim cmdTick(8)
		Me.cmdTick(8) = _cmdTick_8
		Me.cmdTick(7) = _cmdTick_7
		Me.cmdTick(6) = _cmdTick_6
		Me.cmdTick(5) = _cmdTick_5
		Me.cmdTick(4) = _cmdTick_4
		Me.cmdTick(3) = _cmdTick_3
		Me.cmdTick(2) = _cmdTick_2
		Me.cmdTick(1) = _cmdTick_1
		Me.cmdTick(0) = _cmdTick_0
	End Sub
#End Region
End Class