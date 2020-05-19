..\..\bin\cellc-cs.exe -d project.txt .
csc.exe -target:exe -out:send-msgs.exe *.cs
@if not errorlevel 1 (
  @echo To run the program now type:
  @echo   send-msgs init-state.txt msg-list.txt final-state.txt
  @echo:
  @echo The program will load an initial state for the automaton from
  @echo init-state.txt, a list of messages to send to it from msg-list.txt
  @echo and will save its final state in final-state.txt
  @echo:
)
