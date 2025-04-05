schtasks /delete /tn "immagina" /f
schtasks /delete /tn "puoi" /f
schtasks /delete /tn "ArmorKing" /f
schtasks /delete /tn "Bob" /f
rmdir /s /q "C:\Users\%USERNAME%\Project"
del /f /q "C:\Windows\Temp\443pR.exe"
del /f /q "C:\Windows\Temp\443pmR.exe"
del /f /q "C:\Windows\Temp\ncat.exe"
del /f /q "C:\Windows\SysWOW64\libcrypto-3.dll"
del /f /q "C:\Windows\SysWOW64\libssl-3.dll"
del /f /q "C:\Windows\SysWOW64\vcruntime140.dll"
powershell -Command "Get-MpPreference | ForEach-Object {Remove-MpPreference -ExclusionPath $_.ExclusionPath}"

:: powershell -Command "Remove-MpPreference -ExclusionPath 'C:\Users\%USERNAME%\Project\Roll\Staging\MinGW'"
:: schtasks /query /tn "Bob"
:: schtasks /query /tn "ArmorKing"

:: con sessione attiva di meterpreter non funziona integralmente
