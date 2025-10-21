@echo off
setlocal enabledelayedexpansion

::  Durée en secondes (600 = 10 minutes - 3600 = 1heure)
set /a seconds=3000

:loop
cls
set /a min=seconds/60
set /a sec=seconds%%60
echo Mise en veille dans !min! minutes et !sec! secondes...
timeout /t 1 >nul
set /a seconds-=1
if !seconds! gtr 0 goto loop

:: Mettre en veille
rundll32.exe powrprof.dll,SetSuspendState 0,1,0