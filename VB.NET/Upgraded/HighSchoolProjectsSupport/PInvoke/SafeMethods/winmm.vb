Namespace SafeNative
	Public Module winmm
		Public Function sndPlaySound(ByRef lpszSoundName As String, ByVal uFlags As Integer) As Integer
			Return HighSchoolProjectsSupport.UnsafeNative.winmm.sndPlaySound(lpszSoundName, uFlags)
		End Function
	End Module
End Namespace