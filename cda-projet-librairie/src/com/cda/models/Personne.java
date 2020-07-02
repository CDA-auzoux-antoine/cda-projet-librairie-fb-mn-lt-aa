package com.cda.models;

import lombok.Data;

@Data // initialise les get et sed tostring
public abstract class Personne {

	private String nom;
	private String prenom;
	private Compte compte;
<<<<<<< HEAD
	private boolean connexion;// pour que le compte soit créé la connexion doit etre à true
=======
>>>>>>> dev
	private int id;

	public Personne(int id, String nom, String prenom, Compte compte) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.compte = compte;
	}
}
