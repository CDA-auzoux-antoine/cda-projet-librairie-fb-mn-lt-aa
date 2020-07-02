create database cda_librairie;

use cda_librairie;

create table Compte (login_Compte varchar(100) UNIQUE  not null,
password_Compte varchar(200) not null,
primary key (login_Compte)) ENGINE = InnoDB;

create table Libraire (id_libraire int(6) auto_increment not null,
prenom_Libraire varchar(50) not null,
nom_Libraire varchar(50) not null,
compte_login_compte varchar(100) not null,
primary key (id_libraire)) ENGINE = InnoDB;


create table livre (id_livre int(6) auto_increment not null,
tittre_livre varchar(50) not null,
auteur_livre varchar(50),
nombreDePages_livre int(4),
Genre_livre varchar(50),
prix_livre decimal(5,2) not null,
primary key (id_livre)) ENGINE = InnoDB;

create table client (id_client int(6) auto_increment not null,
nom_client varchar(50) not null,
prenom_client varchar(50) not null,
id_adresse_adresse int(6) not null,
compte_login_compte varchar(100) not null,
primary key (id_client)) ENGINE = InnoDB;

create table adresse (id_adresse_adresse int(10) auto_increment not null,
numeroDeRue_adresse int(5) not null,
rue_adresse varchar(50) not null,
cp_adresse int(5)not null,
ville_adresse varchar(30),
primary key (id_adresse_adresse)) ENGINE = InnoDB;

create table Commande (id_commande_Commande int(10) auto_increment not null,
id_client int(6) not null ,
date_Commande date,
primary key (id_commande_Commande,id_client)) ENGINE = InnoDB;

create table detailsCommande (
id_commande_Commande int(10) not null,
id_livre int(6) not null,
quantite int(3) not null ,
prixUnitaire  decimal(5,2)
) ENGINE = InnoDB;

create table stock(
id_livre int(6) ,
quantite int(3),
primary key (id_livre) )ENGINE = InnoDB;


alter table Libraire add constraint FK_Libraire_compte_login_compte foreign key (compte_login_compte) references Compte (login_Compte);

alter table client add constraint FK_client_id_adresse_adresse foreign key (id_adresse_adresse) references adresse (id_adresse_adresse);

alter table client add constraint FK_client_compte_login_compte foreign key (compte_login_compte) references Compte (login_Compte);

alter table Commande add constraint FK_Commande_id_client foreign key (id_client) references client (id_client);

select * from detailsCommande;

alter table detailsCommande add constraint FK_detailsCommande_id_commande_Commande foreign key (id_commande_Commande) references commande (id_commande_Commande);




