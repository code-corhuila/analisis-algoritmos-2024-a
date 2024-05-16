## Taller 1 - Corte 3

#### Instrucciones

Por favor, lee detenidamente el ejercicio asignado a continuación y procede a realizar las siguientes actividades:

1. Construye un diagrama de clases, un diagrama de secuencia y un diagrama de casos de uso según el ejercicio asignado.
2. Envía tu trabajo con estricto cumplimiento del tiempo establecido.
3. Crea una carpeta en un repositorio público para cada ejercicio y proporciona el enlace junto con los archivos en la plataforma Moodle.
4. En el repositorio Git, asegúrate de previsualizar cada uno de los diagramas y el código utilizado para crearlos.
5. Para esto último, crea un archivo Markdown donde hagas referencia a cada uno de los diagramas construidos y su respectivo código en UMLPlant.

## Ejercicio 1: Sistema de Gestión de Biblioteca

#### RF1: Registro de Usuarios

- El sistema debe permitir a los usuarios registrarse proporcionando información básica como nombre, dirección y correo electrónico.
- Debe validar la dirección de correo electrónico para evitar registros duplicados.
- Debe generar un número de identificación único para cada usuario registrado.
- Debe permitir a los usuarios elegir una contraseña segura para acceder a sus cuentas.
- Debe proporcionar retroalimentación inmediata en caso de errores durante el proceso de registro.

#### RF2: Búsqueda de Libros

- El sistema debe permitir a los usuarios buscar libros por título, autor o categoría.
- Debe mostrar resultados de búsqueda relevantes de manera clara y concisa.
- Debe proporcionar opciones de filtro para refinar la búsqueda, como por año de publicación o idioma.
- Debe permitir a los usuarios ver la disponibilidad de los libros encontrados en la biblioteca.
- Debe permitir a los usuarios realizar reservas de libros disponibles.

#### RF3: Préstamo de Libros

- El sistema debe permitir a los usuarios solicitar el préstamo de libros disponibles.
- Debe gestionar el proceso de préstamo, incluyendo la asignación de fechas de vencimiento.
- Debe enviar recordatorios automáticos a los usuarios sobre la fecha de vencimiento del préstamo.
- Debe permitir a los usuarios renovar los préstamos si no hay reservas pendientes para el libro.
- Debe generar multas por devoluciones tardías según la política de la biblioteca.

#### RF4: Gestión de Inventario

- El sistema debe mantener un registro actualizado de todos los libros en la biblioteca.
- Debe permitir a los bibliotecarios agregar nuevos libros al inventario, incluyendo información detallada como ISBN, autor y año de publicación.
- Debe permitir la eliminación de libros obsoletos o dañados del inventario.
- Debe proporcionar herramientas para realizar un seguimiento del estado físico de los libros, como su ubicación en la biblioteca.
- Debe generar informes periódicos sobre el estado del inventario y las tendencias de préstamo.