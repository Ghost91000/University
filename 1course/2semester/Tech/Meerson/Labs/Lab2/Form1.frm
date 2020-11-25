VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8850
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15465
   LinkTopic       =   "Form1"
   ScaleHeight     =   8850
   ScaleWidth      =   15465
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame9 
      Caption         =   "Personal"
      Height          =   3495
      Left            =   7440
      TabIndex        =   34
      Top             =   3480
      Width           =   3975
      Begin VB.Frame Frame10 
         Caption         =   "f(x)"
         Height          =   1335
         Left            =   2400
         TabIndex        =   42
         Top             =   1800
         Width           =   975
         Begin VB.OptionButton Option8 
            Caption         =   "e^x"
            Height          =   315
            Left            =   120
            TabIndex        =   44
            Top             =   840
            Width           =   735
         End
         Begin VB.OptionButton Option7 
            Caption         =   "x^2"
            Height          =   315
            Left            =   120
            TabIndex        =   43
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.TextBox Text12 
         Height          =   495
         Left            =   600
         TabIndex        =   40
         Top             =   2880
         Width           =   1695
      End
      Begin VB.TextBox Text11 
         Height          =   495
         Left            =   1680
         TabIndex        =   37
         Top             =   2160
         Width           =   615
      End
      Begin VB.TextBox Text10 
         Height          =   495
         Left            =   960
         TabIndex        =   36
         Top             =   2160
         Width           =   615
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Do"
         Height          =   495
         Left            =   240
         TabIndex        =   35
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "Ans"
         Height          =   255
         Left            =   240
         TabIndex        =   41
         Top             =   3000
         Width           =   375
      End
      Begin VB.Label Label7 
         Caption         =   "Y"
         Height          =   255
         Left            =   1920
         TabIndex        =   39
         Top             =   1800
         Width           =   375
      End
      Begin VB.Label Label6 
         Caption         =   "X"
         Height          =   255
         Left            =   1200
         TabIndex        =   38
         Top             =   1800
         Width           =   375
      End
      Begin VB.Image Image1 
         Height          =   1410
         Left            =   120
         Picture         =   "Form1.frx":0000
         Stretch         =   -1  'True
         Top             =   240
         Width           =   3690
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Wtf"
      Height          =   3495
      Left            =   4080
      TabIndex        =   26
      Top             =   3480
      Width           =   3255
      Begin VB.Frame Frame8 
         Caption         =   "You must"
         Height          =   1455
         Left            =   480
         TabIndex        =   31
         Top             =   1800
         Width           =   2295
         Begin VB.TextBox TxtLet 
            Height          =   735
            Left            =   240
            TabIndex        =   32
            Top             =   360
            Width           =   1815
         End
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Divination"
         Height          =   495
         Left            =   720
         TabIndex        =   30
         Top             =   1200
         Width           =   1815
      End
      Begin VB.Frame Frame7 
         Caption         =   "How old are you?"
         Height          =   735
         Left            =   480
         TabIndex        =   27
         Top             =   360
         Width           =   2295
         Begin VB.TextBox LblInfo 
            Height          =   375
            Left            =   1200
            TabIndex        =   29
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox LblLet 
            Height          =   375
            Left            =   240
            TabIndex        =   28
            Top             =   240
            Width           =   735
         End
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Move"
      Height          =   3495
      Left            =   5400
      TabIndex        =   25
      Top             =   0
      Width           =   6015
      Begin VB.Timer Timer1 
         Interval        =   50
         Left            =   2760
         Top             =   2880
      End
      Begin VB.Image Shar 
         Height          =   1020
         Left            =   480
         Picture         =   "Form1.frx":5848
         Stretch         =   -1  'True
         Top             =   1560
         Width           =   1140
      End
      Begin VB.Shape Pole 
         Height          =   2535
         Left            =   240
         Top             =   240
         Width           =   5535
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Speed"
      Height          =   3495
      Left            =   0
      TabIndex        =   13
      Top             =   3480
      Width           =   3975
      Begin VB.CommandButton Command2 
         Caption         =   "Convert"
         Height          =   375
         Left            =   1200
         TabIndex        =   16
         Top             =   3000
         Width           =   1455
      End
      Begin VB.Frame Frame4 
         Caption         =   "To"
         Height          =   2535
         Left            =   2040
         TabIndex        =   15
         Top             =   240
         Width           =   1815
         Begin VB.OptionButton Option6 
            Caption         =   "km\h"
            Height          =   255
            Left            =   240
            TabIndex        =   24
            Top             =   1920
            Width           =   1335
         End
         Begin VB.OptionButton Option5 
            Caption         =   "km\s"
            Height          =   255
            Left            =   240
            TabIndex        =   23
            Top             =   1440
            Width           =   1335
         End
         Begin VB.OptionButton Option4 
            Caption         =   "m\s"
            Height          =   255
            Left            =   240
            TabIndex        =   22
            Top             =   960
            Width           =   1335
         End
         Begin VB.TextBox Text9 
            Height          =   375
            Left            =   120
            TabIndex        =   18
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "From"
         Height          =   2535
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   1815
         Begin VB.OptionButton Option3 
            Caption         =   "km\h"
            Height          =   255
            Left            =   240
            TabIndex        =   21
            Top             =   1920
            Width           =   1335
         End
         Begin VB.OptionButton Option2 
            Caption         =   "km\s"
            Height          =   255
            Left            =   240
            TabIndex        =   20
            Top             =   1440
            Width           =   1335
         End
         Begin VB.OptionButton Option1 
            Caption         =   "m\s"
            Height          =   255
            Left            =   240
            TabIndex        =   19
            Top             =   960
            Width           =   1335
         End
         Begin VB.TextBox Text8 
            Height          =   375
            Left            =   120
            TabIndex        =   17
            Top             =   360
            Width           =   1575
         End
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Triangle"
      Height          =   3495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1935
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   2640
         Width           =   1695
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Check"
         Height          =   315
         Left            =   480
         TabIndex        =   11
         Top             =   3120
         Width           =   975
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   2160
         Width           =   1695
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   1680
         Width           =   1695
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   1200
         Width           =   1695
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1320
         TabIndex        =   3
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   720
         TabIndex        =   2
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "Results"
         Height          =   255
         Left            =   720
         TabIndex        =   7
         Top             =   960
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "c"
         Height          =   255
         Left            =   1440
         TabIndex        =   6
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "b"
         Height          =   255
         Left            =   840
         TabIndex        =   5
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "a"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   240
         Width           =   375
      End
   End
   Begin VB.Label Label5 
      Caption         =   "Lab2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   60
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   2280
      TabIndex        =   33
      Top             =   840
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x1, y1, x2, y2, sx, sy, w, h As Integer
Dim s1 As Byte, s2 As Byte, x As Single, y As Single
Dim ff, xx, yy As Long
Private Sub Command1_Click()
    Dim a, b, c As Integer
    a = Val(Text1.Text)
    b = Val(Text2.Text)
    c = Val(Text3.Text)
