SELECT 1, 2;

SELECT 
	NomSociete, 
	ContactNom, 
	ContactTitre Titre, -- ContactTitre alias Adresse
	Adresse
FROM Client; -- Obligatoire sur oracle (table dual)

SELECT 'Bonjour ' + ContactNom AS Nom
FROM Client;