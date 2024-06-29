## creo una donde almaceno toda la informacion
Drop database if exists crimenes;

CREATE database  crimenes;


CREATE TABLE crimenes.Personas(
    Zona VARCHAR(255),
    Subzona VARCHAR(255),
    Canton VARCHAR(255),
    Fecha_de_Detención DATE,
    Flagrante_Boleta VARCHAR(255),
    Sexo VARCHAR(255),
    Edad INT,
    Nacionalidad VARCHAR(255),
    Código_ICCS VARCHAR(255),
    Tipo VARCHAR(255),
    Estado_Civil VARCHAR(255),
    Estatus_Migratorio VARCHAR(255),
    Género VARCHAR(255),
    Autoidentificación_Étnica VARCHAR(255),
    Numero_Detenciones INT,
    Nivel_de_Instrucción VARCHAR(255),
    Condición VARCHAR(255),
    Movilización VARCHAR(255),
    Tipo_Arma VARCHAR(255),
    Arma VARCHAR(255),
    Hora_de_Detención TIME,
    Lugar VARCHAR(255),
    Tipo_Lugar VARCHAR(255),
    Codigo_Distrito VARCHAR(255),
    Codigo_Circuito VARCHAR(255),
    Codigo_Subcircuito VARCHAR(255),
    Nombre_Zona VARCHAR(255),
    Nombre_Subzona VARCHAR(255),
    Nombre_Distrito VARCHAR(255),
    Nombre_Circuito VARCHAR(255),
    Nombre_Subcircuito VARCHAR(255),
    Código_Provincia VARCHAR(255),
    Código_Cantón VARCHAR(255),
    Código_Parroquia VARCHAR(255),
    Nombre_Provincia VARCHAR(255),
    Nombre_Cantón VARCHAR(255),
    Nombre_Parroquia VARCHAR(255),
    Presunta_Flagrancia VARCHAR(255),
    Presunta_Infracción VARCHAR(255),
    Presunta_Subinfracción VARCHAR(255),
    Presunta_Modalidad VARCHAR(255)
);
## 

INSERT INTO crimenes.Personas (Zona ,Subzona)
SELECT DISTINCT Zona, Subzona
FROM crimenes.provincias;

INSERT INTO crimenes.Personas (Sexo ,Edad)
SELECT DISTINCT Sexo, Edad
FROM crimenes.fechas;
