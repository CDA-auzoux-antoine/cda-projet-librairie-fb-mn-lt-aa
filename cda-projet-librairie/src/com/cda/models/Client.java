package com.cda.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class Client extends Personne {

	private int id_adresse;
	private boolean isActived;

	public Client(String nom, String prenom, int id_adresse, String login, boolean isActived) {
		super(nom, prenom, login);

		this.id_adresse = id_adresse;
		this.isActived = isActived;

	}

}
