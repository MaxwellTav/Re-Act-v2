Use ReActDB;-- ####################  Insertar datos  ####################
--Rol.
Insert Into Role_Table Values 
('Presidente'),
('Senador'),
('Diputado');

-- ####################  RECINTOS  ####################
--Todos los recintos.
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

INSERT INTO ElectoralTable_Table VALUES
('1455',  16, 0),
('1455A', 16, 0),
('1456',  16, 0),
('1456A', 16, 0),
('1457',  16, 0),
('1457A', 16, 0),
('1458',  16, 0),
('1458A', 16, 0),
('1532',  16, 0),
('1795',  16, 0),
('1871',  16, 0),
('1939',  16, 0),
('1955',  16, 0);

--ESCUELA PUBLICA PROF. FRANCISCO ULISES DOMINGUEZ
INSERT INTO ElectoralTable_Table VALUES
('1443',  17, 0),
('1443A', 17, 0),
('1444',  17, 0),
('1444A', 17, 0),
('1445',  17, 0),
('1445A', 17, 0),
('1446',  17, 0),
('1446A', 17, 0),
('1446B', 17, 0),
('1531',  17, 0);

--ESCUELA PRIMARIA JOSE BORDAS VALDEZ
INSERT INTO ElectoralTable_Table VALUES
('1190',  18, 0),
('1190A', 18, 0),
('1191',  18, 0),
('1191A', 18, 0),
('1303',  18, 0),
('1303A', 18, 0),
('1304',  18, 0),
('1304A', 18, 0),
('1304B', 18, 0),
('1622',  18, 0),
('1714',  18, 0),
('1796',  18, 0),
('1811',  18, 0);

--ESCUELA PRIMARIA JESUS MAESTRO "LOS PERALEJOS"
INSERT INTO ElectoralTable_Table VALUES
('1459',  19, 0),
('1459A', 19, 0),
('1459B', 19, 0),
('1459C', 19, 0),
('1459D', 19, 0),
('1460',  19, 0),
('1460A', 19, 0),
('1460B', 19, 0),
('1460C', 19, 0),
('1460D', 19, 0),
('1621',  19, 0),
('1621A', 19, 0),
('1621B', 19, 0),
('1715',  19, 0),
('1769',  19, 0),
('1983',  19, 0),
('2033',  19, 0);

--SOC.SAGRADO CORAZON DE JESUS	
INSERT INTO ElectoralTable_Table VALUES
('1188',  20, 0),
('1188A', 20, 0),
('1188B', 20, 0),
('1189',  20, 0),
('1189A', 20, 0),
('1347',  20, 0),
('1347A', 20, 0),
('1620',  20, 0),
('1770',  20, 0),
('1840',  20, 0);

--COLEGIO NIDO PARA LOS ANGELES
INSERT INTO ElectoralTable_Table VALUES
('0353',  21, 0),
('0353A', 21, 0),
('0353B', 21, 0),
('0354',  21, 0),
('0354A', 21, 0),
('0354B', 21, 0),
('0354C', 21, 0),
('0355',  21, 0),
('0355A', 21, 0),
('0355B', 21, 0),
('1771',  21, 0),
('1841',  21, 0),
('1984',  21, 0);

--UNIVERSIDAD NACIONAL PEDRO HENRIQUEZ URE¥A (UNPHU)					
INSERT INTO ElectoralTable_Table VALUES
('0346',  22, 0),
('0346A', 22, 0),
('0346B', 22, 0),
('0346C', 22, 0),
('0346D', 22, 0),
('0346E', 22, 0),
('0346F', 22, 0),
('0347',  22, 0),
('0347A', 22, 0),
('0347B', 22, 0),
('0348',  22, 0),
('0348A', 22, 0),
('0348B', 22, 0),
('0349',  22, 0),
('0349A', 22, 0),
('0350',  22, 0),
('0350A', 22, 0),
('0350B', 22, 0),
('0351',  22, 0),
('0351A', 22, 0),
('0352',  22, 0),
('0352A', 22, 0),
('0352B', 22, 0),
('1316',  22, 0),
('1316A', 22, 0),
('1316B', 22, 0),
('1316C', 22, 0),
('1534',  22, 0),
('1718',  22, 0),
('1772',  22, 0),
('1986',  22, 0);

