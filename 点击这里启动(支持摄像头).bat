@echo off
echo =======================================================
echo   Christmas Tree Launcher (Camera Support)
echo =======================================================
echo.
echo Starting local server...
echo Please do not close this window.
echo.

:: Check for Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH!
    echo Please install Python and check "Add Python to PATH".
    echo.
    echo Press any key to exit...
    pause >nul
    exit
)

:: Open browser
start "" "http://localhost:8000/1.html"

:: Start Server
python -m http.server 8000

pause