If (a >= b + c) Or (b >= a + c) Or (c >= a + b) Then
    Text4.Text = "не сущ"
Else
    Text4.Text = "сущ"
End If
If a = b And a = c Then
    Text5.Text = "равност"
Else
    Text5.Text = "не равност"
End If
If a = b Or a = c Or b = c Then
    Text6.Text = "равнобед"
Else
    Text6.Text = "не равнобед"
End If
    If (a ^ 2 = b ^ 2 + c ^ 2) Or (b ^ 2 = a ^ 2 + c ^ 2) Or (c ^ 2 = a ^ 2 + b ^ 2) Then
    Text7.Text = "прямоуг"
Else
    Text7.Text = "не прямоуг"
End If
End Sub


Private Sub Command2_Click()
    x = Val(Text8.Text)
If s1 = 1 Then
    If s2 = 1 Then y = x
    If s2 = 2 Then y = x / 1000
    If s2 = 3 Then y = x * 3.6
End If
If s1 = 2 Then
    If s2 = 1 Then y = x * 1000
    If s2 = 2 Then y = x
    If s2 = 3 Then y = x * 3600
End If
If s1 = 3 Then
    If s2 = 1 Then y = x / 3.6
    If s2 = 2 Then y = x / 3600
    If s2 = 3 Then y = x
End If
Text9.Text = Str(y)
    
End Sub

Private Sub Command3_Click()
    Dim n, k As Integer
Dim info As String
n = Val(TxtLet.Text)
If n >= 10 And n <= 20 Then
 info = "Лет"
Else
 k = n Mod 10
 Select Case k
 Case 1
 info = "Год"
 Case 2, 3, 4
 info = "Года"
 Case Else
 info = "Лет"
 End Select
End If
LblInfo.Text = info
Select Case n
 Case Is < 7
 info = "Детский ад"
 Case 7 To 16
 info = "Учеба в школе"
 Case 17 To 21
 info = "Вуз"
 Case 22 To 55
 info = "Трудовая деятельность"
 Case Else
 info = "Возможно пенсия"
End Select
TxtLet.Text = info
End Sub

Private Sub Command4_Click()
    If Exp(ff) > 10 And Exp(ff) < 1 Then
        Text12.Text = Exp(ff)
    End If
    If (Abs(ff + yy)) ^ 1 / 3 < 0.5 And (Abs(ff + y)) ^ 1 / 3 > 0.1 Then
        Text12.Text = (Abs(ff + yy)) ^ 1 / 3
    Else
        Text12.Text = yy * ff ^ 2
    End If
End Sub

Private Sub Form_Load()
    x1 = Pole.Left
y1 = Pole.Top
x2 = Pole.Width + x0
y2 = Pole.Height + y0
sx = 100
sy = 100
End Sub

Private Sub Option1_Click()
    s1 = 1
End Sub

Private Sub Option2_Click()
    s1 = 2
End Sub

Private Sub Option3_Click()
    s1 = 3
End Sub

Private Sub Option4_Click()
    s2 = 1
End Sub

Private Sub Option5_Click()
    s2 = 2
End Sub

Private Sub Option6_Click()
    s2 = 3
End Sub

Private Sub Option7_Click()
ff = xx ^ 2
End Sub

Private Sub Option8_Click()
ff = Exp(xx)
End Sub

Private Sub Timer1_Timer()
    Shar.Left = Shar.Left + sx
Shar.Top = Shar.Top + sy
Shar.Height = Shar.Height - 1
Shar.Width = Shar.Width - 1
w = Shar.Width
h = Shar.Height
If (Shar.Left < x1) Or (Shar.Left + w > x2) Then sx = sx * (-1)
If (Shar.Top < y1) Or (Shar.Top + h > y2) Then sy = sy * (-1)
If w < 20 Or h < 20 Then
 MsgBox "fuck", 48, “move”
 End
End If
End Sub
