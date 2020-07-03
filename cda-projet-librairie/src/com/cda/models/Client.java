package com.cda.models;

import lombok.Data;

@Data
public class Client extends Personne {

	private int id_adresse;
	private boolean isActived;

	public Client(String nom, String prenom, int id_adresse, String pLogin, boolean isActived) {
		super(nom, prenom, pLogin);
		this.id_adresse = id_adresse;
		this.isActived = isActived;
	}
}
