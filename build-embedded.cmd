@echo off
if exist temp rd /s /q temp
if exist debug rd /s /q debug
if exist run-northwind-queries.exe del run-northwind-queries.exe
md temp debug
compiler\bin\cellc-cs.exe -d -g project\types.txt project\embedded.txt temp
if not errorlevel 1 (
  echo:
  csc.exe -out:run-northwind-queries.exe temp\*.cs src\main.cs
  if not errorlevel 1 (
    echo Now type:
    echo   run-northwind-queries.exe dataset.txt
  )
)