insert into compte (login_Compte, password_Compte) values ('Craig', 'zXgNCmCOjJ');
insert into compte (login_Compte, password_Compte) values ('Antonia', '086up7LC');
insert into compte (login_Compte, password_Compte) values ('Ian', 'jcHqpU5kmNo');
insert into compte (login_Compte, password_Compte) values ('Francesco', 'kNr5m6opTP');
insert into compte (login_Compte, password_Compte) values ('Ava', 'LMmpaZAtydb');
insert into compte (login_Compte, password_Compte) values ('Annabell', 'X53j14');
insert into compte (login_Compte, password_Compte) values ('Syd', '5PUY6TkLZ2rq');
insert into compte (login_Compte, password_Compte) values ('Ursala', 'olsZXjW8B');
insert into compte (login_Compte, password_Compte) values ('Talia', 'rWHmXmZpFzU');
insert into compte (login_Compte, password_Compte) values ('Goddard', 'O1OdyCykKg');
insert into compte (login_Compte, password_Compte) values ('Gale', 'VND8ZGyI4loq');
insert into compte (login_Compte, password_Compte) values ('Lefty', '2xmce9Rau');
insert into compte (login_Compte, password_Compte) values ('Elane', 'hL8KR9g9ST');
insert into compte (login_Compte, password_Compte) values ('Georgianna', 'iiJxGLr3lE');
insert into compte (login_Compte, password_Compte) values ('Doria', 'NM2uphO4SOI');
insert into compte (login_Compte, password_Compte) values ('Gaile', '4zMCcaNeU');
insert into compte (login_Compte, password_Compte) values ('Terencio', 'XlxHfP0ZE');
insert into compte (login_Compte, password_Compte) values ('Corbett', 'oaPXA23');
insert into compte (login_Compte, password_Compte) values ('Maximilian', '9owDrGMmog');
insert into compte (login_Compte, password_Compte) values ('Alfy', 'p3neAKk40O');
insert into compte (login_Compte, password_Compte) values ('Audra', 'OsBIhrno0a');
insert into compte (login_Compte, password_Compte) values ('Neron', 'tk97fLt');
insert into compte (login_Compte, password_Compte) values ('Aymer', 'NKI3KkCoY');
insert into compte (login_Compte, password_Compte) values ('Sheri', 'ur0MMG');
insert into compte (login_Compte, password_Compte) values ('Arabelle', 'Pu6IE2i');
insert into compte (login_Compte, password_Compte) values ('Christel', 'UtEphb8f');
insert into compte (login_Compte, password_Compte) values ('Christine', 'bwFp49AB');
insert into compte (login_Compte, password_Compte) values ('Mack', 'Gkysy5fFIMv');
insert into compte (login_Compte, password_Compte) values ('Annnora', 'YW4LGFR6x');
insert into compte (login_Compte, password_Compte) values ('Katine', 'iTfS2ya8MOJ');
insert into compte (login_Compte, password_Compte) values ('Brita', 'LPQSNU8YOba');
insert into compte (login_Compte, password_Compte) values ('Jessey', 'M4V4lX');
insert into compte (login_Compte, password_Compte) values ('Kimberley', '8wfA6ZRxuPMf');
insert into compte (login_Compte, password_Compte) values ('Verile', 'OMHoRCrNHBM');
insert into compte (login_Compte, password_Compte) values ('Elayne', 'NKCryxMMf');
insert into compte (login_Compte, password_Compte) values ('Shari', 'eBRjFhcEtsL');
insert into compte (login_Compte, password_Compte) values ('Julieta', '6Ja4zZz4');
insert into compte (login_Compte, password_Compte) values ('Rod', '1fIJjo7r');
insert into compte (login_Compte, password_Compte) values ('Man', 'hL0M1Lr');
insert into compte (login_Compte, password_Compte) values ('Prentiss', 'riOwJ17xH');
insert into compte (login_Compte, password_Compte) values ('Belle', 'apGGkdN');
insert into compte (login_Compte, password_Compte) values ('Diann', 'tJWw0mcb1mYM');
insert into compte (login_Compte, password_Compte) values ('Agata', '0jFItq');
insert into compte (login_Compte, password_Compte) values ('Clarey', 'MeczObBh');
insert into compte (login_Compte, password_Compte) values ('Baron', '55c27PQ');
insert into compte (login_Compte, password_Compte) values ('Elonore', 'NyEJYoxn');
insert into compte (login_Compte, password_Compte) values ('Rogerio', '3LypQT2XOif5');
insert into compte (login_Compte, password_Compte) values ('Essa', 'ZxTg8Kl');
insert into compte (login_Compte, password_Compte) values ('Tressa', 'Ox1G8f5YkH');
insert into compte (login_Compte, password_Compte) values ('Morlee', '8llUIdQubLE');

insert into compte (login_Compte, password_Compte) values ('mohamed', 'mohamed');
insert into compte (login_Compte, password_Compte) values ('loreen', 'loreen');
insert into compte (login_Compte, password_Compte) values ('antoine', 'antoine');
insert into compte (login_Compte, password_Compte) values ('fethi', 'fethi');

select * from compte;

#client 



insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('mohammed', 'nechab', 'mohamed');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('loreen', 'touron', 'loreen');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('antoine', 'auzoux', 'antoine');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('fethi', 'benseddik', 'fethi');


