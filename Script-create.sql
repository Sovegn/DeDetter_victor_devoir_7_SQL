CREATE DATABASE tifosi;

CREATE USER 'Tifosi' IDENTIFIED BY '123546';
GRANT ALL PRIVILEGES ON tifosi.* TO 'Tifosi';

USE tifosi;

CREATE TABLE ingredient (
id_ingredient INT auto_increment PRIMARY KEY,
nom VARCHAR(100) NOT NULL
);

CREATE TABLE client (
id_client INT auto_increment PRIMARY KEY,
nom VARCHAR(100) NOT null,
email VARCHAR(150) UNIQUE NOT null,
code_postal VARCHAR(10) not null
);

CREATE TABLE marque (
id_marque INT auto_increment PRIMARY KEY,
nom VARCHAR(100) NOT NULL
);

create table focaccia(
id_focaccia int auto_increment PRIMARY KEY,
nom varchar(100) not null,
prix decimal(6,2) not null
);

CREATE TABLE menu (
id_menu INT auto_increment PRIMARY key,
nom varchar(100) not null,
prix decimal(6,2) not null
);

CREATE TABLE boisson (
id_boisson INT auto_increment PRIMARY KEY,
nom VARCHAR(100) NOT NULL,
id_marque INT NOT NULL,
FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

CREATE TABLE focaccia_ingredient (
id_focaccia INT,
id_ingredient INT,
quantite DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id_focaccia, id_ingredient),
FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

CREATE TABLE menu_focaccia (
id_menu INT,
id_focaccia INT,
PRIMARY KEY (id_menu, id_focaccia),
FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE menu_boisson (
id_menu INT,
id_boisson INT,
PRIMARY KEY (id_menu, id_boisson),
FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

CREATE TABLE client_menu (
id_client INT,
id_menu INT,
date_achat DATE NOT NULL,
PRIMARY KEY (id_client, id_menu, date_achat),
FOREIGN KEY (id_client) REFERENCES client(id_client),
FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);