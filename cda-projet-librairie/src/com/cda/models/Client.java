package com.cda.models;

import lombok.Data;

@Data
public class Client extends Personne {

	private int id_adresse;
	private boolean isActived;

	public Client(int id, String nom, String prenom, int id_adresse, boolean isActived, String plogin) {
		super(id, nom, prenom, plogin);
		this.id_adresse = id_adresse;
		this.isActived = isActived;
	}

}
