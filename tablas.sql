--Tabla estudiante
CREATE TABLE estudiante(
  eCodigo SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);
 
--Tabla asignatura
CREATE TABLE asignatura(
  aCodigo SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  nHoras INT NOT NULL,
  CHECK(nHoras > 0)
);

--Tabla profesor
CREATE TABLE profesor(
  pCodigo SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  facultad VARCHAR(100) NOT NULL
);

--Tabla aula
CREATE TAble aula(
  num INT PRIMARY KEY,
  capacidad INT NOT NULL,
  etiqueta VARCHAR(100),
  edificio VARCHAR(50) NOT NULL,
  piso INT NOT NULL,
  CHECK (capacidad > 0 AND piso >= 0)
);

--Tabla curso
CREATE TABLE curso(
  id SERIAL PRIMARY KEY,
  fechaInicio DATE NOT NULL,
  fechaFin DATE NOT NULL,
  aCodigo INT,
  pCodigo INT,
  CHECK (fechaFin >= fechaInicio),
  FOREIGN KEY (aCodigo) REFERENCES asignatura(aCodigo)
  	ON DELETE CASCADE,
  FOREIGN KEY (pCodigo) REFERENCES profesor(pCodigo)
  	ON DELETE SET NULL
);

--Tabla horario, atributo multivaluado de curso
CREATE TABLE horario(
  idhorario SERIAL,
  id INT,
  inicio TIME NOT NULL,
  dia VARCHAR(50) NOT NULL,
  fin TIME NOT NULL,
  CHECK (fin > inicio),
  PRIMARY KEY (idhorario, id),
  FOREIGN KEY (id) REFERENCES curso(id)
  	ON DELETE CASCADE
);

--Tabla aulaCurso, relacion entre aula y curso "asigna" en el MER
CREATE TABLE aulaCurso(
  num INT,
  id INT,
  PRIMARY key (num, id),
  FOREIGN KEY(num) REFERENCES aula(num)
  	ON DELETE CASCADE,
  FOREIGN KEY(id) REFERENCES curso(id)
  	ON DELETE CASCADE
);

--Tabla estudianteAsignatura, relacion entre estudiante y asignatura "Matricula" en el MER
CREATE TABLE estudianteAsignatura(
  eCodigo INT,
  aCodigo INT,
  PRIMARY KEY(eCodigo, aCodigo),
  FOREIGN KEY(eCodigo) REFERENCES estudiante(eCodigo)
  	ON DELETE CASCADE,
  FOREIGN KEY(aCodigo) REFERENCES asignatura(aCodigo)
  	ON DELETE CASCADE
);

--Tabla correoEstudiante, atributo multivaluado de estudiante para los correos
CREATE TABLE correoEstudiante(
  direccionElectronica VARCHAR(50) CHECK (direccionElectronica LIKE '%_@_%.__%'),
  eCodigo INT,
  PRIMARY KEY (direccionElectronica, eCodigo),
  FOREIGN KEY (eCodigo) REFERENCES estudiante(eCodigo)
  	ON DELETE CASCADE
);
