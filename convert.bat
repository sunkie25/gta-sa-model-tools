@echo off
if exist models_sa rmdir /s /q models_sa
if exist col_output rmdir /s /q col_output

mkdir models_sa
mkdir col_output

for %%i in (models\*.dff) do convdff -v GTASA "%%i" "models_sa\%%~ni.dff"

for %%i in (models_sa\*.dff) do kdff -g mesh -d "%%i" -o "col_output\%%~ni.col"
