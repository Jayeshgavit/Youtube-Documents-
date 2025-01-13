@echo off
echo Listing installed Python libraries...

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b
)

:: List installed libraries directly in the CMD
pip freeze

:: Check if the command was successful
if %errorlevel% neq 0 (
    echo Failed to list installed libraries. Please check for errors.
    exit /b
)

pause
