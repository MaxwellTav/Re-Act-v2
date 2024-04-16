
-- ######📝 ReAct v2 Data Base 📝######
--Paso #1) Hay que hacer las migraciones en Visual Studio, en la consola, aquí las líneas.
--"Add-Migration Inicial" y luego "Update-Database"
--Luego procede.
Create Database ReActDB;
Use ReActDB;

--Partidos políticos.
Create Table PoliticalParty_Table
(PoliticalParty_ID Int Primary Key Identity(0, 1),
PoliticalParty_Name Varchar(100) Unique Not Null,
PoliticalParty_Acronym Varchar(11) Unique Not Null);

--Alianzas y beneficiarios políticos (Relación de muchos a uno).
Create Table PoliticalAlliance_Table
(PoliticalAlliance_ID Int Primary Key Identity(0, 1),
PoliticalAlliance_Beneficiary Int,
PoliticalAlliance_Remitent Int,
Foreign Key (PoliticalAlliance_Beneficiary) References PoliticalParty_Table(PoliticalParty_ID),
Foreign Key (PoliticalAlliance_Remitent) References PoliticalParty_Table(PoliticalParty_ID));

Create Table Role_Table
(CandidateRole_ID Int Primary Key Identity(0, 1),
CandidateRole_Name Varchar(30) Unique Not Null);

Create Table Candidates_Table
(Candidate_ID Int Primary Key Identity(0, 1),
Candidate_Name Varchar(60) Unique Not Null,
--Candidate_PoliticalParty Int Not Null, --Se encargará la tabla de hacer la relación de muchos a uno.
Candidate_Role Int Not Null,
Candidate_VotesCuantity Int Not Null Default(0),
FOREIGN KEY (Candidate_Role) REFERENCES Role_Table(CandidateRole_ID));

Create Table Recint_Table
(Recint_ID Int Primary Key Identity(0, 1),
Recint_Name Varchar(100) Unique Not Null);

Create Table ElectoralTable_Table
(ElectoralTable_ID Int Primary Key Identity(0, 1),
ElectoralTable_Name Varchar(6) Not Null Unique,
Recint_ID Int Not Null,
ElectoralTable_Votes Int Default(0),
Foreign Key (Recint_ID) References Recint_Table(Recint_ID));


-- ####################  Insertar datos  ####################
--Rol.
Insert Into Role_Table Values ('Presidente');
Insert Into Role_Table Values ('Senador');
Insert Into Role_Table Values ('Diputado');

--Recintos.
Insert Into Recint_Table Values 
('ESCUELA PRIMARIA REPUBLICA DE ARUBA'), 
('ESCUELA PARROQUIAL CRISTO REY'),
('LICEO BENITO JUAREZ'),
('ESCUELA BASICA PROF. JUAN BOSCH'),
('ESCUELA PUBLICA SANTA MARTHA'),
('CLUB DEPORTIVO Y CULTURAL LOS CACHORROS'),
('COLEGIO SANTA RITA'),
('INSTITUTO POLITECNICO ANGELES CUSTODIO'),
('LICEO PARROQUIAL SAN PABLO APOSTOL'),
('COLEGIO ARROYO HONDO'),
('ESCUELA REPUBLICA DE COSTA RICA'),
('LICEO TECNICO MARILLAC'),
('CUERPO DE BOMBEROS CIVILES'),
('ESCUELA PRIMARIA FIDEL FERRER'),
('CLUB DEL MINISTERIO DE OBRAS PUBLICAS Y COMUNICACION'),
('MINISTERIO DE SALUD PUBLICA Y ASISTENCIA SOCIAL'),
('CENTRO EDUCATIVO LA MILAGROSA'),
('ESCUELA PUBLICA PROF. FRANCISCO ULISES DOMINGUEZ'),
('ESCUELA PRIMARIA JOSE BORDAS VALDEZ'),
('ESCUELA PRIMARIA JESUS MAESTRO'),
('SOC. SAGRADO CORAZON DE JESUS'),
('COLEGIO NIDO PARA LOS ANGELES'),
('UNIVERSIDAD NACIONAL PEDRO HENRIQUEZ URENA (UNPHU)'),
('MODULO C-4 DE LA OMSA'),
('CENTRO JUVENIL CRISTO REY'),
('ESCUELA BASICA FRANCISCO DEL ROSARIO SANCHEZ'),
('INSTITUTO POLITECNICO VICTOR ESTRELLA LIZ (PERITO)'),
('ESCUELA BASICA ARROYO HONDO II'),
('CENTRO EDUCATIVO PROF. ISIDRO PEREZ BELLO'),
('COLEGIO PALMA REAL'),
('CENTRO EDUCATIVO SAN JOSE FE Y ALEGRIA (LADO ESTE)'),
('CENTRO PEDAGOGICO ESTRELLA DE VIDA'),
('CLUB DEPORTIVO Y CULTURAL JARDINES DEL NORTE'),
('COLEGIO FALLOW ME'),
('CENTRO EDUCATIVO SAN MAURICIO'),
('COLEGIO CRISTIANO REFORMADO EMANUEL'),
('ESCUELA MALAQUIAS GIL'),
('CLUB 21 DE ENERO'),
('ESCUELA BASICA PADRE EULALIO A. ARIAS'),
('CENTRO DE ESTUDIO BASICA MI SEGUNDO HOGAR'),
('ESCUELA BASICA JULIAN AMPARO'),
('COLEGIO CICRE'),
('COLEGIO NUESTRA SEÑORA DE LOURDES'),
('ESCUELA DOÑA SOCORRO'),
('ESCUELA MARlA DEL CARMEN PREZ'),
('ESCUELA PRIMARIA BARTOLOM DE LAS CASAS'),
('ESCUELA PRIMARIA PUERTO ISABELA (NUEVA)'),
('ESTACION DE BOMBEROS CORONEL FRANCISCO DESANGLES'),
('INSTITUTO TECNOLOGICO DE SANTO DOMINGO (INTEC)'),
('CENTRO EDUCATIVO SAN BENITO');

