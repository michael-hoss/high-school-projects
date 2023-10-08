Namespace UnsafeNative
	<System.Security.SuppressUnmanagedCodeSecurity> _
	 Public Module winmm
		Declare Function sndPlaySound Lib "Winmm"  Alias "sndPlaySoundA"(ByVal lpszSoundName As String, ByVal uFlags As Integer) As Integer
	End Module
End Namespace