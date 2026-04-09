-- CONSULTAS DE EXPLOTACIÓN

-- DEVUELVE LOS NOMBRES DE LOS ALUMNOS, EL NOMBRE DE LA PROMOCIÓN A LA QUE PERTENECEN, LA FECHA DE COMIENZO DE LA PROMOCIÓN Y EL NOMBRE DE LA VERTICAL
SELECT a.nombre, p.nombre_mes, p.fecha_comienzo, v.nombre_vertical
FROM alumnos a
JOIN notas n ON a.id_alumno = n.id_alumno
JOIN promocion p ON a.id_promocion = p.id_promocion
JOIN vertical v ON p.id_vertical = v.id_vertical


-- DEVUELVE LOS CAMPUS Y EL Nº TOTAL DE ALUMNOS
SELECT c.nombre_campus, COUNT(a.id_alumno) AS total_alumnos
FROM promocion p
JOIN alumnos a ON p.id_promocion = a.id_promocion
JOIN campus c ON p.id_campus = c.id_campus
JOIN vertical v ON p.id_vertical = v.id_vertical
GROUP BY c.nombre_campus
ORDER BY total_alumnos DESC

-- TOTAL PROYECTOS CON NOMBRE PROYECTO_HLF Y NOTA APTO
SELECT COUNT(nota), p.nombre_proyecto
FROM notas n
JOIN proyectos p ON n.id_proyecto = p.id_proyecto
JOIN vertical v ON p.id_vertical = v.id_vertical
WHERE p.nombre_proyecto = 'Proyecto_HLF' AND n.nota = 'Apto'
GROUP BY p.nombre_proyecto

-- TOTAL DE ALUMNOS APROBADOS POR PROMOCIÓN, ORDENADO POR NOMBRE DE PROMOCIÓN
SELECT a.nombre, p.nombre_mes, p.fecha_comienzo, v.nombre_vertical,
	SUM(CASE WHEN n.nota = 'Apto' THEN 1 ELSE 0 END) AS total_aptos
FROM alumnos a
JOIN notas n ON a.id_alumno = n.id_alumno
JOIN promocion p ON a.id_promocion = p.id_promocion
JOIN vertical v ON p.id_vertical = v.id_vertical
GROUP BY a.nombre, p.nombre_mes, p.fecha_comienzo, v.nombre_vertical