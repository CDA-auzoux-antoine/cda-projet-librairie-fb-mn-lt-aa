package com.cda.models;

import lombok.Data;

@Data
public abstract class Personne {
	private String nom;
	private String prenom;
	private Compte compte;
	private boolean connexion;
	private int id;

	public Personne(String nom, String prenom, Compte compte) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.compte = compte;
	}
}
