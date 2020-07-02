package com.cda.models;

import lombok.Data;

@Data
public class Livre {
	private String titre;
	private String type;
	private String genre;
	private String auteur;
	private float prix;
	private int nbrePage;
	private int quantite;
	private int identifiant;

	public Livre(String titre, String type, String genre, String auteur, float prix, int nbrePage) {
		this.titre = titre;
		this.type = type;
		this.genre = genre;
		this.auteur = auteur;
		this.prix = prix;
		this.nbrePage = nbrePage;
		this.identifiant = 1;
	}

}
