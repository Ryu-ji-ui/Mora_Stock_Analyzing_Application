@echo off
title Stock Analyzer Launcher
setlocal ENABLEEXTENSIONS

cd /d "%~dp0"

echo ========================================================
echo 📈 Stock Analyzer Application Launcher
echo ========================================================
echo.
echo Launching Backend (Flask) and Frontend (React) in separate windows...
echo.

:: Launch Backend Server
echo 🚀 Launching Backend Server...
start "Stock Analyzer Backend" cmd /k "call "%~dp0scripts\start_backend.bat""

:: Wait 3 seconds for backend to start up
timeout /t 3 /nobreak >nul

:: Launch Frontend Server
echo 🚀 Launching Frontend Application...
start "Stock Analyzer Frontend" cmd /k "call "%~dp0scripts\start_frontend.bat""

echo.
echo ========================================================
echo ✅ Both services launched!
echo.
echo 🌐 Backend API:  http://localhost:5000
echo 💻 Frontend App: http://localhost:3000
echo ========================================================
echo.
pause
