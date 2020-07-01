package com.cda.models;

public class Adresse {

	private int numero;
	private String rue;
	private int codePostal;
	private String ville;

	public Adresse(int numero, String rue, int codePostal, String ville) {
		this.numero = numero;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

}
