-- Clause where

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays='UK'AND Ville = 'London';

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays = 'UK'
OR Pays = 'France';

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays <> 'UK'
AND Pays <> 'France';

SELECT NomSociete, Adresse, Ville, Pays
FROM Client
WHERE Pays > 'UK'
-- ORDER BY Pays, Ville, Adresse;
ORDER BY 4; -- number of column Pays



-- How data is store in database
CREATE TABLE test (nb int);

INSERT INTO test VALUES(1);
INSERT INTO test VALUES(2);
INSERT INTO test VALUES(3);
INSERT INTO test VALUES(4);
INSERT INTO test VALUES(5);
INSERT INTO test VALUES(6);

SELECT * FROM test;

DELETE FROM test WHERE nb = 4;

SELECT * FROM test;

INSERT INTO test VALUES(7);

SELECT * FROM test;

DROP TABLE test;


-- Alias

-- 3 SELECT NomSociete, Adresse, Ville, Pays
-- 1 FROM Client
-- 2 WHERE Pays <= 'UK';
-- 4 ORDER BY Pays, Ville, Adresse


SELECT c.NomSociete, c.Adresse, c.Ville, c.Pays
FROM Client AS c -- create alias for client
WHERE c.Pays <= 'UK'
ORDER BY c.Pays, c.Ville, c.Adresse;


SELECT 1 as Nombre, c.NomSociete As nom, c.Adresse + ' ' + c.Ville + ' ' + c.Pays AS AdresseComplete
FROM Client AS c -- create alias for client
WHERE c.Pays <= 'UK'
ORDER BY AdresseComplete;