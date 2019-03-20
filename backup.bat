::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Script para realizar el backup de una base de datos del PostgreSQL
::Deshabilito la salida por pantalla
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Modificar las siguientes variables con las rutas correctas
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set path="C:\Users\pindu\Desktop\backup_postgresql_windows"
set db=postgres
set ejecutable="C:\Program Files\PostgreSQL\11\bin\pg_dump.exe"
set usuario=postgres
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Obtención de los campos para armar el nombre del backup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set year=%date:~10,4%
set month=%date:~4,2%
set day=%date:~7,2%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Composición del nombre del archivo que va a contener el backup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set filename=%path%\%year%%month%%day%-%hour%%min%-%db%.sql
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Inicio del backup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Iniciando el backup
%ejecutable% -U %usuario% -f %filename% %db%
echo Backup finalizado
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Finalización del backup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::