--Mesas y colegios.
Insert Into ElectoralTable_Table Values
--00028     ESCUELA PRIMARIA REPUBLICA DE ARUBA							
('1448', 0, 0),
('1448A', 0, 0), 
('1450', 0, 0), 
('1450A', 0, 0), 
('1537', 0, 0), 
('1538', 0, 0);

-- _________________ Insertar datos dummy ___________________
--Partidos
Insert Into PoliticalParty_Table Values ('Partido de la Liberación Dominicana', 
											'PLD');
Insert Into PoliticalParty_Table Values ('Fuerza del Pueblo', 
											'FP');
Insert Into PoliticalParty_Table Values ('Partido Revolucionari Moderno', 
											'PRM');

--Candidatos
Insert Into Candidates_Table Values ('Juan Pablo Duarte', 1, 0);
Insert Into Candidates_Table Values ('Francisco del Rosario Sanchez', 1, 0);
Insert Into Candidates_Table Values ('Matías Ramón Mella y Castillos', 1, 0);

--Aliados
Insert Into PoliticalParty_Table Values ('AllyOne', 
											'A1');

Insert Into PoliticalParty_Table Values ('AllyTwo', 
											'A2');

Insert Into PoliticalParty_Table Values ('AllyTree', 
											'A3');

--Relaciones
Insert Into PoliticalAlliance_Table Values (0, 3);
Insert Into PoliticalAlliance_Table Values (1, 4);
Insert Into PoliticalAlliance_Table Values (2, 5);
-- #################### Todas las Vistas ####################

Select * From PoliticalParty_Table;
Select * From Candidates_Table;
Select * From Role_Table;
Select * From AspNetUsers;
Select * From Recint_Table;
Select * From ElectoralTable_Table;

--Todos los partidos políticos
SELECT
    pa.PoliticalAlliance_ID As '#ID',
    pb.PoliticalParty_Name AS 'Partido político Beneficiado',
    pb.PoliticalParty_Acronym AS 'Acrónimo Beneficiado',
    pr.PoliticalParty_Name AS 'Partido político Remitente',
    pr.PoliticalParty_Acronym AS 'Acrónimo Remitente'
FROM
    PoliticalAlliance_Table pa
JOIN
    PoliticalParty_Table pb ON pa.PoliticalAlliance_Beneficiary = pb.PoliticalParty_ID
JOIN
    PoliticalParty_Table pr ON pa.PoliticalAlliance_Remitent = pr.PoliticalParty_ID;

--Todas las mesas.
SELECT Recint_Table.Recint_Name, ElectoralTable_Table.ElectoralTable_Name
FROM ElectoralTable_Table
INNER JOIN Recint_Table ON ElectoralTable_Table.Recint_ID = Recint_Table.Recint_ID;

--Total votos.
SELECT 
    Recint_Name,
    (
        SELECT SUM(ElectoralTable_Votes) 
        FROM ElectoralTable_Table 
        WHERE ElectoralTable_Table.Recint_ID = Recint_Table.Recint_ID
    ) AS Total_Votes
FROM 
    Recint_Table;

--Sumatoria de todos los recintos.
SELECT 
    Recint_Table.Recint_Name,
    COUNT(ElectoralTable_Table.ElectoralTable_ID) AS Total_Mesas
FROM 
    Recint_Table
LEFT JOIN 
    ElectoralTable_Table ON Recint_Table.Recint_ID = ElectoralTable_Table.Recint_ID
GROUP BY 
    Recint_Table.Recint_Name;


-- #################### __________________ ####################