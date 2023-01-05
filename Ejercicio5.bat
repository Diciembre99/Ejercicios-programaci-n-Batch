@echo off
goto menu
:agregar_contacto
echo Ingrese el nombre del contacto:
set /p nombre=
echo Ingrese los apellidos del contacto:
set /p apellidos=
echo Ingrese la edad del contacto:
set /p edad=
echo %nombre% - %apellidos% - %edad% >> agenda.txt
echo Contacto agregado correctamente.
pause
goto menu

:mostrar_contactos
type agenda.txt
pause
goto menu

:buscar_contactos
echo Ingrese el nombre del contacto a buscar:
set /p nombre=
find /i "%nombre%" agenda.txt > resultados.txt
if %ERRORLEVEL% == 0 (
  type resultados.txt
) else (
  echo No se ha encontrado ningún contacto con ese nombre.
)
del resultados.txt
pause
goto menu

:menu
cls
echo Seleccione una opcion:
echo 1. Agrega Contacto
echo 2. Mostrar Contactos
echo 3. Buscar Contactos
set /p opcion=
if %opcion% == 1 goto agregar_contacto
if %opcion% == 2 goto mostrar_contactos
if %opcion% == 3 goto buscar_contactos
echo Opcion invalida.
pause
goto menu
