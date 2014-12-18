#tag WebPage
Begin WebContainer ListaControles2
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   27
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   Style           =   "None"
   TabOrder        =   0
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   100
   ZIndex          =   1
   _DeclareLineRendered=   False
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebTextField Foco
      AutoCapitalize  =   True
      AutoComplete    =   True
      AutoCorrect     =   True
      CueText         =   ""
      Cursor          =   0
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   20
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   5
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      Style           =   "0"
      TabOrder        =   1
      Text            =   ""
      Top             =   5
      Type            =   0
      VerticalCenter  =   0
      Visible         =   True
      Width           =   20
      ZIndex          =   1
      _DeclareLineRendered=   False
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebRectangle marcoFoco
      Cursor          =   0
      Enabled         =   True
      Height          =   27
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      VerticalCenter  =   0
      Visible         =   False
      Width           =   100
      ZIndex          =   1
      _DeclareLineRendered=   False
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebListBox lista
      AlternateRowColor=   &cEDF3FE00
      ColumnCount     =   1
      ColumnWidths    =   "*"
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   True
      HeaderStyle     =   "0"
      Height          =   23
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   ""
      Left            =   2
      ListIndex       =   -1
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MinimumRowHeight=   22
      Multiline       =   False
      PrimaryRowColor =   &cFFFFFF00
      Scope           =   2
      SelectionStyle  =   "0"
      Style           =   "0"
      TabOrder        =   -1
      Top             =   2
      VerticalCenter  =   0
      Visible         =   True
      Width           =   96
      ZIndex          =   1
      _DeclareLineRendered=   False
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Open()
		  Abrir()
		  Redibujar()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  ' Este evento controla que cuando se redimensione el container, la lista y el rectangulo
		  ' siempre mantengan la misma relación de aspecto
		  marcoFoco.Width = me.Width
		  marcoFoco.Height = me.Height
		  lista.Width = me.Width - 2
		  lista.Height = me.Height -2
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Abrir()
		  RaiseEvent Abierto()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(paramarray data as String)
		  'self.lista.AddRow(data)
		  
		  'dim fila as new Fila
		  'fila.text_Fecha.Text = text_Fecha.Text
		  'fila.text_Notas.Text = text_Notas.Text
		  ''fila.text_Diagnosticos.Text = text_Diagnostico.Text
		  'fila.check_EP.Value = check_Ep.Value
		  '
		  '
		  'fila.EmbedWithin(list_Imagenes, 0, 23 + list_Imagenes.alturaTotal, fila.Width, fila.Height)
		  'list_Imagenes.alturaTotal = list_Imagenes.alturaTotal+(fila.Height-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CambiarSeleccion()
		  RaiseEvent SeleccionCambio()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Cell(row as integer, col as integer) As String
		  return self.lista.cell(row, col)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cell(row as integer, col as integer, assigns value as string)
		  self.lista.cell(row, col) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ColumnCount() As integer
		  return self.lista.ColumnCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ColumnCount(assigns value as integer)
		  self.lista.ColumnCount = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ColumnWidths() As string
		  return self.lista.ColumnWidths
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ColumnWidths(assigns value as String)
		  self.lista.ColumnWidths = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteAllRows()
		  self.lista.DeleteAllRows()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DobleClick()
		  RaiseEvent DobleClicked()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasHeading() As Boolean
		  return self.lista.HasHeading
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HasHeading(assigns value as boolean)
		  self.lista.HasHeading = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Heading(col as integer) As string
		  return self.lista.Heading(col)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Heading(col as integer, assigns value as String)
		  self.lista.heading(col) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function List(i as integer) As String
		  return self.lista.List(i)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ObtenerFoco()
		  RaiseEvent TieneFoco
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PerderFoco()
		  RaiseEvent PerdioFoco
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PulsarTecla(details as REALbasic.KeyEvent)
		  RaiseEvent PulsoTecla(details)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Redibujar()
		  for i as integer = 0 to self.Filas.Ubound - 1
		    'filas(i).
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowTag(row as integer) As Variant
		  return self.lista.RowTag(row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RowTag(row as integer, assigns value as Variant)
		  self.lista.RowTag(row) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Selected(row as integer) As Boolean
		  return self.lista.Selected(row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Selected(row as integer, Assigns value as boolean)
		  self.lista.Selected(row) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFocus()
		  Foco.SetFocus()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Abierto()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DobleClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PerdioFoco()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PulsoTecla(details as REALbasic.KeyEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SeleccionCambio()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TieneFoco()
	#tag EndHook


	#tag Property, Flags = &h0
		Columnas() As Columna
	#tag EndProperty

	#tag Property, Flags = &h0
		Filas() As Fila
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return self.lista.LastIndex
			End Get
		#tag EndGetter
		LastIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return self.Lista.ListIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  self.lista.ListIndex = value
			End Set
		#tag EndSetter
		ListIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return self.lista.RowCount
			End Get
		#tag EndGetter
		RowCount As Integer
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events Foco
	#tag Event
		Sub KeyPressed(Details As REALbasic.KeyEvent)
		  
		  
		  select case details.KeyCode
		    
		  case 38 ' arriba
		    if lista.RowCount > 0 and lista.ListIndex > 0 then
		      lista.ListIndex = lista.ListIndex -1
		      CambiarSeleccion()
		    end if
		    
		  case 40 'abajo
		    if lista.RowCount > 0 and lista.ListIndex < lista.RowCount-1 then
		      lista.ListIndex = lista.ListIndex+1
		      CambiarSeleccion()
		    end if
		    
		  end select
		  
		  PulsarTecla(details)
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  marcoFoco.Visible = false
		  PerderFoco()
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  marcoFoco.Visible = true
		  ObtenerFoco()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lista
	#tag Event
		Sub SelectionChanged()
		  CambiarSeleccion()
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  Foco.SetFocus()
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellClick(Row As Integer, Column As Integer)
		  Foco.SetFocus()
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  DobleClick()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Auto"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow North East"
			"12 - Arrow North West"
			"13 - Arrow South East"
			"14 - Arrow South West"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastIndex"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ListIndex"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RowCount"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollbarsVisible"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_DeclareLineRendered"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OpenEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
