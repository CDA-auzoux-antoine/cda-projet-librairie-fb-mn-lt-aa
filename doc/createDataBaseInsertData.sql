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
quantite int(3),
primary key (id_livre)) ENGINE = InnoDB;

create table client (id_client int(6) auto_increment not null,
nom_client varchar(50) not null,
prenom_client varchar(50) not null,
id_adresse_adresse int(6) not null,
compte_login_compte varchar(100) not null,
isActive Bool DEFAULT false,
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



alter table Libraire add constraint FK_Libraire_compte_login_compte foreign key (compte_login_compte) references Compte (login_Compte);

alter table client add constraint FK_client_id_adresse_adresse foreign key (id_adresse_adresse) references adresse (id_adresse_adresse);

alter table client add constraint FK_client_compte_login_compte foreign key (compte_login_compte) references Compte (login_Compte);

alter table Commande add constraint FK_Commande_id_client foreign key (id_client) references client (id_client);


alter table detailsCommande add constraint FK_detailsCommande_id_commande_Commande foreign key (id_commande_Commande) references commande (id_commande_Commande);



insert into compte (login_Compte, password_Compte) values ('client','62608e08adc29a8d6dbc9754e659f125');
insert into compte (login_Compte, password_Compte) values ('Antonia','84198b8a17ab6f361639a3adb1cc88b2');
insert into compte (login_Compte, password_Compte) values ('Ian','3e1e81d56500057817ea2acce79a6664');
insert into compte (login_Compte, password_Compte) values ('Francesco','67fb0692f6f7aa3c04968c0c1e4dbcb4');
insert into compte (login_Compte, password_Compte) values ('Ava','4985671f0cd0929bc6ab3c5d4d4dab4d');
insert into compte (login_Compte, password_Compte) values ('Annabell','0e566e7d403c1f5a2057c04bc2f3acff');
insert into compte (login_Compte, password_Compte) values ('Syd','b1dbc28b915523e608342f93850399c8');
insert into compte (login_Compte, password_Compte) values ('Ursala','7bf594e2b6be4f2cddf030529f1d13f1');
insert into compte (login_Compte, password_Compte) values ('Talia','2712dc6dca41c044f184543ca522561e');
insert into compte (login_Compte, password_Compte) values ('Goddard','2a6ae60c695d3fd44ea0cb5c5ccfe1cb');
insert into compte (login_Compte, password_Compte) values ('Gale','295af79b7b2deab9298ea80dba4fcf80');
insert into compte (login_Compte, password_Compte) values ('Lefty','6b2b61f197441ea9a7a415a2898c5c4d');
insert into compte (login_Compte, password_Compte) values ('Elane','ea81bb0019e01dad4f04418aea9768b0');
insert into compte (login_Compte, password_Compte) values ('Georgianna','4649b729c77b0b7b86683245af803aa7');
insert into compte (login_Compte, password_Compte) values ('Doria','9396d8764a94054c678dd37734781f34');
insert into compte (login_Compte, password_Compte) values ('Gaile','489cccd63b2c0b0f95cd9633a5345937');
insert into compte (login_Compte, password_Compte) values ('Terencio','1f9aac44552f8a6136977491ac0950a9');
insert into compte (login_Compte, password_Compte) values ('Corbett','d12d66832c79f7341dcd6435673853ad');
insert into compte (login_Compte, password_Compte) values ('Maximilian','1df2f6639f8bea13a4e65c230c4fa000');
insert into compte (login_Compte, password_Compte) values ('Alfy','5dbb6d9aaa84892d7d0c10d314d12d39');
insert into compte (login_Compte, password_Compte) values ('Audra','46f63be17853f1e6e6ca4a06ceb5601a');
insert into compte (login_Compte, password_Compte) values ('Neron','2ae1ab4433d6ef2eb26cedf9d1699a19');
insert into compte (login_Compte, password_Compte) values ('Aymer','9ad112ad10d3b47283de6da2d98cc98c');
insert into compte (login_Compte, password_Compte) values ('Sheri','260bf9f903e5c4196947a319461760e2');
insert into compte (login_Compte, password_Compte) values ('Arabelle','a5a743964ae7ee4b907b4f95d38ef8ea');
insert into compte (login_Compte, password_Compte) values ('Christel','9c607315b22f1ce38e87558f7c5897ba');
insert into compte (login_Compte, password_Compte) values ('Christine','c317e24671d726f44a536689a0d44104');
insert into compte (login_Compte, password_Compte) values ('Mack','10b0e6445ad46e7121a2dc109f0d40fc');
insert into compte (login_Compte, password_Compte) values ('Annnora','6fad932085f7490b628b760e189317a5');
insert into compte (login_Compte, password_Compte) values ('Katine','e87c402ad2e2db6795f51223dbdd3e23');
insert into compte (login_Compte, password_Compte) values ('Brita','a719b56e16e2f2deac769c780217c9a4');
insert into compte (login_Compte, password_Compte) values ('Jessey','ee4880d4a384acb0c9ab217efcd86b23');
insert into compte (login_Compte, password_Compte) values ('Kimberley','70cb66fc48f15c95343bd7f5cf32a9a4');
insert into compte (login_Compte, password_Compte) values ('Verile','f79127d2e90d88ca85de3311f1bb2262');
insert into compte (login_Compte, password_Compte) values ('Elayne','1c9f5d3f06274dfb437f94f27e963934');
insert into compte (login_Compte, password_Compte) values ('Shari','96c8933201ab059c46f04366b1889821');
insert into compte (login_Compte, password_Compte) values ('Julieta','ab1459c7e61b4b10e29e72ae1aa0a4e1');
insert into compte (login_Compte, password_Compte) values ('Rod','abcc3ee69fd00960af12fec0489f3043');
insert into compte (login_Compte, password_Compte) values ('Man','08e4915ae54137052ac6a23c7fdd183f');
insert into compte (login_Compte, password_Compte) values ('Prentiss','8174ca01b2c545bf132f6cce6bb38f8d');
insert into compte (login_Compte, password_Compte) values ('Belle','f001fa191cf90ab1d1336628b6c46101');
insert into compte (login_Compte, password_Compte) values ('Diann','720c78bbaf761dbc3caa8c03fe907266');
insert into compte (login_Compte, password_Compte) values ('Agata','a3c76b514b5597f2b8360a48d9eec5ae');
insert into compte (login_Compte, password_Compte) values ('Clarey','61189ab7f3787739a9de15e8231f2973');
insert into compte (login_Compte, password_Compte) values ('Baron','645df83bf1b728a38c53a69178acebf6');
insert into compte (login_Compte, password_Compte) values ('Elonore','ba43c2083f146d693aa732f5e44840ac');
insert into compte (login_Compte, password_Compte) values ('Rogerio','fbc0d1e74574284a7b01481833c8545b');
insert into compte (login_Compte, password_Compte) values ('Essa','789e16e1c441b0dc9c6bf45d2c41dc01');
insert into compte (login_Compte, password_Compte) values ('Tressa','7edd93021be4d5560d060689d5b8a515');
insert into compte (login_Compte, password_Compte) values ('Morlee','779989a90de7fd7db76eaf6212f0ffe0');
insert into compte (login_Compte, password_Compte) values ('mohamed','309cd3800aacbd003ac36199fa537295');
insert into compte (login_Compte, password_Compte) values ('loreen','1483efba881726cfa09f1451f4dbbbb5');
insert into compte (login_Compte, password_Compte) values ('antoine','0e5091a25295e44fea9957638527301f');
insert into compte (login_Compte, password_Compte) values ('fethi','c7a75ed80463fa35c64e78dcf28312f0');


#client 



insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('mohammed', 'nechab', 'mohamed');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('loreen', 'touron', 'loreen');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('antoine', 'auzoux', 'antoine');
insert into libraire (nom_libraire, prenom_libraire, compte_login_compte) values ('fethi', 'benseddik', 'fethi');


#libraire
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



#client

insert into client (nom_client, prenom_client, id_adresse_adresse, compte_login_compte) values ('nomClientDansLAdb', 'prenomClientDansLAdb', 1,'client' );
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

insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Dennis the Menace Christmas A" , "Mougenel","265 ","Comedy" ,30 ,8.39);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("King of Germany" , "Fahrenbach","278 ","Comedy" ,860 ,1.17);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Philadelphia Experiment II", "Longbone","276 ","Action|Adventure|Sci-Fi",840 ,7.86);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Curse of the Golden Flower Man cheng ", "Causon","200 ","Action|Drama" ,430 ,10.29);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Skin Game" , "Remer" ,"227 ","Comedy|Romance|Western" ,590 ,6.64);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Absolon" , "Norgate" ,"253 ","Action|Sci-Fi|Thriller" ,720 ,5.60);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("10 Items or Less", "Lamblin" ,"250 ","Comedy|Drama|Romance" ,090 ,7.36);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Satan Bug ", "Priestley" ,"222 ","Sci-Fi|Thriller",950 ,8.60);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Legend of the Village Warriors Bangrajan", "Caseri","256 ","Action|Drama|War" ,220 ,1.53);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("M" , "Blagburn","252 ","Crime|Drama|Film-Noir|Thriller" ,870 ,1.10);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Hamlet,Prince of Denmark", "Chaffe","280 ","Drama",910 ,3.69);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Big Stan", "MacDermott","203 ","Comedy" ,870 ,7.78);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Hotel Pacific Zaklete rewiry", "Bernhard","257 ","Drama",970 ,4.19);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("West of Memphis" , "Gors","267 ","Documentary",390 ,9.58);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Righteous Kill", "Kingman" ,"299 ","Crime|Mystery|Thriller" ,300 ,7.24);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Celestial Wives of the Meadow Mari " , "Huyton","218 ","Drama",570 ,1.58);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Benny's Video", "MacCague","279 ","Drama|Horror" ,490 ,8.96);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Rosetta" , "Larderot","265 ","Drama",290 ,5.93);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Uncommon Valor", "Hamly" ,"260 ","Action|War" ,640 ,4.39);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Stealth" , "Kildea","242 ","Action|Adventure|Sci-Fi|Thriller" ,670 ,6.95);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Boom!" , "Lumm","292 ","Drama",310 ,8.40);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Equinox" , "Beades","257 ","Drama|Mystery|Thriller" ,210 ,7.95);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Come Blow Your Horn" , "Witherup","278 ","Comedy" ,740 ,4.43);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Demon Lover Diary" , "McCaghan","274 ","Documentary",020 ,10.52);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Heart of America", "Dodshon" ,"297 ","Drama",780 ,9.24);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Bullfighter and the Lady", "Middiff" ,"217 ","Action|Drama|Romance" ,590 ,8.38);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Affair of Love,An Liaison pornographique,Une", "Stoggell","221 ","Drama|Romance",000 ,5.55);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Hairdresser's Husband,The Le mari de la coiffeuse", "Amorine" ,"234 ","Comedy|Drama|Romance" ,690 ,1.94);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Running Free", "Valenta" ,"249 ","Adventure|Children|Drama" ,760 ,5.86);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Quick Change", "Richardes" ,"293 ","Comedy|Crime" ,860 ,9.10);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Frontier of the Dawn La frontière de l'aube", "Ambrosoli" ,"204 ","Drama",970 ,1.36);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Man with One Red Shoe ", "Levicount" ,"249 ","Comedy|Thriller",870 ,2.42);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Sweeney Todd: The Demon Barber of Fleet Street", "Rozec" ,"289 ","Crime|Horror" ,650 ,7.83);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Most Dangerous Game ", "Vasilmanov","288 ","Adventure|Mystery|Thriller" ,910 ,4.16);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Repossessed" , "MacKniely" ,"262 ","Comedy" ,680 ,4.12);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Baby Mama" , "Stidever","202 ","Comedy" ,790 ,3.31);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("See the Sea" , "Hurrell" ,"201 ","Thriller" ,910 ,9.19);
insert into livre ( tittre_livre, auteur_livre, nombreDePages_livre, Genre_livre, quantite, prix_livre) values ("Changing Habits" , "Shelly","256 ","Comedy|Drama" ,740 ,6.02);


/*
select * from livre;

insert into Commande (id_client, date_Commande)values (1, "1992-12-20");
select * from Commande;

insert into detailsCommande values (1, 1, 25, 8.39);
select * from detailsCommande;

select prix_livre from livre where id_livre = 1;
*/

/*
select * from stock;
*/



select * from client c where compte_login_compte ='';

