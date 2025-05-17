--Códgio de Consultas SQL

--1. Correo del estudiante con ID=5demo

Select direccionelectronica FROM correoEstudiante WHERE eCodigo = 5

-- 2. Presenta la consulta en SQL para obtener el nombre y 
--el número de horas de los cursos que dicta el profesor 'Ursula Iguaran

SELECT  asi.nhoras, asi.nombre FROM profesor as pro JOIN curso as cur on cur.pcodigo = pro.pcodigo 
JOIN asignatura as asi on 
cur.acodigo = asi.acodigo where pro.nombre = 'Ursula Iguaran'

--3. Presenta la consulta en SQL para obtener el nombre y el correo de los estudiantes que están
--cursando la asignatura 'Cálculo I'

SELECT est.nombre, correo_est.direccionelectronica FROM estudianteasignatura AS est_asig JOIN estudiante AS est ON 
est.ecodigo = est_asig.ecodigo join asignatura as asig on asig.acodigo = est_asig.acodigo JOIN correoestudiante as 
correo_est on correo_est.ecodigo = est.ecodigo WHERE asig.nombre = 'Cálculo I'

--4. Presenta la consulta en SQL para obtener las aulas (edificio, piso, etiqueta), el horario (día, inicio y
--fin), el profesor (nombre), la asignatura (nombre y número de horas) del curso con id=3

SELECT aul.edificio, aul.etiqueta, aul.piso, hor.dia, hor.inicio, hor.fin, pro.nombre , asig.nombre, asig.nhoras 
FROM aulacurso as aul_cur JOIN aula as aul on aul.num = aul_cur.num join curso as cur on cur.id = aul_cur.id 
join profesor as pro on pro.pcodigo = cur.pcodigo join asignatura as asig on asig.acodigo = cur.acodigo 
JOIN horario as hor on cur.id = hor.id where cur.id = 3
