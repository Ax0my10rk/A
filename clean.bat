schtasks /delete /tn "Bob" /f
schtasks /delete /tn "ArmorKing" /f
rmdir /s /q "C:\Users\%USERNAME%\Project"
del /f /q "C:\Windows\SysWOW64\libcrypto-3.dll"
del /f /q "C:\Windows\SysWOW64\libssl-3.dll"
del /f /q "C:\Windows\Temp\ncat.exe"
timeout /t 5 >nul
powershell -Command "Get-MpPreference | ForEach-Object {Remove-MpPreference -ExclusionPath $_.ExclusionPath}"
:: powershell -Command "Remove-MpPreference -ExclusionPath 'C:\Users\%USERNAME%\Project\Roll\Staging\MinGW'"
:: schtasks /query /tn "Bob"
:: schtasks /query /tn "ArmorKing"

:: con sessione attiva di meterpreter non funziona integralmente
