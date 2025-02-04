Function UDF_Regex(texto, padrão)

    Set regex = CreateObject("VBScript.Regexp")
    Dim resultado()
    regex.Pattern = padrão
    regex.Global = True
    Set valores = regex.Execute(texto)
    n = 0
    For Each valor In valores
        ReDim Preserve resultado(n)
        resultado(n) = valor
        n = n + 1
    Next

    UDF_Regex = resultado

End Function
