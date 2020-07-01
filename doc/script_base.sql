#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Livre
#------------------------------------------------------------

CREATE TABLE Livre(
        IdLivre     Int  Auto_increment  NOT NULL ,
        Titre       Varchar (50) NOT NULL ,
        Auteur      Varchar (50) NOT NULL ,
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
        Ville      Varchar (50) NOT NULL
	,CONSTRAINT Adresse_PK PRIMARY KEY (IdAdresse)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: TypeCompte
#------------------------------------------------------------

CREATE TABLE TypeCompte(
        IdTypeCompte Int NOT NULL ,
        Type         Varchar (20) NOT NULL
	,CONSTRAINT TypeCompte_PK PRIMARY KEY (IdTypeCompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Compte
#------------------------------------------------------------

CREATE TABLE Compte(
        IdCompte     Int  Auto_increment  NOT NULL ,
        Login        Varchar (15) NOT NULL ,
        Password     Varchar (200) NOT NULL ,
        Nom          Varchar (50) NOT NULL ,
        Prenom       Varchar (50) NOT NULL ,
        IdTypeCompte Int NOT NULL
	,CONSTRAINT Compte_PK PRIMARY KEY (IdCompte)

	,CONSTRAINT Compte_TypeCompte_FK FOREIGN KEY (IdTypeCompte) REFERENCES TypeCompte(IdTypeCompte)
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

	,CONSTRAINT Client_Adresse_FK FOREIGN KEY (IdAdresse) REFERENCES Adresse(IdAdresse)
	,CONSTRAINT Client_Compte0_FK FOREIGN KEY (IdCompte) REFERENCES Compte(IdCompte)
	,CONSTRAINT Client_Compte_AK UNIQUE (IdCompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commande
#------------------------------------------------------------

CREATE TABLE Commande(
        IdCommande Int  Auto_increment  NOT NULL ,
        Date       Date NOT NULL ,
        IdClient   Int NOT NULL
	,CONSTRAINT Commande_PK PRIMARY KEY (IdCommande)

	,CONSTRAINT Commande_Client_FK FOREIGN KEY (IdClient) REFERENCES Client(IdClient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Libraire
#------------------------------------------------------------

CREATE TABLE Libraire(
        IdLibraire Int  Auto_increment  NOT NULL ,
        IdCompte   Int NOT NULL
	,CONSTRAINT Libraire_PK PRIMARY KEY (IdLibraire)

	,CONSTRAINT Libraire_Compte_FK FOREIGN KEY (IdCompte) REFERENCES Compte(IdCompte)
	,CONSTRAINT Libraire_Compte_AK UNIQUE (IdCompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: detailCommande
#------------------------------------------------------------

CREATE TABLE detailCommande(
        IdLivre    Int NOT NULL ,
        IdCommande Int NOT NULL ,
        Quantite   Int NOT NULL
	,CONSTRAINT detailCommande_PK PRIMARY KEY (IdLivre,IdCommande)

	,CONSTRAINT detailCommande_Livre_FK FOREIGN KEY (IdLivre) REFERENCES Livre(IdLivre)
	,CONSTRAINT detailCommande_Commande0_FK FOREIGN KEY (IdCommande) REFERENCES Commande(IdCommande)
)ENGINE=InnoDB;

