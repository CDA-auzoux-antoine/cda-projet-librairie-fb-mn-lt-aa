#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Livre
#------------------------------------------------------------

CREATE TABLE Livre(
        IdLivre     Int  Auto_increment  NOT NULL ,
        Titre       Varchar (100) NOT NULL ,
        Auteur      Varchar (100) NOT NULL ,
        NombrePages Int NOT NULL ,
        Genre       Varchar (30) NOT NULL ,
        Prix        Int NOT NULL
	,CONSTRAINT Livre_PK PRIMARY KEY (IdLivre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adresse
#------------------------------------------------------------

CREATE TABLE Adresse(
        IdAdresse  Int  Auto_increment  NOT NULL ,
        NumeroRue  Int NOT NULL ,
        NomRue     Varchar (100) NOT NULL ,
        CodePostal Int NOT NULL ,
        Ville      Varchar (100) NOT NULL
	,CONSTRAINT Adresse_PK PRIMARY KEY (IdAdresse)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commande
#------------------------------------------------------------

CREATE TABLE Commande(
        IdCommande Int  Auto_increment  NOT NULL ,
        Date       Date NOT NULL ,
        IdClient   Int NOT NULL
	,CONSTRAINT Commande_PK PRIMARY KEY (IdCommande)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        IdClient     Int  Auto_increment  NOT NULL ,
        CompteValide Bool NOT NULL ,
        IdAdresse    Int NOT NULL ,
        IdCompte     Int NOT NULL
	,CONSTRAINT Client_PK PRIMARY KEY (IdClient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Libraire
#------------------------------------------------------------

CREATE TABLE Libraire(
        IdLibraire Int  Auto_increment  NOT NULL ,
        IdCompte   Int NOT NULL
	,CONSTRAINT Libraire_PK PRIMARY KEY (IdLibraire)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Compte
#------------------------------------------------------------

CREATE TABLE Compte(
        IdCompte   Int  Auto_increment  NOT NULL ,
        Login      Varchar (100) NOT NULL ,
        Password   Varchar (100) NOT NULL ,
        Nom        Varchar (100) NOT NULL ,
        Prenom     Varchar (100) NOT NULL ,
        IdClient   Int NOT NULL ,
        IdLibraire Int NOT NULL
	,CONSTRAINT Compte_PK PRIMARY KEY (IdCompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: detailCommande
#------------------------------------------------------------

CREATE TABLE detailCommande(
        IdLivre    Int NOT NULL ,
        IdCommande Int NOT NULL ,
        Quantite   Int NOT NULL
	,CONSTRAINT detailCommande_PK PRIMARY KEY (IdLivre,IdCommande)
)ENGINE=InnoDB;




ALTER TABLE Commande
	ADD CONSTRAINT Commande_Client0_FK
	FOREIGN KEY (IdClient)
	REFERENCES Client(IdClient);

ALTER TABLE Client
	ADD CONSTRAINT Client_Adresse0_FK
	FOREIGN KEY (IdAdresse)
	REFERENCES Adresse(IdAdresse);

ALTER TABLE Client
	ADD CONSTRAINT Client_Compte1_FK
	FOREIGN KEY (IdCompte)
	REFERENCES Compte(IdCompte);

ALTER TABLE Client 
	ADD CONSTRAINT Client_Compte0_AK 
	UNIQUE (IdCompte);

ALTER TABLE Libraire
	ADD CONSTRAINT Libraire_Compte0_FK
	FOREIGN KEY (IdCompte)
	REFERENCES Compte(IdCompte);

ALTER TABLE Libraire 
	ADD CONSTRAINT Libraire_Compte0_AK 
	UNIQUE (IdCompte);

ALTER TABLE Compte
	ADD CONSTRAINT Compte_Client0_FK
	FOREIGN KEY (IdClient)
	REFERENCES Client(IdClient);

ALTER TABLE Compte
	ADD CONSTRAINT Compte_Libraire1_FK
	FOREIGN KEY (IdLibraire)
	REFERENCES Libraire(IdLibraire);

ALTER TABLE Compte 
	ADD CONSTRAINT Compte_Client0_AK 
	UNIQUE (IdClient);

ALTER TABLE Compte 
	ADD CONSTRAINT Compte_Libraire1_AK 
	UNIQUE (IdLibraire);

ALTER TABLE detailCommande
	ADD CONSTRAINT detailCommande_Livre0_FK
	FOREIGN KEY (IdLivre)
	REFERENCES Livre(IdLivre);

ALTER TABLE detailCommande
	ADD CONSTRAINT detailCommande_Commande1_FK
	FOREIGN KEY (IdCommande)
	REFERENCES Commande(IdCommande);
