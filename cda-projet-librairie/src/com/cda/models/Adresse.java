package com.cda.models;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Adresse {
	private static int idAdresse = 50;
	private static int numeroRue = 0;
	private static String nomRue = "rue";
	private static int codePostal = 0;
	private static String ville = "ville";

	public Adresse(int id, int numero, String rue, int codePostal, String ville) {
		this.idAdresse = id;
		this.numeroRue = numero;
		this.nomRue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	public static int getIdAdresse() {
		return idAdresse;
	}

	public static void setIdAdresse(int idAdresse) {
		Adresse.idAdresse = idAdresse;
	}

	public static int getNumeroRue() {
		return numeroRue;
	}

	public static void setNumeroRue(int numeroRue) {
		Adresse.numeroRue = numeroRue;
	}

	public static String getNomRue() {
		return nomRue;
	}

	public static void setNomRue(String nomRue) {
		Adresse.nomRue = nomRue;
	}

	public static int getCodePostal() {
		return codePostal;
	}

	public static void setCodePostal(int codePostal) {
		Adresse.codePostal = codePostal;
	}

	public static String getVille() {
		return ville;
	}

	public static void setVille(String ville) {
		Adresse.ville = ville;
	}

}
