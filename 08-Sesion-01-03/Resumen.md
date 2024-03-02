Sacar el promedio de  los tres cortes de las notas de un estudiente, e indicar si aprobó o reprobó. 
Se conoce lo siguiente: 
* Primera nota (30%):
* Segunda nota (30%):
* Tercera nota (40%):
* Se aprueba con 3.0 o hasta 5.0.
* Se reprueba con 0.0 hasta menor que 3.0
* Se Aproxima la décima, solo cuando esta es igual o superior a 0,5. (2,95)
* Los campos de notas, solo admiten números decimales. 
* No se permite ingresar datos diferentes al rango 0.0 - 5.0 


* IEEE 830 => 
Requerimientos Funcionales (RF)
Requerimientos No Funcionales (RNF)

======================================
# Nota: 
-  CRUD: Corresponde al comportamiento de los datos, es decir, crear, modificar, eliminar y consultar uno o varios registros. 
	
## RF1: Gestionar la (CRUD) de los datos básicos de los estudiantes.

- Datos de entrada: `codigo`, `nombre completo`,`programa`,`semestre`, `RF Auditoria`
- Restricciones: No se permite repetir el código del estudiante.


## RF2: Gestionar la (CRUD) de los datos de las materias.
- Datos de entrada: `codigo`, `nombre`,`programa`,`semestre`, `RF Auditoria`
- Restricciones: No se permite repetir el código y nombre de la materia.

## RF3: Gestionar el control de registros de las notas a nivel (CRUD) de una materia.

- Datos de entrada: `ref RF1:codigo`, `ref RF2:codigo`, `corte{1,2,3}`, `nota{0.0 - 5.0}`. 
- Restricciones: Cada estudiante tiene tres cortes. 

## RF4 Obtener el promedio de los tres cortes de las notas de un estudiente

- Datos de entrada: `N/A, se procesa datos`, dato de asignación: `promedio`
- Restricciones: Registrar con antelación las notas del `corte {1, 2 y 3}`, de lo contrario, no permite obtener promedio. 

## RF5 Mostrar si aprobó o reprobó. 

- Datos de entrada: `ref RF1:codigo`, `ref RF2:codigo`
- Precondiciones: `Primera nota (30%), Segunda nota (30%) y * Tercera nota (40%)`
- Restricciones: La existencia del `ref RF1:codigo`, `ref RF2:codigo`  y al estar diligenciado el `ref RF4:promedio`. De lo contrario no muestra ningun resultado. 

## RF6: Generar tabla que permita listar los datos de los requerimientos 

- Datos de entrada `N/A`
- Precondiciones `tener datos registrados en ref RF1`
- Flujo normal: `Sobre la vista del los rf RF1 mostar la tabla con todos los datos, a excepción del id.`

## RF Auditoria: Campos genéricos para procesar la auditoría de los datos. 
- Datos de entrada:  `ìd`, `estado`, `fecha_creacion`, `fecha_modificacion`, `fecha_eliminacion`, 
- Flujo de datos: El RF que use a esté, esta obligado a implementar todos los campos de entrada. 
- Restricciones: Únicamente se debe mostrar por pantalla del usuario al `estado`

