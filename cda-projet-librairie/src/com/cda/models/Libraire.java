package com.cda.models;

import lombok.Data;

@Data
public class Libraire extends Personne {// ok pour cette classe, pas d'attribut
	public Libraire(String nom, String prenom, String login) {
		super(nom, prenom, login);

	}
}
