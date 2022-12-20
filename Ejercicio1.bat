@echo off
goto ejercicio1
:ejercicio1
cd ..
set contador=0
dir>ficheros.txt
FOR /F "skip=2 tokens=3" %%a IN (ficheros.txt) DO (
  IF %%a GTR 500  (
    set /a contador=contador+1
    REM Contador de ficheros con mas de 500 B
  ) else (
      set num=0
      set /a num=%%a-999
      IF num GTR 0 (
      set /a contador=contador+1
      )
  )
)
contador>contador.txt
echo El directorio tiene %contador% ficheros de texto con un peso mayor de 500B.
pause>nul

:ejercicio2
set segundo
set minuto
set hora
time>time.txt
FOR /F "tokens=5-7 delims=:" %%a %%b %%c IN (time.txt) DO (
echo Son las %%a horas, %%b minutos y %%c segundos.
)
pause>nul
exit
