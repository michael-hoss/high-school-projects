Option Strict Off
Option Explicit On
Imports System
Imports System.Windows.Forms
Imports UpgradeHelpers.Gui.Controls
Partial Friend Class frmMain
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
		InitializeComponent()
		ReLoadForm(False)
		If mustCallFormLoad And Not (m_vb6FormDefInstance Is Nothing) Then
			m_vb6FormDefInstance.Form_Load()
		End If
	End Sub


	Private Sub frmMain_Activated(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles MyBase.Activated
		If Not (UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm Is eventSender) Then
			UpgradeHelpers.Gui.Utils.ActivateHelper.myActiveForm = eventSender
		End If
	End Sub

	Dim Spieler1dran As Boolean
	Dim Beginner As Boolean

	Private Sub cmdRename_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles cmdRename.Click

		lblSpieler1.Text = InputBoxHelper.InputBox("Name:", "Spieler 1", lblSpieler1.Text)
		lblSpieler2.Text = InputBoxHelper.InputBox("Name:", "Spieler 2", lblSpieler2.Text)

	End Sub

	Private Sub cmdTick_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles _cmdTick_8.Click, _cmdTick_7.Click, _cmdTick_6.Click, _cmdTick_5.Click, _cmdTick_4.Click, _cmdTick_3.Click, _cmdTick_2.Click, _cmdTick_1.Click, _cmdTick_0.Click
		Dim Index As Integer = Array.IndexOf(Me.cmdTick, eventSender)

		If Not (cmdTick(Index).Text <> "") Then

			If Spieler1dran Then
				cmdTick(Index).Text = "X"
			Else
				cmdTick(Index).Text = "O"
			End If

			'Gewonnen??

			If cmdTick(0).Text = cmdTick(1).Text And cmdTick(1).Text = cmdTick(2).Text And cmdTick(0).Text <> "" Then
				Win()
			End If

			If cmdTick(3).Text = cmdTick(4).Text And cmdTick(4).Text = cmdTick(5).Text And cmdTick(3).Text <> "" Then
				Win()
			End If

			If cmdTick(6).Text = cmdTick(7).Text And cmdTick(7).Text = cmdTick(8).Text And cmdTick(7).Text <> "" Then
				Win()
			End If

			If cmdTick(0).Text = cmdTick(3).Text And cmdTick(3).Text = cmdTick(6).Text And cmdTick(0).Text <> "" Then
				Win()
			End If

			If cmdTick(1).Text = cmdTick(4).Text And cmdTick(4).Text = cmdTick(7).Text And cmdTick(7).Text <> "" Then
				Win()
			End If

			If cmdTick(2).Text = cmdTick(5).Text And cmdTick(5).Text = cmdTick(8).Text And cmdTick(5).Text <> "" Then
				Win()
			End If

			If cmdTick(0).Text = cmdTick(4).Text And cmdTick(4).Text = cmdTick(8).Text And cmdTick(0).Text <> "" Then
				Win()
			End If

			If cmdTick(2).Text = cmdTick(4).Text And cmdTick(4).Text = cmdTick(6).Text And cmdTick(2).Text <> "" Then
				Win()
			End If

			'Unentschieden??

			If cmdTick(0).Text <> "" And cmdTick(1).Text <> "" And cmdTick(2).Text <> "" And cmdTick(3).Text <> "" And cmdTick(4).Text <> "" And cmdTick(5).Text <> "" And cmdTick(6).Text <> "" And cmdTick(7).Text <> "" And cmdTick(8).Text <> "" Then

				For a As Integer = 0 To 8
					cmdTick(a).Text = ""
				Next

				Beginner = Not (Beginner)


				Spieler1dran = Beginner


			Else

				Spieler1dran = Not (Spieler1dran)
			End If
		End If


	End Sub

	'UPGRADE_WARNING: (2080) Form_Load event was upgraded to Form_Load method and has a new behavior. More Information: https://docs.mobilize.net/vbuc/ewis#2080
	Private Sub Form_Load()

		Spieler1dran = True

	End Sub


	Public Sub mnuHelpAbout_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles mnuHelpAbout.Click
		MessageBox.Show("Version 1.0.0", My.Application.Info.Title)
	End Sub

	Public Sub mnuFileExit_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles mnuFileExit.Click
		'Formular entladen
		Me.Close()

	End Sub

	Public Sub mnuFileNew_Click(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles mnuFileNew.Click

		lblPunkte1.Text = "0"
		lblPunkte2.Text = "0"

		For a As Integer = 0 To 8
			cmdTick(a).Text = ""
		Next

		Spieler1dran = True

	End Sub

	Private Sub Timer1_Tick(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles Timer1.Tick


		If Spieler1dran Then
			lblSpieler1.Visible = Not (lblSpieler1.Visible)
			lblSpieler2.Visible = True
		End If

		If Not Spieler1dran Then
			lblSpieler2.Visible = Not (lblSpieler2.Visible)
			lblSpieler1.Visible = True
		End If


	End Sub

	Public Function Win() As Object

		If Spieler1dran Then
			lblPunkte1.Text = CStr(CDbl(lblPunkte1.Text) + 1)
		Else
			lblPunkte2.Text = CStr(CDbl(lblPunkte2.Text) + 1)
		End If

		For a As Integer = 0 To 8
			cmdTick(a).Text = ""
		Next

		Beginner = Not (Beginner)


		Spieler1dran = Beginner


	End Function
	Private Sub Form_Closed(ByVal eventSender As Object, ByVal eventArgs As EventArgs) Handles MyBase.Closed
	End Sub
End Class