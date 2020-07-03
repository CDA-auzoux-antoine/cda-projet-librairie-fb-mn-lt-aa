package com.cda.service;

import com.cda.constant.TypeDeCompte;
import com.cda.models.Adresse;
import com.cda.models.Client;
import com.cda.models.Compte;

public class ClientService {
	private static final String NOM = "nom";
	public static final String PRENOM = "confirmation";
	public static final String LOGIN = "login";
	public static final String PASSWORD = "password";

	public static void inscription() {
		Adresse adresse = new Adresse(0, 0, null, 0, null);
		Compte compte = new Compte(null, null, null);
		Client client = new Client(0, NOM, PRENOM, adresse.getId(), new Compte(null, null, TypeDeCompte.CLIENT), false);

	}
}
