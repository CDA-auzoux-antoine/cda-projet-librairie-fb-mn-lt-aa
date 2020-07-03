package com.cda.models;

import com.cda.constant.TypeDeCompte;

import lombok.Data;

@Data // initialise les get et sed tostring
public abstract class Personne {

	private String nom;
	private String prenom;
	private Compte compte;
	private TypeDeCompte type;
	private boolean connexion;// pour que le compte soit créé la connexion doit etre à true
	private int id;

	public Personne(String nom, String prenom, String login) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.compte = (Compte) new CompteImp().find(login);
	}
}
