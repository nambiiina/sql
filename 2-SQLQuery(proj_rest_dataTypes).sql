SELECT NomSociete, ContactNom -- PROJECTION ALGEBRE RELATIONNELLE
FROM Client
WHERE Client.ContactNom = 'Ana Trujillo'; -- RESTRICTION ALGEBRE RELATIONNELLE

SELECT 1 + 2;
SELECT '1' + '2';

-- NCHAR
-- NVARCHAR

SELECT N'你好'; -- N for unicode

SELECT 1;
SELECT 1.5; -- DECIMAL / NUMERIC -- FLOAT / REAL

-- MySQL (https://dev.mysql.com/doc/refman/8.0/en/data-types.html)
-- Sql Server (https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver15)
-- Oracle (https://docs.oracle.com/cd/B28359_01/server.111/b28318/datatype.htm#CNCPT213)

-- Tye numeric for oracle is NUMBER(precision, scale)


CREATE TABLE temps (jour datetime);

INSERT INTO temps VALUES ('26/01/2020'); -- date in french

INSERT INTO temps VALUES ('2020-01-26'); -- date in english

INSERT INTO temps VALUES ('20200126');  -- international format (except oracle used function TO_DATE())

SET LANGUAGE 'us_english'

SELECT *
FROM temps;