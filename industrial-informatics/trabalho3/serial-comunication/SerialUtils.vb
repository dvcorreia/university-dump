Module SerialUtils
    Friend SP As New IO.Ports.SerialPort()
    Public is_configuration_valid As Boolean = False
    Public Sub configSerialPort(ByVal com As String, ByVal baudrate As String, ByVal parityBits As String, ByVal stopBits As String)
        With SP
            .PortName = com
            .BaudRate = CInt(baudrate)
            .DataBits = 8
            .StopBits = stopBitsP(stopBits)
            .Parity = parityBitsP(parityBits)
            .Encoding = System.Text.Encoding.UTF8
        End With
        is_configuration_valid = True
    End Sub

    Private Function stopBitsP(ByVal sb As String) As IO.Ports.StopBits
        Select Case sb
            Case "0"
                Return IO.Ports.StopBits.None
            Case "1"
                Return IO.Ports.StopBits.One
            Case "1,5"
                Return IO.Ports.StopBits.OnePointFive
            Case "2"
                Return IO.Ports.StopBits.Two
            Case Else
                Return IO.Ports.StopBits.One
        End Select
    End Function

    Private Function parityBitsP(ByVal pb As String) As IO.Ports.Parity
        Select Case pb
            Case "none"
                Return IO.Ports.Parity.None
            Case "even"
                Return IO.Ports.Parity.Even
            Case "odd"
                Return IO.Ports.Parity.Odd
            Case "mark"
                Return IO.Ports.Parity.Mark
            Case "space"
                Return IO.Ports.Parity.Space
            Case Else
                Return IO.Ports.Parity.None
        End Select
    End Function
End Module
