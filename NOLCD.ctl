VERSION 5.00
Begin VB.UserControl NOLCD 
   Alignable       =   -1  'True
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fest Einfach
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7230
   FillColor       =   &H000000FF&
   FillStyle       =   0  'Ausgefüllt
   BeginProperty Font 
      Name            =   "Fixedsys"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H000000FF&
   ScaleHeight     =   33
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   482
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   300
      Left            =   -10275
      ScaleHeight     =   20
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   500
      TabIndex        =   0
      Top             =   4500
      Width           =   7500
   End
End
Attribute VB_Name = "NOLCD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Const m_def_ShowBack As Boolean = False
Const m_def_ToolTipText As String = "{dot}net-office LCD Control"
Dim m_ShowBack As Boolean
Dim m_DarkBackColor As OLE_COLOR
Dim m_ToolTipText As String
Event DblClick()
Event Click()
Event MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Event MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Event MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
Event Resize()
Sub RealDraw(DrawText As String)
  On Error Resume Next
  Dim RunX As Currency, RunY As Currency, m_ForeColor As OLE_COLOR, I As Currency, J As Currency
  DoEvents
  UserControl.Cls
  If m_ShowBack = True Then
    m_ForeColor = UserControl.ForeColor
    UserControl.ForeColor = m_DarkBackColor
    For I = 1 To UserControl.Width Step 2
      For J = 1 To UserControl.Height Step 2
        UserControl.PSet (I, J)
      Next J
    Next I
    UserControl.ForeColor = m_ForeColor
  End If
  DoEvents
  Picture1.CurrentX = 0
  Picture1.CurrentY = 0
  Picture1.Cls
  Picture1.Width = Picture1.TextWidth(DrawText)
  Picture1.Height = Picture1.TextHeight(DrawText)
  RunX = Picture1.Width
  RunY = Picture1.Height
  If RunX > UserControl.Width Then RunX = UserControl.Width
  If RunY > UserControl.Height Then RunY = UserControl.Height
  Picture1.Print DrawText
  For I = 1 To RunX
    For J = 1 To RunY
      If Picture1.Point(I, J) = vbBlack Then
        SetTWO I, J
      End If
    Next J
  Next I
  DoEvents
End Sub
Sub SetTWO(x, y)
  On Error Resume Next
  UserControl.PSet (x * 2, y * 2)
End Sub
Private Sub UserControl_DblClick()
  On Error Resume Next
  RaiseEvent DblClick
End Sub
Private Sub UserControl_Click()
  On Error Resume Next
  RaiseEvent Click
End Sub
Public Property Get ForeColor() As OLE_COLOR
  On Error Resume Next
  ForeColor = UserControl.ForeColor
End Property
Public Property Let ForeColor(ByVal New_ForeColor As OLE_COLOR)
  On Error Resume Next
  UserControl.ForeColor() = New_ForeColor
  PropertyChanged "ForeColor"
  RealDraw m_ToolTipText
End Property
Public Property Get BackColor() As OLE_COLOR
  On Error Resume Next
  BackColor = UserControl.BackColor
End Property
Public Property Let BackColor(ByVal New_BackColor As OLE_COLOR)
  On Error Resume Next
  UserControl.BackColor() = New_BackColor
  PropertyChanged "BackColor"
  RealDraw m_ToolTipText
End Property
Public Property Get DarkBackColor() As OLE_COLOR
  On Error Resume Next
  DarkBackColor = m_DarkBackColor
End Property
Public Property Let DarkBackColor(ByVal New_DarkBackColor As OLE_COLOR)
  On Error Resume Next
  m_DarkBackColor = New_DarkBackColor
  PropertyChanged "DarkBackColor"
  RealDraw m_ToolTipText
End Property
Public Property Get BorderStyle() As Byte
  On Error Resume Next
  BorderStyle = UserControl.BorderStyle
End Property
Public Property Let BorderStyle(ByVal New_BorderStyle As Byte)
  On Error Resume Next
  UserControl.BorderStyle() = New_BorderStyle
  PropertyChanged "BorderStyle"
End Property
Private Sub UserControl_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  On Error Resume Next
  RaiseEvent MouseDown(Button, Shift, x, y)
End Sub
Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  On Error Resume Next
  RaiseEvent MouseMove(Button, Shift, x, y)
