@echo off
echo ========================================================
echo   Launching Amit Thakur Portfolio in Visual Studio Code
echo ========================================================
echo.
REM Change directory to the location of this script
cd /d "%~dp0"
echo Opening project in VS Code...
where code >nul 2>nul
if errorlevel 1 (
	echo.
	echo ERROR: 'code' command not found. Please ensure Visual Studio Code is installed and 'code' is available in your PATH.
	pause
	exit /b 1
)
code .
echo Opening preview in default web browser...
start "" "%~dp0index.html"
echo.
echo Done! Your portfolio is now open in VS Code and in your browser.
pause
