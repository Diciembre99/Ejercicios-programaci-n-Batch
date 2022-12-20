@echo off
echo %time%
set horas=%time:~0,2%
set minutos=%time:~3,2%
set segundos=%time:~6,2%
echo Son las %horas% horas, %minutos% minutos y %segundos% segundos 
pause>nul
exit