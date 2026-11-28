@echo off
title Winning Post 10 2026 English Patch - Install
cd /d "%~dp0"
if not exist "%~dp0data\scripts\install.ps1" (
  echo.
  echo The patch files are missing.
  echo Please right-click the zip file, choose "Extract All...",
  echo then run INSTALL.bat from the extracted folder.
  echo.
  pause
  exit /b 1
)
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -File "%~dp0data\scripts\install.ps1"
echo.
pause