#libraire
/*
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Brit', 'Brayford', 'Craig');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Wes', 'Kemitt','Antonia' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Wenona', 'Stille', 'Ian');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Bobbie', 'Sadgrove', 'Francesco');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Hulda', 'Bullman', 'Ava');

insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Conrad', 'Sandaver', 'Annabell');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Adams', 'Spracklin', 'Syd');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Wilhelm', 'Krinks','Ursala' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Anne-corinne', 'Ansteys','Talia' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Worthington', 'Larne', 'Goddard');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Lira', 'Venart', 'Gale');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Sherill', 'Thirst','Lefty' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Aili', 'Pedrozzi', 'Elane');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Teodoro', 'Pennycord', 'Georgianna');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Eddie', 'Feighney','Doria' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Gery', 'Hengoed','Gaile' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Arlie', 'Scougal', 'Terencio');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Ardys', 'Book','Corbett' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Bradan', 'Tomasicchio','Maximilian' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Sidonia', 'McGlaud', 'Alfy');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Rosco', 'Pickerin','Audra' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Melicent', 'Hurdman','Neron' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Duncan', 'Gipson', 'Aymer');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Rici', 'MacKee', 'Sheri');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Nanette', 'Dahlberg','Arabelle' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Gustaf', 'Elliss', 'Christel');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Yorke', 'Spellacy','Christine' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Lyn', 'Gateman', 'Mack');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Anselm', 'Presslee', 'Annnora');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Vonny', 'Murtimer','Katine' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Petrina', 'Murricanes','Brita' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Serene', 'Tyreman','Jessey' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Odelle', 'Bernt','Kimberley' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Lani', 'Mallan', 'Verile');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Eyde', 'Labet','Elayne' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Jackquelin', 'Heis', 'Shari');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Brynn', 'Mar', 'Julieta');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Seamus', 'Patron', 'Rod');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Nikos', 'Hartell', 'Man');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Pamelina', 'Brigge', 'Prentiss');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Sydney', 'Dupree', 'Belle');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Ephrayim', 'Puddin', 'Diann');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Padget', 'Youster','Agata' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Thor', 'Howsego','Clarey' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Perle', 'Byron', 'Baron');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Sheilakathryn', 'Beining', 'Elonore');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Nannie', 'Brabban','Rogerio' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Natalya', 'Trulock', 'Essa');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Danyette', 'Panting','Tressa' );
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('Rivy', 'Billam', 'Morlee');


select * from Libraire;
*/
# adresse

insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 89401, '78552', '7th', 'Dhi as Sufal');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 52543, '09', 'Union', 'Zuyevka');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 79079, '2792', 'Mifflin', 'Korem');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 48533, '742', 'Troy', 'Vejprnice');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 18256, '5248', 'Milwaukee', 'Sloboda');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 84594, '26216', 'Barnett', 'Qal‘at al Andalus');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 84826, '10', 'Texas', 'Palanit');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 40668, '86072', 'Huxley', 'Guiniculalay');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 94184, '80975', 'Pawling', 'Bergem');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 12543, '11477', 'Killdeer', 'Jiji');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 18100, '0085', 'Lakeland', 'Bluefields');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 16144, '4', 'Columbus', 'Caldono');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 92188, '80', 'Vidon', 'Burmakino');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 31309, '4', 'Hallows', 'Mishixiang');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 68897, '7', 'Debra', 'Xuebu');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 37423, '7603', 'Nelson', 'Nancun');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 98431, '31', 'Shopko', 'Stodolishche');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 26962, '1', 'Declaration', 'Mufulira');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 60472, '3', 'Coleman', 'Ramos West');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 67757, '3', 'Oak Valley', 'Cikarang');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 42257, '3', 'Sunnyside', 'Bremen');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 57667, '25644', 'Crowley', 'Bandeirantes');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 12953, '4737', 'Dunning', 'Río Segundo');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 35346, '014', 'Helena', 'Nachalovo');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 20872, '974', 'School', 'Bystrytsya');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 50527, '98', 'Blackbird', 'Pawa');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 46389, '7115', 'Corry', 'Gangjia');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 45546, '04', 'Ilene', 'Gomel');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 42199, '1', 'Corry', 'San Jose');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 36718, '1', 'Aberg', 'Ochër');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 95097, '6', 'Canary', 'Huangxikou');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 44299, '55263', 'Maple', 'Boavista');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 97301, '0', 'Hoard', 'Charagua');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 40039, '6355', 'Clarendon', 'Gornyye Klyuchi');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 24032, '9', 'Mandrake', 'Shangdu');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 25193, '20', 'Starling', 'Jomboy');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 81677, '6726', 'Farwell', 'München');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 69796, '94', 'Shopko', 'Yulin');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 58760, '7610', 'Fallview', 'Jingdang');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 97067, '679', 'Superior', 'Nanjie');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 91247, '8', 'Onsgard', 'Apeldoorn');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 49083, '8099', 'Welch', 'Fujieda');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 57304, '57199', 'North', 'Daciyao');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 15368, '65', 'Manley', 'San Nicolás de los Arroyos');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 60282, '3', 'Derek', 'Rongkou');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 79523, '744', '5th', ' Na Hang');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 90545, '4', 'Killdeer', 'Shiziling');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 67346, '408', '5th', 'Kafr az Zayyat');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 18649, '23', 'Northfield', 'Haikou');
insert into adresse ( cp_adresse,numeroDeRue_adresse, rue_adresse, ville_adresse) values ( 10437, '6683', 'Shopko', 'Estreito Câmara de Lobos');

