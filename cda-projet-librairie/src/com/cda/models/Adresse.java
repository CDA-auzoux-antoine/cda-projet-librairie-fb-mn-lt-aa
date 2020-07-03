package com.cda.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class Adresse {
	private int idAdresse = 50;
	private int numeroRue = 0;
	private String nomRue = "rue";
	private int codePostal = 0;
	private String ville = "ville";

	public Adresse(int numero, String rue, int codePostal, String ville) {
		this.numeroRue = numero;
		this.nomRue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
		getNumeroRue();
	}

}
