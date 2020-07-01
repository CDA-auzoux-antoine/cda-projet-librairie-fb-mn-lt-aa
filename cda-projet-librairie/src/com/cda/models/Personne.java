package com.cda.models;

public abstract class Personne {
	private String nom;
	private String prenom;
	private Compte compte;
	private boolean connexion;
	private int id;
	
	public Personne(String nom, String prenom) {
		super();
		this.nom = nom;
		this.prenom = prenom;
	}
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
	public boolean isConnexion() {
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
	
	
}

