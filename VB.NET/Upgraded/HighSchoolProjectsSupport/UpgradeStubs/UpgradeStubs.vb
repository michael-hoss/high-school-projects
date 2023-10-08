Imports System.Drawing
Imports System.Windows.Forms
Namespace UpgradeStubs
	Public Module System_Windows_Forms_Label
		<System.Runtime.CompilerServices.Extension()>
		Public Function getX1(ByRef instance As Label) As Single
			Return instance.Location.X * 15
			' UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("VB.Line.X1")
			' Return 0
		End Function
		<System.Runtime.CompilerServices.Extension()>
		Public Function getY1(ByRef instance As Label) As Single
			Return instance.Location.Y * 15
			' UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("VB.Line.Y1")
			' Return 0
		End Function
		<System.Runtime.CompilerServices.Extension()>
		Public Sub setX1(ByRef instance As Label, ByVal X1 As Single)
			instance.Location = New Point(X1 / 15, instance.Location.Y)
			'UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("setVB.Line.X1")
		End Sub
		<System.Runtime.CompilerServices.Extension()>
		Public Sub setX2(ByRef instance As Label, ByVal X2 As Single)
			Dim width As Integer = X2 / 15 - instance.Location.X
			width = Math.Max(width, 5)
			instance.Size = New Size(width, instance.Size.Height)
			'instance.Location = New Point(, instance.Location.Y)
			'UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("setVB.Line.X2")
		End Sub
		<System.Runtime.CompilerServices.Extension()>
		Public Sub setY1(ByRef instance As Label, ByVal Y1 As Single)
			instance.Location = New Point(instance.Location.X, Y1 / 15)
			'UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("setVB.Line.Y1")
		End Sub
		<System.Runtime.CompilerServices.Extension()>
		Public Sub setY2(ByRef instance As Label, ByVal Y2 As Single)
			Dim height As Integer = Y2 / 15 - instance.Location.Y
			height = Math.Max(height, 5)
			instance.Size = New Size(instance.Size.Width, height)
			'UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("setVB.Line.Y2")
		End Sub
	End Module
End Namespace