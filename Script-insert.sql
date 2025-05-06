INSERT INTO marque (id_marque, nom) values(1,'Coca-cola');
INSERT INTO marque (id_marque, nom) values(2,'Cristalline');
INSERT INTO marque (id_marque, nom) values(3,'Monster');
INSERT INTO marque (id_marque, nom) values(4,'Pepsico');

INSERT INTO boisson (id_boisson, nom, id_marque) VALUES
(1, 'Coca-cola zero', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zero citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);


INSERT INTO ingredient (id_ingredient, nom) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozarella');

INSERT INTO focaccia (id_focaccia, nom, prix) values(1, 'Mozaccia', 9.80);
INSERT INTO focaccia (id_focaccia, nom, prix) values(2, 'Gorgonzolaccia', 10.80);
INSERT INTO focaccia (id_focaccia, nom, prix) values(3, 'Raclaccia', 8.90);
INSERT INTO focaccia (id_focaccia, nom, prix) values(4, 'Emmentalaccia', 9.80);
INSERT INTO focaccia (id_focaccia, nom, prix) values(5, 'Traditione', 8.90);
INSERT INTO focaccia (id_focaccia, nom, prix) values(6, 'Hawaienne', 11.20);
INSERT INTO focaccia (id_focaccia, nom, prix) values(7, 'Américaine', 10.80);
INSERT INTO focaccia (id_focaccia, nom, prix) values(8, 'Paysanne', 12.80);

-- focaccia Mozaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(1, 5, 200),
(1, 25, 50),
(1, 9, 20),
(1, 13, 80),
(1, 1, 2),
(1, 3, 20),
(1, 7, 40),
(1, 18, 50),
(1, 20, 1),
(1, 16, 20);

-- focaccia Gorgonzolaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(2, 5, 200),
(2, 11, 50),
(2, 9, 20),
(2, 1, 2),
(2, 7, 40),
(2, 18, 50),
(2, 20, 1),
(2, 16, 20);

-- focaccia Raclaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(3, 5, 200),
(3, 22, 50),
(3, 9, 20),
(3, 1, 2),
(3, 7, 40),
(3, 18, 50),
(3, 20, 1);

-- focaccia Emmentalaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(4, 6, 200),
(4, 10, 50),
(4, 9, 20),
(4, 7, 40),
(4, 18, 50),
(4, 20, 1),
(4, 15, 20);

-- focaccia Traditione
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(5, 5, 200),
(5, 25, 50),
(5, 9, 20),
(5, 12, 80),
(5, 7, 80),
(5, 18, 50),
(5, 20, 1),
(5, 16, 10),
(5, 17, 10);

-- focaccia Hawaienne
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(6, 5, 200),
(6, 25, 50),
(6, 9, 20),
(6, 4, 80),
(6, 2, 40),
(6, 19, 2),
(6, 18, 50),
(6, 20, 1),
(6, 16, 20);

-- focaccia Américaine
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(7, 5, 200),
(7, 25, 50),
(7, 9, 20),
(7, 4, 80),
(7, 21, 40),
(7, 18, 50),
(7, 20, 1),
(7, 16, 20);

-- focaccia Paysanne
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient, quantite) VALUES
(8, 6, 200),
(8, 8, 50),
(8, 9, 20),
(8, 21, 80),
(8, 13, 80),
(8, 1, 2),
(8, 3, 20),
(8, 7, 40),
(8, 18, 50),
(8, 20, 1),
(8, 16, 20),
(8, 14, 50);