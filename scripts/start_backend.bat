@echo off
title Stock Analyzer - Backend Server
cd /d "%~dp0..\backend"

echo ========================================================
echo 🐍 Starting Stock Analyzer Backend (Flask API)
echo ========================================================

:: Check for .env file
if not exist ".env" (
    echo 🔧 Creating default .env file...
    echo DATABASE_URL=sqlite:///stock_analyzer.db> .env
    echo SECRET_KEY=super-secret-key-stock-analyzer-2026-change-in-production>> .env
)

:: Check for virtual environment
if not exist "virtualstk" (
    echo 📦 Creating Python virtual environment (virtualstk)...
    python -m venv virtualstk
)

:: Activate virtual environment
echo ⚡ Activating virtual environment...
call virtualstk\Scripts\activate.bat

:: Install/verify requirements
if exist "requirements.txt" (
    echo 📦 Checking backend dependencies...
    pip install -r requirements.txt
)

echo.
echo ✅ Backend is starting on http://localhost:5000
echo ========================================================
python app.py
pause
