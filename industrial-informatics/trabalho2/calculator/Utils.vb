Module Utils

    Public Sub Calculate(ByRef result As Double, ByVal n As Double, ByVal op As Char)
        'Handle any bug that might appear with the text box numeric assert

        Select Case op
            Case "+"
                result += n
            Case "-"
                result -= n
            Case "x"
                result *= n
            Case "/"
                result /= n
            Case Else
                result = n
        End Select
    End Sub

    Public Function getHistory() As String
        Dim history As String = ""
        Try
            FileOpen(1, System.IO.Directory.GetCurrentDirectory + "\history.txt", OpenMode.Input)

            While (Not EOF(1))
                history = history & LineInput(1) & vbCrLf
            End While

            FileClose(1)
        Catch ex As Exception
            ' Could not open or read the file
            history = ex.Message
        End Try

        Return history
    End Function

    Public Sub saveHistory(ByVal history As String)
        FileOpen(1, System.IO.Directory.GetCurrentDirectory + "\history.txt", OpenMode.Append)
        PrintLine(1, history)
        FileClose(1)
    End Sub

    Public Sub clearHistory()
        FileOpen(1, System.IO.Directory.GetCurrentDirectory + "\history.txt", OpenMode.Output)
        PrintLine(1, "")
        FileClose(1)
    End Sub
End Module
