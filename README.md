# cross_sql_thebridge

Este proyecto contiene la base de datos central de **The Bridge**, integrada por sus tres departamentos. Su estructura permite gestionar de forma unificada la información de sedes, cursos, alumnos y calificaciones.

## 🏗️ Estructura de la Base de Datos

La base de datos se organiza en las siguientes tablas principales:

* **campus**: Sedes físicas (ej. Madrid, Valencia).
* **vertical**: Áreas de formación (Data Science, Full Stack, etc.).
* **promocion**: Grupos específicos que unen un campus, una vertical y una fecha de inicio.
* **profesores**: Datos del equipo docente y su asignación a cada promoción.
* **alumnos**: Registro de estudiantes matriculados.
* **proyectos**: Listado de trabajos evaluables por vertical.
* **notas**: Relación de las calificaciones obtenidas por cada alumno en sus proyectos.

## 🔗 Relaciones Clave

1.  **Organización**: Las `promociones` dependen directamente de un `campus` y una `vertical`.
2.  **Asignación**: Tanto `alumnos` como `profesores` están vinculados a una `promocion` específica.
3.  **Evaluación**: La tabla `notas` sirve de puente para conectar a los `alumnos` con sus `proyectos` y registrar su calificación.

## 🛠️ Tecnologías
* **SQL** para la base de datos POSTGRESS
* **PYTHON** para la gestión de datos.
* **ERD** (Diagrama Entidad-Relación) para el diseño de la estructura.


falta añadir como funciona , la conexion a postgrees

---
*Base de datos colaborativa de los 3 departamentos de The Bridge.*