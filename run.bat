@echo off

:: get the latest item filters
"%RUN_GIT%" -C "%POE2_FILTERS%\200ping-Poe2-Guild-Filter" pull

:: Call the PowerShell script
powershell -ExecutionPolicy Bypass -File "%POE2_FILTERS%\200ping-Poe2-Guild-Filter\combine.ps1"

:: run the game
%1

exit