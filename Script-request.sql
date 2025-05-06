-- 1. Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- But: Obtenir tous les noms de focaccias triés alphabétiquement
SELECT nom 
FROM focaccia 
ORDER BY nom ASC;
-- Résultat attendu: Liste des 8 focaccias triées par ordre alphabétique
-- Résultat obtenu: 'Américaine', 'Emmentalaccia', 'Gorgonzolaccia', 'Hawaienne', 'Mozaccia', 'Paysanne', 'Raclaccia', 'Traditione'


-- 2. Afficher le nombre total d'ingrédients
-- But: Compter le nombre total d'ingrédients disponibles
SELECT COUNT(*) AS nombre_total_ingredients 
FROM ingredient;
-- Résultat attendu: 25 ingrédients
-- Résultat obtenu: 25


-- 3. Afficher le prix moyen des focaccias
-- But: Calculer le prix moyen de toutes les focaccias
SELECT AVG(prix) AS prix_moyen 
FROM focaccia;
-- Résultat attendu: Moyenne des prix des 8 focaccias (9.80 + 10.80 + 8.90 + 9.80 + 8.90 + 11.20 + 10.80 + 12.80)/8 = 10.375
-- Résultat obtenu: 10.375


-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
-- But: Obtenir la liste des boissons avec leur marque associée, triée par nom de boisson
SELECT b.nom AS nom_boisson, m.nom AS marque 
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom ASC;
-- Résultat attendu: Liste des 12 boissons avec leur marque respective, triée par ordre alphabétique des noms de boissons
-- Résultat obtenu: Table triée avec 'Capri-sun'/'Coca-cola' en premier et 'Pepsi Max Zéro'/'Pepsico' en dernier


-- 5. Afficher la liste des ingrédients pour une Raclaccia
-- But: Obtenir tous les ingrédients utilisés dans la focaccia 'Raclaccia'
SELECT i.nom AS ingredient
FROM ingredient i
JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
JOIN focaccia f ON fi.id_focaccia = f.id_focaccia
WHERE f.nom = 'Raclaccia'
ORDER BY i.nom;
-- Résultat attendu: Liste des 7 ingrédients de la Raclaccia: Base Tomate, Raclette, Cresson, Ail, Champignon, Parmesan, Poivre
-- Résultat obtenu: 'Ail', 'Base Tomate', 'Champignon', 'Cresson', 'Parmesan', 'Poivre', 'Raclette'


-- 6. Afficher le nom et le nombre d'ingrédients pour chaque focaccia
-- But: Compter le nombre d'ingrédients pour chaque focaccia
SELECT f.nom AS focaccia, COUNT(fi.id_ingredient) AS nombre_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom
ORDER BY f.nom;
-- Résultat attendu: Liste des 8 focaccias avec leur nombre d'ingrédients respectif
-- Résultat obtenu: 'Américaine' (8), 'Emmentalaccia' (7), 'Gorgonzolaccia' (8), 'Hawaienne' (9), 'Mozaccia' (10), 'Paysanne' (12), 'Raclaccia' (7), 'Traditione' (9)


-- 7. Afficher le nom de la focaccia qui a le plus d'ingrédients
-- But: Trouver la focaccia avec le plus grand nombre d'ingrédients
SELECT f.nom AS focaccia, COUNT(fi.id_ingredient) AS nombre_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom
ORDER BY nombre_ingredients DESC
LIMIT 1;
-- Résultat attendu: 'Paysanne' avec 12 ingrédients
-- Résultat obtenu: 'Paysanne' 


-- 8. Afficher la liste des focaccia qui contiennent de l'ail
-- But: Trouver toutes les focaccias qui ont de l'ail comme ingrédient
SELECT f.nom AS focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom = 'Ail'
ORDER BY f.nom;
-- Résultat attendu: Liste des focaccias contenant de l'ail: Mozaccia, Gorgonzolaccia, Raclaccia, Paysanne
-- Résultat obtenu: 'Gorgonzolaccia', 'Mozaccia', 'Paysanne', 'Raclaccia'


-- 9. Afficher la liste des ingrédients inutilisés
-- But: Trouver les ingrédients qui ne sont utilisés dans aucune focaccia
SELECT i.nom AS ingredient_inutilise
FROM ingredient i
WHERE i.id_ingredient NOT IN (
    SELECT DISTINCT id_ingredient 
    FROM focaccia_ingredient
)
ORDER BY i.nom;
-- Résultat attendu: Liste des ingrédients présents dans la table ingredient mais absents de la table focaccia_ingredient
-- Résultat obtenu: 'Salami', 'Tomate cerise'


-- 10. Afficher la liste des focaccia qui n'ont pas de champignons
-- But: Trouver toutes les focaccias qui ne contiennent pas de champignons
SELECT f.nom AS focaccia_sans_champignon
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT DISTINCT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom = 'Champignon'
);
-- Résultat attendu: Liste des focaccias sans champignons
-- Résultat obtenu: 'Hawaienne', 'Américaine'