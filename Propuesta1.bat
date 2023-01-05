@echo off
::Ejercicios para Ordenar Frutas En orden alfabetico::

:menu
cls
echo ***********************
echo *     Menu Opcion     *
echo ***********************
echo *  1. Agregar Frutas  *
echo *  2. Ver la lista    *
echo *  3. Ordenar lista   *
echo *  4. Buscar Frutas   *
echo *  5. Eliminar lista  *
echo *  6. Salir           *
echo ***********************

set /p opc="Escoge una opcion "
if %opc% == 1 goto agregar
if %opc% == 2 goto lista
if %opc% == 3 goto ordenar
if %opc% == 4 goto buscar
if %opc% == 5 goto eliminar
if %opc% == 6 goto salir
echo Seleccion no valida
goto menu

:agregar
cls
echo "Escribe la lista de frutas que deseas comprar "
set /p fruta= 
echo %fruta%>>fruta.txt
set /p opc= "Deseas agregar mas fruta? S/N "
if %opc% == S goto agregar 
if %opc% == N goto menu
echo opcion invalida
goto agregar

:lista
cls
type fruta.txt
echo Presiona una tecla para continuar...
pause>nul
goto menu

:ordenar
cls
sort fruta.txt>fruta_ordenada.txt
move /y fruta_ordenada.txt fruta.txt
cls
echo La lista se a ordenado
pause > nul
echo Presiona una tecla para continuar...
goto menu

:buscar
cls
echo Ingrese el nombre del contacto a buscar:
set /p fruta=
find /i "%fruta%" fruta.txt > resultados.txt
if %ERRORLEVEL% == 0 (
  type resultados.txt
) else (
  echo No se ha encontrado ningún contacto con ese nombre.
)
del resultados.txt
pause>nul
echo Presiona una tecla para continuar...
goto menu

:eliminar
cls
echo Escribe la fruta que deseas borrar
set /p fruta=
findstr /v %fruta% fruta.txt > temp.txt
del fruta.txt
rename temp.txt fruta.txt
echo Presiona una tecla para continuar...
pause>nul
goto menu

:Salir
exit
