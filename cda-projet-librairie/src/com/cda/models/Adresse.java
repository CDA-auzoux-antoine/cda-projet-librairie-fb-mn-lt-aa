package com.cda.models;

import lombok.Data;

@Data
public class Adresse {

	private int numero;
	private String rue;
	private int codePostal;
	private String ville;
	private int id;

	public Adresse(int numero, String rue, int codePostal, String ville) {
		this.numero = numero;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	public int getId() {
		return id;
	}

}