select  * from adresse;


#client

insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Renae', 'Tomaschke', 1,'Craig' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Kingsly', 'Montel', 2, 'Antonia');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Cleopatra', 'Arnison', 3,'Ian' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Percival', 'Frodsham', 4,'Francesco' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Twila', 'Thornbarrow', 5,'Ava' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Randy', 'Commander', 6,'Annabell' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Nichole', 'Svanetti', 7, 'Syd');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Cassandre', 'Burgen', 8, 'Ursala');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Troy', 'Shoebrook', 9, 'Talia');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Dina', 'Mangenet', 10, 'Goddard');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Bearnard', 'Normanvell', 11, 'Gale');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Jules', 'Tytherton', 12, 'Lefty');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Gussi', 'Hultberg', 13,'Elane' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Retha', 'Rawlison', 14,'Georgianna' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Nikola', 'Quinsee', 15,'Doria' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Marietta', 'Schriren', 16, 'Gaile');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Lou', 'Hymas', 17, 'Terencio');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Myca', 'Menco', 18,'Corbett' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Hamlin', 'Vondracek', 19,'Maximilian' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Charla', 'Crome', 20,'Alfy' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Sibella', 'Blyde', 21, 'Audra');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Marris', 'Duiged', 22, 'Neron');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Elvin', 'Colclough', 23, 'Aymer');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Nobie', 'Hariot', 24,'Sheri' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Jermain', 'Yushkov', 25, 'Arabelle');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Allyson', 'Rule', 26,'Christel' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Evania', 'Hayle', 27,'Christine' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Meaghan', 'Imos', 28,'Mack' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Boone', 'Lound', 29, 'Annnora');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Savina', 'MacAnelley', 30, 'Katine');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Ronica', 'Lockyear', 31, 'Brita');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Jo-anne', 'Rosle', 32, 'Jessey');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Heddi', 'Graddon', 33, 'Kimberley');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Milena', 'Landeg', 34, 'Verile');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Amalie', 'Sustin', 35, 'Elayne');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Barby', 'Tring', 36, 'Shari');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Lorna', 'Creighton', 37, 'Julieta');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Yancy', 'Josse', 38, 'Rod');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Elbert', 'Dimblebee', 39,'Man' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Jarrod', 'Oen', 40,'Prentiss' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Tatiana', 'Risely', 41,'Belle' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Cherlyn', 'Offell', 42,'Diann' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Korie', 'Elnough', 43, 'Agata');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Tiffani', 'Petracchi', 44, 'Clarey');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Bert', 'Dewett', 45, 'Baron');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Eugenio', 'Dudson', 46,'Elonore' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Mic', 'Backshaw', 47,'Rogerio' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Marilee', 'Pilley', 48,'Essa' );
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Reid', 'Snewin', 49, 'Tressa');
insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('Ardath', 'Lillee', 50, 'Morlee');


