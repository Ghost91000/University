VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7890
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8895
   LinkTopic       =   "Form1"
   ScaleHeight     =   7890
   ScaleWidth      =   8895
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame10 
      Caption         =   "Year"
      Height          =   3375
      Left            =   2880
      TabIndex        =   37
      Top             =   2280
      Width           =   5895
      Begin VB.CommandButton Command6 
         Caption         =   "Осень"
         Height          =   615
         Left            =   4680
         TabIndex        =   44
         Top             =   2520
         Width           =   975
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Лето"
         Height          =   615
         Left            =   3240
         TabIndex        =   43
         Top             =   2520
         Width           =   975
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Весна"
         Height          =   615
         Left            =   1680
         TabIndex        =   42
         Top             =   2520
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Зима"
         Height          =   615
         Left            =   240
         TabIndex        =   41
         Top             =   2520
         Width           =   975
      End
      Begin VB.HScrollBar HScroll7 
         Height          =   495
         Left            =   1440
         Max             =   15
         Min             =   1
         TabIndex        =   40
         Top             =   360
         Value           =   1
         Width           =   4215
      End
      Begin VB.TextBox Text8 
         Height          =   495
         Left            =   240
         TabIndex        =   39
         Top             =   360
         Width           =   975
      End
      Begin VB.Image Image1 
         Height          =   1335
         Left            =   240
         Stretch         =   -1  'True
         Top             =   1080
         Width           =   5415
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "Temperature"
      Height          =   3375
      Left            =   120
      TabIndex        =   27
      Top             =   2280
      Width           =   2655
      Begin VB.TextBox Text7 
         Height          =   495
         Left            =   1920
         TabIndex        =   30
         Top             =   1440
         Width           =   615
      End
      Begin VB.TextBox Text6 
         Height          =   495
         Left            =   120
         TabIndex        =   29
         Top             =   1440
         Width           =   615
      End
      Begin VB.VScrollBar VScroll1 
         Height          =   2655
         LargeChange     =   10
         Left            =   840
         Max             =   -40
         Min             =   100
         TabIndex        =   28
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label6 
         Caption         =   "-40"
         Height          =   255
         Left            =   1920
         TabIndex        =   36
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label5 
         Caption         =   "-40"
         Height          =   255
         Left            =   480
         TabIndex        =   35
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label4 
         Caption         =   "100"
         Height          =   255
         Left            =   480
         TabIndex        =   34
         Top             =   480
         Width           =   375
      End
      Begin VB.Label Label3 
         Caption         =   "212"
         Height          =   255
         Left            =   1920
         TabIndex        =   33
         Top             =   480
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "F*"
         Height          =   255
         Left            =   2160
         TabIndex        =   32
         Top             =   1200
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "C*"
         Height          =   255
         Left            =   360
         TabIndex        =   31
         Top             =   1200
         Width           =   375
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Figures"
      Height          =   2175
      Left            =   120
      TabIndex        =   12
      Top             =   5640
      Width           =   8655
      Begin VB.Frame Frame4 
         Caption         =   "Select figure"
         Height          =   1695
         Left            =   120
         TabIndex        =   23
         Top             =   240
         Width           =   1695
         Begin VB.OptionButton Option2 
            Caption         =   "Квадрат"
            Height          =   375
            Left            =   120
            TabIndex        =   26
            Top             =   720
            Width           =   1455
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Пряомоуг"
            Height          =   375
            Left            =   120
            TabIndex        =   25
            Top             =   240
            Width           =   1455
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Окружность"
            Height          =   375
            Left            =   120
            TabIndex        =   24
            Top             =   1200
            Width           =   1455
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Width"
         Height          =   615
         Left            =   1920
         TabIndex        =   21
         Top             =   240
         Width           =   2295
         Begin VB.HScrollBar HScroll1 
            Height          =   255
            Left            =   240
            Max             =   20
            Min             =   1
            TabIndex        =   22
            Top             =   240
            Value           =   1
            Width           =   1815
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Style of fill"
         Height          =   615
         Left            =   1920
         TabIndex        =   19
         Top             =   840
         Width           =   2295
         Begin VB.HScrollBar HScroll2 
            Height          =   255
            Left            =   240
            Max             =   7
            TabIndex        =   20
            Top             =   240
            Width           =   1815
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Border style"
         Height          =   615
         Left            =   1920
         TabIndex        =   17
         Top             =   1440
         Width           =   2295
         Begin VB.HScrollBar HScroll3 
            Height          =   255
            Left            =   240
            Max             =   6
            TabIndex        =   18
            Top             =   240
            Width           =   1815
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Color"
         Height          =   1575
         Left            =   4320
         TabIndex        =   13
         Top             =   240
         Width           =   2295
         Begin VB.HScrollBar HScroll4 
            Height          =   255
            Left            =   240
            Max             =   255
            TabIndex        =   16
            Top             =   240
            Width           =   1815
         End
         Begin VB.HScrollBar HScroll5 
            Height          =   255
            Left            =   240
            Max             =   255
            TabIndex        =   15
            Top             =   1200
            Width           =   1815
         End
         Begin VB.HScrollBar HScroll6 
            Height          =   255
            Left            =   240
            Max             =   255
            TabIndex        =   14
            Top             =   720
            Width           =   1815
         End
      End
      Begin VB.Shape Shape1 
         Height          =   1095
         Left            =   7080
         Top             =   600
         Width           =   1095
      End
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   6480
      TabIndex        =   9
      Top             =   1680
      Width           =   615
   End
   Begin VB.Frame Frame2 
      Caption         =   "List2"
      Height          =   2175
      Left            =   5640
      TabIndex        =   4
      Top             =   120
      Width           =   3135
      Begin VB.ListBox List2 
         Height          =   960
         ItemData        =   "Form1.frx":0000
         Left            =   120
         List            =   "Form1.frx":0013
         Style           =   1  'Checkbox
         TabIndex        =   11
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   1920
         TabIndex        =   10
         Top             =   1560
         Width           =   615
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   1560
         Width           =   615
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Add"
         Height          =   375
         Left            =   1560
         TabIndex        =   7
         Top             =   960
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Del"
         Height          =   375
         Left            =   2280
         TabIndex        =   6
         Top             =   960
         Width           =   615
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Form1.frx":003E
         Left            =   1560
         List            =   "Form1.frx":0051
         TabIndex        =   5
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1200
      TabIndex        =   3
      Top             =   1680
      Width           =   615
   End
   Begin VB.Frame Frame1 
      Caption         =   "List1"
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1815
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   1560
         Width           =   615
      End
      Begin VB.ListBox List1 
         Height          =   1035
         ItemData        =   "Form1.frx":007C
         Left            =   240
         List            =   "Form1.frx":008F
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Label Label7 
      Caption         =   "Lab1"
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   48.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   2640
      TabIndex        =   38
      Top             =   600
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Combo1.ListIndex = 0
    Combo1.RemoveItem Combo1.ListIndex
    Text5.Text = Combo1.ListCount
