@echo off
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set year=%date:~10,4%
set month=%date:~4,2%
set day=%date:~7,2%
set filename=C:\backup\%year%%month%%day%-%hour%%min%-postgres.sql

echo Iniciando el backup

"C:\Program Files\PostgreSQL\11\bin\pg_dump.exe" -U postgres -f %filename% postgres