@echo off
:menu
echo.
echo   "-------    ----   \          /  | /          "
echo   "   |      |    |   \        /   |/           "
echo   "   |      |    |    \  /\  /    |\           "
echo   "___/       ----      \/  \/     | \  Recovery"
echo.
echo (C) SadFud
echo.
echo 1.Ver nueva configuracion
echo 2.Salir
set/p opc=Seleccionar opcion=
if %opc%==1 goto ver
if %opc%==2 goto salir
:ver
cls
netsh wlan show profile
pause>nul
set/p perfil=Introduce el nombre del perfil wifi=
cls
echo La calave se encontrara en la linea "Contenido de la clave."
netsh wlan show profile %perfil% key=clear
pause>nul
goto menu
:salir
exit


