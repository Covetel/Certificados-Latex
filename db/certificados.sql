CREATE TABLE persona (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    nombre VARCHAR,
    apellido VARCHAR,
    cedula INTEGER UNIQUE NOT NULL, 
    correo VARCHAR
);

CREATE TABLE curso (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR,
    descripcion TEXT,
    codigo VARCHAR
);

CREATE TABLE curso_detalle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_curso INTEGER,
    contenido TEXT,
    FOREIGN KEY(id_curso) REFERENCES curso(id)
);

CREATE TABLE instituciones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR
);

CREATE TABLE instituciones_personas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_persona INTEGER,
    id_institucion INTEGER,
    FOREIGN KEY(id_persona) REFERENCES persona(id),
    FOREIGN KEY(id_institucion) REFERENCES instituciones(id)
);

CREATE TABLE curso_participantes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_persona INTEGER, 
    id_curso INTEGER, 
    desde VARCHAR, 
    hasta VARCHAR, 
    lugar VARCHAR, 
    FOREIGN KEY(id_persona) REFERENCES persona(id),
    FOREIGN KEY(id_curso) REFERENCES curso(id)
);
