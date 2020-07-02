package com.cda.models;

import lombok.Data;

@Data
public abstract class Personne {

	private String nom;
	private String prenom;
	private Compte compte;
	private boolean connexion;// pour que le compte soit créé la connexion doit etre à true
	private int id;

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public Compte getCompte() {
		return compte;
	}

	public void setCompte(Compte compte) {
		this.compte = compte;
	}

	public static boolean isConnexion(boolean connexion) {//
		return connexion;
	}

	public void setConnexion(boolean connexion) {
		this.connexion = connexion;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Personne(String nom, String prenom, Compte compte) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.compte = compte;
	}
}
