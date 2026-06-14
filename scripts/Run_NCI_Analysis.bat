@echo off
setlocal enabledelayedexpansion

:: =====================================================================
:: NCI RDG Analysis Automation Script
:: Designed for use with Multiwfn, VMD, and Gnuplot
:: =====================================================================

:: Set the base directory and ensure the script operates from its location 
set "BASE_DIR=%~dp0"
cd /d "%BASE_DIR%"

:: 1. Input File Detection
:: Searches for supported wavefunction or checkpoint formats (.fch, .fchk, .wfn) 
set "INPUT_FILE="
for %%F in (*.fch *.fchk *.wfn) do (
    if not defined INPUT_FILE set "INPUT_FILE=%%F"
)

if not defined INPUT_FILE (
    echo [!] Error: No .fch, .fchk, or .wfn file found in the current directory.
    pause
    exit /b
)

:: 2. Workspace Management
:: Extracts filename and creates a unique subdirectory for the calculation 
for %%A in ("%INPUT_FILE%") do set "FOLDER_NAME=%%~nA"

echo [1/3] Preparing workspace for: %INPUT_FILE%
if not exist "%FOLDER_NAME%" mkdir "%FOLDER_NAME%"
move /Y "%INPUT_FILE%" "%FOLDER_NAME%\" >nul

:: Enter the subdirectory to perform analysis 
cd /d "%FOLDER_NAME%"

:: 3. Multiwfn Processing
:: Executes Reduced Density Gradient (RDG) analysis [cite: 4, 5, 6]
echo [2/3] Executing Multiwfn RDG Analysis...
(echo 20 & echo 1 & echo 2 & echo 2 & echo 3) | "%BASE_DIR%Multiwfn.exe" "%INPUT_FILE%" > nul

:: 4. Data Organization
:: Relocates output files to a dedicated visualization directory 
if not exist "VMD" mkdir VMD
if exist "func1.cub" move /Y "func1.cub" "VMD\func1.cub" >nul
if exist "func2.cub" move /Y "func2.cub" "VMD\func2.cub" >nul
if exist "output.txt" move /Y "output.txt" "VMD\output.txt" >nul

:: 5. Visualization Generation
:: Launches VMD and Gnuplot using external configuration scripts 
echo [3/3] Generating Visualizations...

if exist "%BASE_DIR%VMD\vmd.exe" (
    start "" /D "VMD" "%BASE_DIR%VMD\vmd.exe" -e "%BASE_DIR%RDGfill.vmd"
)

if exist "%BASE_DIR%gnuplot\bin\gnuplot.exe" (
    "%BASE_DIR%gnuplot\bin\gnuplot.exe" "%BASE_DIR%RDGscatter.gnu"
)

echo.
echo Analysis Complete for %FOLDER_NAME%. [cite: 7]
pause