--MODULO C-4 DE LA OMSA	
INSERT INTO ElectoralTable_Table VALUES
('1681',  23, 0),
('1710',  23, 0),
('1719',  23, 0),
('1774',  23, 0),
('1813',  23, 0),
('1875',  23, 0),
('1921',  23, 0),
('1988',  23, 0),
('2037',  23, 0);

--CENTRO JUVENIL CRISTO REY
INSERT INTO ElectoralTable_Table VALUES
('0361',  24, 0),
('0361A', 24, 0),
('0362',  24, 0),
('0362A', 24, 0),
('0363',  24, 0),
('0363A', 24, 0),
('0364',  24, 0),
('0364A', 24, 0),
('0365',  24, 0),
('0365A', 24, 0);

--ESCUELA BASICA FRANCISCO DEL ROSARIO SANCHEZ
INSERT INTO ElectoralTable_Table VALUES
('0325',  25, 0),
('0325A', 25, 0),
('0326',  25, 0),
('0326A', 25, 0);

--INSTITUTO POLITECNICO VICTOR ESTRELLA LIZ (PERITO)
INSERT INTO ElectoralTable_Table VALUES
('0336',  26, 0),
('0336A', 26, 0),
('0337',  26, 0),
('0337A', 26, 0),
('0337B', 26, 0),
('0366',  26, 0),
('0366A', 26, 0),
('0366B', 26, 0),
('0398',  26, 0),
('0398A', 26, 0),
('0399',  26, 0),
('0399A', 26, 0),
('1337',  26, 0),
('1337A', 26, 0);

--ESCUELA BASICA ARROYO HONDO II
INSERT INTO ElectoralTable_Table VALUES
('1695',  27, 0),
('1726',  27, 0),
('1782',  27, 0),
('1880',  27, 0),
('1923',  27, 0),
('1959',  27, 0),
('2011',  27, 0);

--CENTRO EDUCATIVO PROF. ISIDRO PEREZ BELLO
INSERT INTO ElectoralTable_Table VALUES
('1696',  28, 0),
('1712',  28, 0),
('1783',  28, 0),
('1833',  28, 0),
('1881',  28, 0),
('1924',  28, 0);

--COLEGIO PALMA REAL
INSERT INTO ElectoralTable_Table VALUES
('1704',  29, 0),
('1732',  29, 0),
('1786',  29, 0),
('1818',  29, 0),
('1849',  29, 0),
('1914',  29, 0),
('1947',  29, 0),
('1961',  29, 0),
('1996',  29, 0);

--CENTRO EDUCATIVO SAN JOSE FE Y ALEGRIA (LADO ESTE)AVENIDA LOS RIOS
INSERT INTO ElectoralTable_Table VALUES
('1738',  30, 0);

--CENTRO PEDAGOGICO ESTRELLA DE VIDA
INSERT INTO ElectoralTable_Table VALUES
('1823',  31, 0),
('1884',  31, 0),
('1945',  31, 0);

--CLUB DEPORTIVO Y CULTURAL JARDINES DEL NORTE
INSERT INTO ElectoralTable_Table VALUES
('1825',  32, 0),
('1963',  32, 0);

--COLEGIO FALLOW ME
INSERT INTO ElectoralTable_Table VALUES
('1826',  33, 0),
('1917',  33, 0),
('1954',  33, 0);

--CENTRO EDUCATIVO SAN MAURICIO
INSERT INTO ElectoralTable_Table VALUES
('1832',  34, 0),
('1888',  34, 0),
('1926',  34, 0),
('1957',  34, 0),
('2000',  34, 0);

--COLEGIO CRISTIANO REFORMADO EMANUEL
INSERT INTO ElectoralTable_Table VALUES
('1928',  35, 0),
('2001',  35, 0);

