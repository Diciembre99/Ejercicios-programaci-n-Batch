@echo off
set ano=%date:~-4%
set mes=%mes:
set dia=%date:~0,2%
set mes=%date:~3,2%
echo El dia de hoy es %dia%
echo El mes actualmente es el %mes%
echo Estamos en el %ano%
pause>nul
exit
