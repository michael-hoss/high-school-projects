Option Strict Off
Option Explicit On
Imports System
Imports System.Windows.Forms
Module Module1
	Public fMainForm As frmMain


	<STAThread> _
	 Public Sub Main()
		Application.EnableVisualStyles()
		Application.SetCompatibleTextRenderingDefault(False)
		fMainForm = frmMain.CreateInstance()
		Application.Run(fMainForm)
	End Sub
End Module