--ESCUELA MALAQUIAS GIL
INSERT INTO ElectoralTable_Table VALUES
('1929',  36, 0);

--CLUB 21 DE ENERO
INSERT INTO ElectoralTable_Table VALUES
('1703',  37, 0),
('1731',  37, 0);

--ESCUELA BASICA PADRE EULALIO A. ARIAS
INSERT INTO ElectoralTable_Table VALUES
('0403',  38, 0),
('0403A', 38, 0),
('0408',  38, 0),
('0408A', 38, 0),
('0408B', 38, 0),
('1354',  38, 0),
('1354A', 38, 0),
('1449',  38, 0),
('1449A', 38, 0),
('1776',  38, 0),
('1824',  38, 0),
('1877',  38, 0);

--CENTRO DE ESTUDIO BASICA MI SEGUNDO HOGAR
INSERT INTO ElectoralTable_Table VALUES
('1966',  39, 0),
('2003',  39, 0);

--ESCUELA BASICA JULIAN AMPARO"
INSERT INTO ElectoralTable_Table VALUES
('1967',  40, 0);

/*COLEGIO CICRE*/
INSERT INTO ElectoralTable_Table VALUES
('1968',  41, 0),
('1973',  41, 0);

/*COLEGIO NUESTRA SEÑORA DE LOURDES*/
INSERT INTO ElectoralTable_Table VALUES
('1969',  42, 0);

/*ESCUELA DO¥A SOCORRO*/
INSERT INTO ElectoralTable_Table VALUES
('1839',  43, 0),
('1874',  43, 0),
('1940',  43, 0),
('1972',  43, 0),
('2004',  43, 0);

/*ESCUELA MARlA DEL CARMEN PR*/
INSERT INTO ElectoralTable_Table VALUES
('1183',  44, 0),
('1183A', 44, 0),
('1183B', 44, 0),
('1184',  44, 0),
('1184A', 44, 0),
('1616',  44, 0);

/*ESCUELA PRIMARIA BARTOLOM DE LAS CASAS*/
INSERT INTO ElectoralTable_Table VALUES
('1705',  45, 0),
('1915',  45, 0);

/*ESCUELA PRIMARIA PUERTO ISABELA (NUEVA)*/
INSERT INTO ElectoralTable_Table VALUES
('1404',  46, 0),
('1404A', 46, 0),
('1404B', 46, 0),
('1447',  46, 0),
('1447A', 46, 0),
('1540',  46, 0),
('1763',  46, 0),
('1901',  46, 0);

/*ESTACIàN DE BOMBEROS CORONEL FRANCISCO DESANGLES*/
INSERT INTO ElectoralTable_Table VALUES
('1376',  47, 0),
('1376A', 47, 0),
('1376B', 47, 0),
('1376C', 47, 0),
('1376D', 47, 0),
('1376E', 47, 0),
('1766',  47, 0),
('1836',  47, 0),
('1903',  47, 0),
('1949',  47, 0);

/*INSTITUTO TECNOLOGICO DE SANTO DOMINGO (INTEC)*/
INSERT INTO ElectoralTable_Table VALUES
('1269',  48, 0),
('1269A', 48, 0),
('1269B', 48, 0),
('1269C', 48, 0),
('1270',  48, 0),
('1270A', 48, 0),
('1270B', 48, 0),
('1289',  48, 0),
('1289A', 48, 0),
('1289B', 48, 0),
('1327',  48, 0),
('1327A', 48, 0),
('1396',  48, 0),
('1396A', 48, 0),
('1396B', 48, 0),
('1423',  48, 0),
('1423A', 48, 0),
('1765',  48, 0),
('1853',  48, 0),
('2008',  48, 0);

/*KM 13 AUTOPISTA DUARTE*/
INSERT INTO ElectoralTable_Table VALUES
('1687',  49, 0),
('1708',  49, 0),
('1721',  49, 0),
('1815',  49, 0),
('1927',  49, 0);

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