..\..\bin\cellc-cs.exe -d project.txt .
csc.exe -target:exe -out:test-water-sensor.exe *.cs
@if not errorlevel 1 (
  @echo To run the program now type:
  @echo   test-water-sensor
  @echo:
)