End Sub
Private Sub UserControl_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
  On Error Resume Next
  RaiseEvent MouseUp(Button, Shift, x, y)
End Sub
Public Property Get MousePointer() As Integer
Attribute MousePointer.VB_Description = "Gibt den Typ des Mauszeigers zurück, der angezeigt wird, wenn dieser sich über einem Teil eines Objekts befindet, oder legt diesen fest."
  On Error Resume Next
  MousePointer = UserControl.MousePointer
End Property
Public Property Let MousePointer(ByVal New_MousePointer As Integer)
  On Error Resume Next
  UserControl.MousePointer() = New_MousePointer
  PropertyChanged "MousePointer"
End Property
Public Sub PopupMenu(ByVal Menu As Object, Optional ByVal Flags As Variant, Optional ByVal x As Variant, Optional ByVal y As Variant, Optional ByVal DefaultMenu As Variant)
Attribute PopupMenu.VB_Description = "Zeigt ein Kontextmenü in einem MDI-Formular oder Formular an."
  On Error Resume Next
  UserControl.PopupMenu Menu, Flags, x, y, DefaultMenu
End Sub
Private Sub UserControl_Resize()
  On Error Resume Next
  RaiseEvent Resize
  RealDraw m_ToolTipText
End Sub
Public Property Get ShowBack() As Boolean
Attribute ShowBack.VB_Description = "Gibt den Text zurück, der angezeigt wird, wenn die Maus über dem Steuerelement verweilt, oder legt den Text fest."
  On Error Resume Next
  ShowBack = m_ShowBack
End Property
Public Property Let ShowBack(ByVal New_ShowBack As Boolean)
  On Error Resume Next
  m_ShowBack = New_ShowBack
  PropertyChanged "ShowBack"
  RealDraw m_ToolTipText
End Property
Public Property Let Caption(ByVal New_Caption As String)
  On Error Resume Next
  m_ToolTipText = New_Caption
  PropertyChanged "Caption"
  RealDraw New_Caption
End Property
Public Property Get Caption() As String
  On Error Resume Next
  Caption = m_ToolTipText
End Property
Private Sub UserControl_InitProperties()
  On Error Resume Next
  m_ShowBack = m_def_ShowBack
  m_ToolTipText = m_def_ToolTipText
End Sub
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
  On Error Resume Next
  m_ShowBack = PropBag.ReadProperty("ShowBack", m_def_ShowBack)
  UserControl.ForeColor = PropBag.ReadProperty("ForeColor", &HFF&)
  UserControl.BackColor = PropBag.ReadProperty("BackColor", &H0&)
  m_DarkBackColor = PropBag.ReadProperty("DarkBackColor", &H40&)
  UserControl.BorderStyle = PropBag.ReadProperty("BorderStyle", 0)
  UserControl.MousePointer = PropBag.ReadProperty("MousePointer", 0)
  m_ToolTipText = PropBag.ReadProperty("Caption", m_def_ToolTipText)
  RealDraw m_ToolTipText
  Set Picture1.Font = PropBag.ReadProperty("Font", Ambient.Font)
End Sub
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
  On Error Resume Next
  Call PropBag.WriteProperty("ShowBack", m_ShowBack, m_def_ShowBack)
  Call PropBag.WriteProperty("ForeColor", UserControl.ForeColor, &HFF&)
  Call PropBag.WriteProperty("BackColor", UserControl.BackColor, &H0&)
  Call PropBag.WriteProperty("DarkBackColor", m_DarkBackColor, &H40&)
  Call PropBag.WriteProperty("BorderStyle", UserControl.BorderStyle, 0)
  Call PropBag.WriteProperty("MousePointer", UserControl.MousePointer, 0)
  Call PropBag.WriteProperty("Caption", m_ToolTipText, m_def_ToolTipText)
  Call PropBag.WriteProperty("Font", Picture1.Font, Ambient.Font)
End Sub
Public Property Get Font() As Font
Attribute Font.VB_Description = "Gibt ein Font-Objekt zurück."
Attribute Font.VB_UserMemId = -512
  Set Font = Picture1.Font
End Property
Public Property Set Font(ByVal New_Font As Font)
  Set Picture1.Font = New_Font
  PropertyChanged "Font"
  RealDraw m_ToolTipText
End Property

