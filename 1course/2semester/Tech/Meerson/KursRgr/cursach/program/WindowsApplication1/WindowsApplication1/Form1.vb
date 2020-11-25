Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Select Case ComboBox1.Text
            Case 2
                Select Case CInt(ComboBox2.Text)
                    Case 8
                        Label1.Text = TwoEight(TextBox1.Text, 2) ' Function(переводимое ч-ло, сист. счисления переводимого ч-ла)
                    Case 10
                        Label1.Text = TwoTen(TextBox1.Text, 2)
                    Case 16
                        Label1.Text = TwoSixteen(TextBox1.Text, 2)
                End Select
            Case 8
                Select Case CInt(ComboBox2.Text)
                    Case 2
                        Label1.Text = TwoEight(TextBox1.Text, 8)
                    Case 10
                        Label1.Text = EightTen(TextBox1.Text, 8)
                    Case 16
                        Label1.Text = EightSixteen(TextBox1.Text, 8)
                End Select
            Case 10
                Select Case CInt(ComboBox2.Text)
                    Case 8
                        Label1.Text = EightTen(TextBox1.Text, 10)
                    Case 2
                        Label1.Text = TwoTen(TextBox1.Text, 10)
                    Case 16
                        Label1.Text = TenSixteen(TextBox1.Text, 10)
                End Select
            Case 16
                Select Case CInt(ComboBox2.Text)
                    Case 8
                        Label1.Text = EightSixteen(TextBox1.Text, 16)
                    Case 10
                        Label1.Text = TenSixteen(TextBox1.Text, 16)
                    Case 2
                        Label1.Text = TwoSixteen(TextBox1.Text, 16)
                End Select
        End Select
    End Sub

    Function TwoEight(ByVal num As String, ByVal from As Long) As Long
        Dim Ans As String = ""
        Dim e As Integer, W As Double
        Dim Q As String = ""
        Dim num1 As String
        e = Len(num) - 1
        If from = 2 Then
            num1 = TwoTen(num, 2)
            Do While num1 >= 1
                W = Int(num1 / 8)
                Q = num1 - (W * 8)
                num1 = W
                Ans = Ans + Q.ToString
            Loop
            Ans = StrReverse(Ans)
            TwoEight = Ans
        ElseIf from = 8 Then
            num1 = EightTen(num, 8)
            Do While num1 >= 1
                W = Int(num1 / 2)
                Q = num1 - (W * 2)
                num1 = W
                Ans = Ans + Q.ToString
            Loop
            Ans = StrReverse(Ans)
            TwoEight = Ans
        End If
        TwoEight = Ans
    End Function

    Function TwoTen(ByVal num As String, ByVal from As Long) As String
        Dim Ans1 As String = ""
        Dim Ans As String = "0"
        Dim e As Integer, W As Double
        Dim Q As String = ""
        e = Len(num) - 1
        If from = 2 Then
            For i = 1 To Len(num)
                Ans = CStr(CInt(Ans) + CInt(Mid(num, i, 1)) * 2 ^ e)
                e = e - 1
            Next i
            TwoTen = Ans
        ElseIf from = 10 Then
            Do While num >= 1
                W = Int(num / 2)
                Q = num - (W * 2)
                num = W
                Ans1 = Ans1 + Q.ToString
            Loop
            Ans1 = StrReverse(Ans1)
            TwoTen = Ans1
        End If
    End Function

    Function TwoSixteen(ByVal num As String, ByVal from As Long) As String
        Dim Ans As Long
        If from = 2 Then
            TwoSixteen = Hex(TwoTen(num, 2))
        ElseIf from = 16 Then
            Ans = CLng("&H" & num)
            TwoSixteen = TwoTen(Ans, 10)
        End If
    End Function

    Function EightTen(ByVal num As String, ByVal from As Long) As Long
        Dim Ans As String = "0"
        Dim Ans1 As String
        Dim e As Integer, W As Double, num1 As String
        Dim Q As String = ""
        e = Len(num) - 1
        If from = 8 Then
            For i = 1 To Len(num)
                Ans = CStr(CInt(Ans) + CInt(Mid(num, i, 1)) * 8 ^ e)
                e = e - 1
            Next i
            EightTen = Ans
        ElseIf from = 10 Then
            Do While num >= 1
                W = Int(num / 8)
                Q = num - (W * 8)
                num = W
                Ans1 = Ans1 + Q.ToString
            Loop
            Ans1 = StrReverse(Ans1)
            EightTen = Ans1
        End If
    End Function

    Function EightSixteen(ByVal num As String, ByVal from As Long) As String
        Dim Ans As Long
        If from = 8 Then
            EightSixteen = Hex(EightTen(num, 8))
        ElseIf from = 16 Then
            Ans = CLng("&H" & num)
            EightSixteen = EightTen(Ans, 10)
        End If
    End Function

    Function TenSixteen(ByVal num As String, ByVal from As Long) As String
        If from = 10 Then
            TenSixteen = Hex(num)
        ElseIf from = 16 Then
            TenSixteen = CLng("&H" & num)
        End If
    End Function

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim a, b As Long
        Dim Ans As Long
        Select Case CInt(ComboBox5.Text)
            Case 2
                a = TwoTen(TextBox2.Text, 2)
            Case 8
                a = EightTen(TextBox2.Text, 8)
            Case 10
                a = TextBox2.Text
            Case 16
                a = TenSixteen(TextBox2.Text, 16)
        End Select
        Select Case CInt(ComboBox6.Text)
            Case 2
                b = TwoTen(TextBox3.Text, 2)
            Case 8
                b = EightTen(TextBox3.Text, 8)
            Case 10
                b = TextBox3.Text
            Case 16
                b = TenSixteen(TextBox3.Text, 16)
        End Select
        Select Case ComboBox3.Text
            Case "+"
                Ans = a + b
            Case "-"
                Ans = a - b
            Case "/"
                Ans = a / b
            Case "*"
                Ans = a * b
        End Select
        Select Case CInt(ComboBox4.Text)
            Case 2
                Label2.Text = TwoTen(Ans, 10)
            Case 8
                Label2.Text = EightTen(Ans, 10)
            Case 10
                Label2.Text = Ans
            Case 16
                Label2.Text = TenSixteen(Ans, 10)
        End Select

    End Sub
End Class
