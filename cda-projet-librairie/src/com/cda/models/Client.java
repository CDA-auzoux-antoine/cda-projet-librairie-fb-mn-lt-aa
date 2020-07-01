package com.cda.models;

import lombok.Data;

@Data
public class Client extends Personne {

	private Adresse adresse;

	public Client(String nom, String prenom, Adresse adresse, Compte compte) {
		super(nom, prenom, compte);
		this.adresse = adresse;
	}

}
