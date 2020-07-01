package com.cda.models;

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
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public float getPrix() {
		return prix;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}
	public int getNbrePage() {
		return nbrePage;
	}
	public void setNbrePage(int nbrePage) {
		this.nbrePage = nbrePage;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public int getIdentifiant() {
		return identifiant;
	}
	public void setIdentifiant(int identifiant) {
		this.identifiant = identifiant;
	}
	
	
}
