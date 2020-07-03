package com.cda.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data // initialise les get et sed tostring
@Getter
@Setter
public abstract class Personne {

	private String nom;
	private String prenom;
	private String login;

	private boolean connexion;// pour que le compte soit créé la connexion doit etre à true

	private int id;

<<<<<<< HEAD
	public Personne(String nom, String prenom, String login) {
=======
	public Personne(int id, String nom, String prenom, String plogin) {
>>>>>>> loreen
		super();
		this.nom = nom;
		this.prenom = prenom;
<<<<<<< HEAD
		this.login = login;
=======
		this.login = plogin;

>>>>>>> loreen
	}
}
