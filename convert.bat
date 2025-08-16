@echo off
set LOGFILE=conversion_log.txt

echo --- Starting conversion process --- > %LOGFILE%

:: Delete existing folders if they exist
if exist models_sa rmdir /s /q models_sa >> %LOGFILE% 2>&1
if exist col_output rmdir /s /q col_output >> %LOGFILE% 2>&1

:: Create new folders
mkdir models_sa >> %LOGFILE% 2>&1
mkdir col_output >> %LOGFILE% 2>&1

echo Converting .dff files to models_sa... >> %LOGFILE%
for %%i in (models\*.dff) do (
    echo Processing %%i >> %LOGFILE%
    convdff -v GTASA "%%i" "models_sa\%%~ni.dff" >> %LOGFILE% 2>&1
)

echo Generating .col files... >> %LOGFILE%
for %%i in (models_sa\*.dff) do (
    echo Processing %%i >> %LOGFILE%
    kdff -g mesh -d "%%i" -o "col_output\%%~ni.col" >> %LOGFILE% 2>&1
)

echo Renaming collision files... >> %LOGFILE%
col_rename.exe >> %LOGFILE% 2>&1

echo --- Conversion process finished --- >> %LOGFILE%
echo Log saved in %LOGFILE%
pause
