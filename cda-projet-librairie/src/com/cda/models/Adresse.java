package com.cda.models;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Adresse {

	private int numero;
	private String rue;
	private int codePostal;
	private String ville;
	private int id;

	public Adresse(int id, int numero, String rue, int codePostal, String ville) {
		this.id = id;
		this.numero = numero;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	public int getId() {
		return id;
	}

}
