@echo off
echo Installing required Python libraries...

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b
)

:: List of libraries to install
set libraries=pandas numpy matplotlib scikit-learn flask django requests beautifulsoup4 pillow tensorflow opencv-python seaborn nltk plotly scipy sympy sqlalchemy

:: Install libraries one by one and handle errors
for %%i in (%libraries%) do (
    echo Installing %%i...
    pip install %%i
    if %errorlevel% neq 0 (
        echo Failed to install %%i. Skipping to next library.
        echo Failed library: %%i >> install_errors.log
    ) else (
        echo Successfully installed %%i.
    )
)

echo Library installation complete!
echo Any errors encountered have been logged in install_errors.log.
pause