End Sub

Private Sub Command2_Click()
    Combo1.AddItem Combo1.Text
    Text5.Text = Combo1.ListCount
End Sub

Private Sub Command3_Click()
    Image1.Picture = LoadPicture("C:\Users\Vlad\Desktop\University\1course\2semester\Tech\Meerson\Labs\Lab1\winter.jpg")
End Sub

Private Sub Command4_Click()
    Image1.Picture = LoadPicture("C:\Users\Vlad\Desktop\University\1course\2semester\Tech\Meerson\Labs\Lab1\spring.jpg")
End Sub

Private Sub Command5_Click()
    Image1.Picture = LoadPicture("C:\Users\Vlad\Desktop\University\1course\2semester\Tech\Meerson\Labs\Lab1\summer.jpg")
End Sub

Private Sub Command6_Click()
    Image1.Picture = LoadPicture("C:\Users\Vlad\Desktop\University\1course\2semester\Tech\Meerson\Labs\Lab1\atumn.jpg")
End Sub

Private Sub HScroll1_Change()
    Shape1.BorderWidth = HScroll1.Value
End Sub

Private Sub HScroll2_Change()
    Shape1.FillStyle = HScroll2.Value
End Sub

Private Sub HScroll3_Change()
    Shape1.BorderStyle = HScroll3.Value
End Sub

Private Sub HScroll4_Change()
    Shape1.BorderColor = RGB(HScroll4.Value, HScroll5.Value, HScroll6.Value)
End Sub

Private Sub HScroll5_Change()
    Shape1.BorderColor = RGB(HScroll4.Value, HScroll5.Value, HScroll6.Value)
End Sub

Private Sub HScroll6_Change()
    Shape1.BorderColor = RGB(HScroll4.Value, HScroll5.Value, HScroll6.Value)
End Sub

Private Sub HScroll7_Change()
    Text8.Text = Str(HScroll7.Value)
    Frame10.BackColor = QBColor(HScroll7.Value)
End Sub

Private Sub HScroll7_Scroll()
    Text8.Text = Str(HScroll7.Value)
    Frame10.BackColor = QBColor(HScroll7.Value)
End Sub

Private Sub List1_Click()
    Text2.Text = List1.ListIndex
    Text1.Text = List1.Text
End Sub

Private Sub List2_Click()
    Text4.Text = List1.ListIndex
    Text3.Text = List1.Text
End Sub

Private Sub Option1_Click()
    Shape1.Shape = 0
End Sub

Private Sub Option2_Click()
    Shape1.Shape = 1
End Sub

Private Sub Option3_Click()
    Shape1.Shape = 3
End Sub

Private Sub VScroll1_Change()
    Dim tempC, tempF As Integer
    tempC = CInt(VScroll1.Value)
    Text6.Text = Str(tempC)
    tempF = CInt(tempC * 9 / 5 + 32)
    Text7.Text = Str(tempF)
End Sub
