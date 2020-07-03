package com.cda.models;

import lombok.Data;

@Data
public class Client extends Personne {

	private int id_adresse;
	private boolean isActived;

	public Client(int id, String nom, String prenom, int id_adresse, String login, boolean isActived) {
		super(id, nom, prenom, login);
		this.id_adresse = id_adresse;
		this.isActived = isActived;
	}

}
