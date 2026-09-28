@echo off
title Stock Analyzer - Frontend App
cd /d "%~dp0..\frontend"

echo ========================================================
echo 💻 Starting Stock Analyzer Frontend (React)
echo ========================================================

:: Check for node_modules
if not exist "node_modules" (
    echo 📦 Installing frontend dependencies (npm install)...
    call npm install
)

echo.
echo ✅ Frontend is starting on http://localhost:3000
echo ========================================================
call npm start
pause
