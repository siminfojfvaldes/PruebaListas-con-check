#tag Class
Protected Class App
Inherits WebApplication
	#tag Property, Flags = &h0
		Shared TipoColumna As TipoControl
	#tag EndProperty


	#tag Enum, Name = TipoControl, Flags = &h0
		TextBox
		  CheckBox
		PopupMenu
	#tag EndEnum


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
