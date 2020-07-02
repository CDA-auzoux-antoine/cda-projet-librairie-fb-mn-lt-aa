package com.cda.models;

import lombok.Data;

@Data
public class Client extends Personne {

	private int id_adresse;

	public Client(int id, String nom, String prenom, int id_adresse, Compte compte) {
		super(id, nom, prenom, compte);
		this.id_adresse = id_adresse;
	}

}
