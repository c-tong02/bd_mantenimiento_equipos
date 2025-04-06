## Flujo general:
Como flujo general, primero se procedió a limpiar las tablas y reiniciar sus ID correspondientes para la base de datos del modelo dimensional.

![image](https://github.com/user-attachments/assets/5b5da345-f0e6-4896-914d-d548ec47074a)

## Poblar dimensiones:
En el proceso de población de dimensiones, se crearon:
- 10 registros para dimensión equipos.
- 10 registros para dimensión técnicos.
- 20 registros para dimensión fechas.

![image](https://github.com/user-attachments/assets/a7c2a6f2-25c7-4f75-b55f-edeee81501f3)

## Poblar fact table:
En el proceso de población de la fact table, se crearon 20 registros. Se utilizó una combinación de 'Sorts' y 'Joins' para poblar esta tabla.

![image](https://github.com/user-attachments/assets/18d6a3f5-304b-4982-8609-671390dba0ac)

## Vinculación a job automático
Se vinculó el proyecto a un job que se ejecuta automáticamente de manera periódica.

![image](https://github.com/user-attachments/assets/ea8e4f68-dec0-473c-b700-1cd190f215c2)

