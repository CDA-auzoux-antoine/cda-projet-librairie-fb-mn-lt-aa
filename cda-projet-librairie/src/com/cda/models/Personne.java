package com.cda.models;

import lombok.Data;

@Data
public abstract class Personne {
	private String nom;
	private String prenom;
	private Compte compte;
	private int id;

	public Personne(int id, String nom, String prenom, Compte compte) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.compte = compte;
	}
}