#livre
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Dennis the Menace Christmas A" , "Mougenel","265 ","Comedy" ,8.39);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("King of Germany" , "Fahrenbach","278 ","Comedy" ,1.17);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Philadelphia Experiment II", "Longbone","276 ","Action|Adventure|Sci-Fi",7.86);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Curse of the Golden Flower Man cheng ", "Causon","200 ","Action|Drama" ,10.29);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Skin Game" , "Remer" ,"227 ","Comedy|Romance|Western" ,6.64);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Absolon" , "Norgate" ,"253 ","Action|Sci-Fi|Thriller" ,5.60);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("10 Items or Less", "Lamblin" ,"250 ","Comedy|Drama|Romance" ,7.36);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Satan Bug ", "Priestley" ,"222 ","Sci-Fi|Thriller",8.60);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Legend of the Village Warriors Bangrajan", "Caseri","256 ","Action|Drama|War" ,1.53);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("M" , "Blagburn","252 ","Crime|Drama|Film-Noir|Thriller" ,1.10);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Hamlet,Prince of Denmark", "Chaffe","280 ","Drama",3.69);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Big Stan", "MacDermott","203 ","Comedy" ,7.78);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Hotel Pacific Zaklete rewiry", "Bernhard","257 ","Drama",4.19);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("West of Memphis" , "Gors","267 ","Documentary",9.58);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Righteous Kill", "Kingman" ,"299 ","Crime|Mystery|Thriller" ,7.24);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Celestial Wives of the Meadow Mari " , "Huyton","218 ","Drama",1.58);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Benny's Video", "MacCague","279 ","Drama|Horror" ,8.96);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Rosetta" , "Larderot","265 ","Drama",5.93);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Uncommon Valor", "Hamly" ,"260 ","Action|War" ,4.39);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Stealth" , "Kildea","242 ","Action|Adventure|Sci-Fi|Thriller" ,6.95);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Boom!" , "Lumm","292 ","Drama",8.40);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Equinox" , "Beades","257 ","Drama|Mystery|Thriller" ,7.95);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Come Blow Your Horn" , "Witherup","278 ","Comedy" ,4.43);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Demon Lover Diary" , "McCaghan","274 ","Documentary",10.52);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Heart of America", "Dodshon" ,"297 ","Drama",9.24);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Bullfighter and the Lady", "Middiff" ,"217 ","Action|Drama|Romance" ,8.38);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Affair of Love,An Liaison pornographique,Une", "Stoggell","221 ","Drama|Romance",5.55);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Hairdresser's Husband,The Le mari de la coiffeuse", "Amorine" ,"234 ","Comedy|Drama|Romance" ,1.94);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Running Free", "Valenta" ,"249 ","Adventure|Children|Drama" ,5.86);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Quick Change", "Richardes" ,"293 ","Comedy|Crime" ,9.10);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Frontier of the Dawn La frontière de l'aube", "Ambrosoli" ,"204 ","Drama",1.36);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Man with One Red Shoe ", "Levicount" ,"249 ","Comedy|Thriller",2.42);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Sweeney Todd: The Demon Barber of Fleet Street", "Rozec" ,"289 ","Crime|Horror" ,7.83);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Most Dangerous Game ", "Vasilmanov","288 ","Adventure|Mystery|Thriller" ,4.16);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Repossessed" , "MacKniely" ,"262 ","Comedy" ,4.12);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Baby Mama" , "Stidever","202 ","Comedy" ,3.31);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("See the Sea" , "Hurrell" ,"201 ","Thriller" ,9.19);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, prix_livre) values ("Changing Habits" , "Shelly","256 ","Comedy|Drama" ,6.02);

/*
select * from livre;

insert into Commande (id_client, date_Commande)values (1, "1992-12-20");
select * from Commande;

insert into detailsCommande values (1, 1, 25, 8.39);
select * from detailsCommande;

select prix_livre from livre where id_livre = 1;
*/


select * from stock;