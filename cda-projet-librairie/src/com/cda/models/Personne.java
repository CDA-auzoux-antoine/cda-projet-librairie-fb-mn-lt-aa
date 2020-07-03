package com.cda.models;

import com.cda.constant.TypeDeCompte;

import lombok.Data;

@Data // initialise les get et sed tostring
public abstract class Personne {

	private static String nom;
	private static String prenom;
	private static String login;
	private static String password;
	private Compte compte;

	private boolean connexion;// pour que le compte soit créé la connexion doit etre à true

	private int id;

	public Personne(String nom, String prenom) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.compte = new Compte(getLogin(), getPassword(), TypeDeCompte.CLIENT);
	}

	public static String getNom() {
		return nom;
	}

	public static void setNom(String nom) {
		Personne.nom = nom;
	}

	public static String getPrenom() {
		return prenom;
	}

	public static void setPrenom(String prenom) {
		Personne.prenom = prenom;
	}

	public static String getLogin() {
		return login;
	}

	public static void setLogin(String login) {
		Personne.login = login;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		Personne.password = password;
	}
}
