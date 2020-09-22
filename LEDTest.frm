VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2415
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   ScaleHeight     =   2415
   ScaleWidth      =   7035
   StartUpPosition =   3  'Windows-Standard
   Begin LEDControl.NOLCD NOLCD2 
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      DarkBackColor   =   0
      BorderStyle     =   1
      Caption         =   "Terminal"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD1 
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   873
      DarkBackColor   =   0
      BorderStyle     =   1
      Caption         =   "Fixedsys"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD3 
      Height          =   495
      Left            =   1560
      TabIndex        =   2
      Top             =   720
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   873
      ForeColor       =   65535
      DarkBackColor   =   0
      BorderStyle     =   1
      Caption         =   "MS Sans Serif"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD4 
      Height          =   495
      Left            =   3840
      TabIndex        =   3
      Top             =   720
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   873
      ForeColor       =   16744576
      DarkBackColor   =   0
      BorderStyle     =   1
      Caption         =   "Times New Roman"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD5 
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   1320
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   873
      ForeColor       =   0
      BackColor       =   -2147483633
      DarkBackColor   =   0
      Caption         =   "Fixedsys"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD6 
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1920
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      ShowBack        =   -1  'True
      DarkBackColor   =   128
      BorderStyle     =   1
      Caption         =   "Terminal"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD7 
      Height          =   375
      Left            =   1560
      TabIndex        =   6
      Top             =   1920
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   661
      ShowBack        =   -1  'True
      ForeColor       =   0
      BackColor       =   -2147483633
      DarkBackColor   =   8421504
      Caption         =   "MS Sans Serif"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin LEDControl.NOLCD NOLCD8 
      Height          =   375
      Left            =   3840
      TabIndex        =   7
      Top             =   1920
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   661
      ShowBack        =   -1  'True
      ForeColor       =   12582912
      BackColor       =   16777215
      DarkBackColor   =   0
      Caption         =   "Times New Roman"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
