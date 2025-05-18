-- Insertar 10 estudiantes
INSERT INTO estudiante (nombre, apellido) VALUES
('Ana', 'Gomez'),
('Luis', 'Perez'),
('Maria', 'Lopez'),
('Carlos', 'Diaz'),
('Elena', 'Martinez'),
('Juan', 'Ramirez'),
('Sofia', 'Castro'),
('Diego', 'Rojas'),
('Laura', 'Vargas'),
('Miguel', 'Santos');

-- Insertar 3 asignaturas
INSERT INTO asignatura (nombre, nHoras) VALUES
('Cálculo I', 60),
('Física General', 45),
('Programación Funcional', 40);

-- Insertar 5 profesores
INSERT INTO profesor (nombre, facultad) VALUES
('Ursula Iguaran', 'Ciencias Exactas'),
('Pedro Martinez', 'Ciencias Exactas'),
('Clara Fernandez', 'Ingenieria'),
('Jorge Soto', 'Ingenieria'),
('Lucia Torres', 'Ciencias Exactas');

-- Insertar 9 aulas
INSERT INTO aula (num, capacidad, etiqueta, edificio, piso) VALUES
(101, 30, 'Laboratorio A', 'Edificio 1', 1),
(102, 25, 'Laboratorio B', 'Edificio 1', 2),
(201, 40, 'Sala de Conferencias', 'Edificio 2', 1),
(202, 35, 'Laboratorio C', 'Edificio 2', 1),
(301, 50, 'Auditorio Principal', 'Edificio 3', 3),
(302, 20, 'Laboratorio D', 'Edificio 3', 1),
(401, 30, 'Sala Multimedia', 'Edificio 4', 2),
(402, 25, 'Laboratorio E', 'Edificio 4', 2),
(403, 15, 'Pequeño Laboratorio', 'Edificio 4', 2);

-- Insertar 8 cursos
INSERT INTO curso (fechaInicio, fechaFin, aCodigo, pCodigo) VALUES
('2025-03-01', '2025-06-30', 1, 1), -- Cálculo I - Ursula
('2025-03-01', '2025-06-30', 2, 2), -- Física - Pedro
('2025-03-01', '2025-06-30', 3, 3), -- Prog Func - Clara
('2025-07-01', '2025-10-30', 1, 4), -- Cálculo I - Jorge
('2025-07-01', '2025-10-30', 2, 5), -- Física - Lucia
('2025-07-01', '2025-10-30', 3, 1), -- Prog Func - Ursula
('2025-11-01', '2026-02-28', 1, 2), -- Cálculo I - Pedro
('2025-11-01', '2026-02-28', 2, 3); -- Física - Clara

-- Insertar horarios para cursos
INSERT INTO horario (id, inicio, dia, fin) VALUES
(1, '08:00', 'Lunes', '10:00'),
(1, '08:00', 'Miercoles', '10:00'),
(2, '10:00', 'Lunes', '12:00'),
(2, '10:00', 'Miercoles', '12:00'),
(3, '14:00', 'Martes', '16:00'),
(3, '14:00', 'Jueves', '16:00'),
(4, '08:00', 'Martes', '10:00'),
(4, '08:00', 'Jueves', '10:00'),
(5, '10:00', 'Martes', '12:00'),
(5, '10:00', 'Jueves', '12:00'),
(6, '14:00', 'Lunes', '16:00'),
(6, '14:00', 'Miercoles', '16:00'),
(7, '08:00', 'Viernes', '10:00'),
(7, '10:00', 'Viernes', '12:00'),
(8, '14:00', 'Viernes', '16:00');

-- Insertar aulaCurso (asignar aulas a cursos)
INSERT INTO aulaCurso (num, id) VALUES
(101, 1),
(102, 2),
(201, 3),
(202, 4),
(301, 5),
(302, 6),
(401, 7),
(402, 8);

-- Insertar estudianteAsignatura (relación estudiantes y asignaturas)
-- Asignar a los estudiantes las asignaturas que cursan
INSERT INTO estudianteAsignatura (eCodigo, aCodigo) VALUES
(1, 1), (1, 3),
(2, 1),
(3, 2), (3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1);

-- Insertar correos para estudiantes
INSERT INTO correoEstudiante (direccionElectronica, eCodigo) VALUES
('ana.gomez@gmail.com', 1),
('luis.perez@hotmail.com', 2),
('maria.lopez@yahoo.com', 3),
('carlos.diaz@gmail.com', 4),
('elena.martinez@hotmail.com', 5),
('juan.ramirez@gmail.com', 6),
('sofia.castro@yahoo.com', 7),
('diego.rojas@gmail.com', 8),
('laura.vargas@hotmail.com', 9),
('miguel.santos@gmail.com', 10);
