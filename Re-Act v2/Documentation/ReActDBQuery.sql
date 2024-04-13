
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

-- ####################  Insertar datos  ####################
Insert Into Role_Table Values ('Presidente');
Insert Into Role_Table Values ('Senador');
Insert Into Role_Table Values ('Diputado');

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
	--______

Select * From PoliticalParty_Table;
Select * From Candidates_Table;
Select * From Role_Table;
Select * From AspNetUsers;

-- #################### __________________ ####################