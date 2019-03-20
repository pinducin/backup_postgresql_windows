# backup_postgresql_windows

Automatización del backup de PostgreSQL

# Pasos

- Modificar el script con la ruta correcta donde se encuentra el pg_dump.exe
- Modificar el script con la ruta correcta donde se almacenará el archivo del backup
- Modificar el pg_hba.conf para que al usuario postgres no le solicite contraseña desde la PC local.
- Crear una tarea para que ejecute el script a una hora determinada todo los dias.
