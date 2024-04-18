-- ######📝 ReAct v2 Data Base 📝######
--Paso #1) Hay que hacer las migraciones en Visual Studio, en la consola, aquí las líneas.
--"Add-Migration Inicial" y luego "Update-Database"
--Ejecuta los Create.
--Ejecuta los Insert en la otra hoja de SQL.
Create Database ReActDB;
Use ReActDB;

--Partidos políticos.
Create Table PoliticalParty_Table
(PoliticalParty_ID Int Primary Key Identity(0, 1),
PoliticalParty_Name Varchar(100) Unique Not Null,
PoliticalParty_Acronym Varchar(11) Unique Not Null);

--Alianzas y beneficiarios políticos (Relación de muchos a uno).
Create Table PoliticalAlliance_Table
(PoliticalAlliance_ID Int Primary K ey Identity(0, 1),
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
    COALESCE(Recint_Table.Recint_Name, 'Total') AS Recint_Name,
    COUNT(ElectoralTable_Table.ElectoralTable_ID) AS Total_Mesas
FROM 
    Recint_Table
LEFT JOIN 
    ElectoralTable_Table ON Recint_Table.Recint_ID = ElectoralTable_Table.Recint_ID
GROUP BY 
    Recint_Table.Recint_Name
WITH ROLLUP;

-- #################### __________________ ####################