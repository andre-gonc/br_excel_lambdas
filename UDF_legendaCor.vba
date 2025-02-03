Function UDF_legendaCor(cell)
    On Error Resume Next
    Dim cl, i&, j&, dict As Object, co
    ReDim cl(1 To cell.Rows.Count, 1 To cell.Columns.Count)
    For i = 1 To UBound(cl, 1)
        For j = 1 To UBound(cl, 2)
            With cell(i, j).Interior
                If Not .Gradient Is Nothing Then
                    With .Gradient
                        co = .ColorStops(1).Color * 100 + .ColorStops(2).Color * 10 + .ColorStops(.ColorStops.Count).Color
                        co = co + .Degree * 10 ^ 6
                        co = co + (.RectangleLeft + .RectangleRight * 2 + .RectangleTop * 3 + .RectangleBottom * 4) * 10 ^ 8
                    End With
                Else
                    co = .Color
                End If
            End With
            cl(i, j) = co ' Mantém o valor como número decimal
        Next
    Next
    UDF_legendaCor = cl
End Function
