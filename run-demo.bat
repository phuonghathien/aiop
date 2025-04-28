:: AI-Oriented Programming Prototype Setup Script
@echo off
echo Setting up AI-Oriented Programming Prototype...
echo.

:: Navigate to the prototype directory
cd /d "%~dp0prototype"

:: Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo Node.js is not installed. Please install Node.js v16 or later.
    echo Visit: https://nodejs.org/
    pause
    exit /b 1
)

:: Check Node.js version
for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo Node.js version: %NODE_VERSION%

:: Install dependencies
echo Installing dependencies...
call npm install

:: Build the prototype
echo.
echo Building the prototype...
call npm run build

:: Run the demo
echo.
echo Running the AOP prototype demo...
echo.
call npm start

echo.
echo =======================================================
echo AI-Oriented Programming Prototype Demo Complete
echo =======================================================
echo.
echo To run the demo again, use:
echo   cd prototype
echo   npm start
echo.
pause
