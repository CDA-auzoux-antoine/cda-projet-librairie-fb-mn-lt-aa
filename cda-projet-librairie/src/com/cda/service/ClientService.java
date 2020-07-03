package com.cda.service;

import com.cda.models.Adresse;
import com.cda.models.Client;

public class ClientService {
	private static final String NOM = "nom";
	public static final String PRENOM = "confirmation";
	public static final String EMAIL = "email";
	public static final String PASSWORD = "motdepasse";

	public static void inscription() {
		Adresse adresse = new Adresse(0, 0, null, 0, null);
		Client client = new Client(0, NOM, PRENOM, , adresse.getId(), false);

	}
}
