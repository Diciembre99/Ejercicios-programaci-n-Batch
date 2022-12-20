@echo off
:menu
echo ********************************
echo ****  Menu de opciones    ******
echo **** 1.Agregar Contactos  ******
echo **** 2.Mostrar Contactos  ******
echo **** 3.Buscar Contactos   ******
echo **** 4.  Salir            ******
echo ********************************
echo.
set /p opc="Escribe la opcion que quieras: "
IF %opc% EQU 1 (
  set /p nombre="Escribe el nombre del contacto: "
  set /p apellido="Escribe los apellidos del contacto: "
  set /p edad="Escribe la edad del contacto: "
  goto nombre

  pause>nul
  REM Agregar
)
:nombre
%nombre%>contactos.txt
REM IF opc EQU 2 (
REM   goto mostrar
REM   REM mostar
REM )
REM IF opc EQU 3 (
REM   goto buscar
REM   REM buscar
REM )
REM IF opc EQU 4 (
REM   goto salir
REM   REM Salir
REM )
pause>nul
goto menu
exit
