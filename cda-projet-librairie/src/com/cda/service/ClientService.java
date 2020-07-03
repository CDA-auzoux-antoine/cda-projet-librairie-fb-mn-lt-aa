package com.cda.service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.cda.models.Adresse;
import com.cda.models.Client;
import com.cda.models.Compte;

public class ClientService {
	private static Pattern p = Pattern.compile("^[a-z]+[[-]?[a-z]+]+$");
	private static Matcher m;
	private static List<String> validationInscription = new ArrayList<>();

	private static void verifInscription() { // à initialiser en premier sur le formulaire d'inscription
		for (int i = 0; i < 8; i++) {
			validationInscription.add("saisie formulaire numero : " + i);
		}
	}

	// 0
	public static String valideNom(String pNom) throws Exception {
		m = p.matcher(pNom);

		if (pNom == null || pNom.trim().length() == 0) {
			throw new Exception("Nom d'utilisateur requis.");
		} else if (pNom != null && pNom.trim().length() < 2) {
			throw new Exception("Le nom doit contenir au moins 2 caractères.");
		} else if (!(m.find())) {
			throw new Exception("Le nom est incorrect.");
		} else {
			validationInscription.remove(0);
			return pNom;
		}
	}

	// 1
	public static String validePrenom(String pPrenom) throws Exception {
		m = p.matcher(pPrenom);

		if (pPrenom == null || pPrenom.trim().length() == 0) {
			throw new Exception("Prénom d'utilisateur requis.");
		} else if (pPrenom != null && pPrenom.trim().length() < 2) {
			throw new Exception("Le prénom doit contenir au moins 2 caractères.");
		} else if (!(m.find())) {
			throw new Exception("Le prénom est incorrect.");
		} else {
			validationInscription.remove(1);
			return pPrenom;
		}
	}

	// 2
	public static String valideLogin(String pLogin) throws Exception {
		if (pLogin != null && pLogin.trim().length() != 0) {
			throw new Exception("Login requis.");
		} else {
			validationInscription.remove(2);
			return pLogin;
		}
	}

	// 3
	public static String validePassword(String pPassword, String pPasswordConfirmation) throws Exception {
		if (pPassword != null && pPassword.trim().length() != 0 && pPasswordConfirmation != null
				&& pPasswordConfirmation.trim().length() != 0) {
			if (!pPassword.equals(pPasswordConfirmation)) {
				throw new Exception("Les mots de passe sont différents.");
			} else if (pPassword.trim().length() < 5) {
				throw new Exception("Les mots de passe doivent contenir au moins 5 caractères.");
			}
		} else if (pPassword == null || pPassword.trim().length() == 0) {
			throw new Exception("Merci de saisir et confirmer votre mot de passe.");
		} else {
			validationInscription.remove(3);
		}
		return pPassword;
	}

	// 4
	public static int valideNumeroRue(String pNumeroRue) throws Exception {

		if (pNumeroRue == null || pNumeroRue.trim().length() == 0) {
			throw new Exception("Numéro de rue requis.");
		} else if (!(Pattern.matches("^[\\d]+$", pNumeroRue))) {
			throw new Exception("Le nom de rue est incorrect.");
		} else {
			int vNumeroRue = Integer.parseInt(pNumeroRue);
			validationInscription.remove(4);
			return vNumeroRue;
		}
	}

	// 5
	public static String valideNomRue(String pNomRue) throws Exception {
		m = p.matcher(pNomRue);

		if (pNomRue == null || pNomRue.trim().length() == 0) {
			throw new Exception("Nom de rue requis.");
		} else if (!(m.find())) {
			throw new Exception("Le nom de rue est incorrect.");
		} else {
			validationInscription.remove(5);
			return pNomRue;
		}
	}

	// 6
	public static String valideCodePostal(String pNomRue) throws Exception {
		m = p.matcher(pNomRue);

		if (pNomRue == null || pNomRue.trim().length() == 0) {
			throw new Exception("Nom de rue requis.");
		} else if (!(m.find())) {
			throw new Exception("Le nom de rue est incorrect.");
		} else {
			validationInscription.remove(6);
			return pNomRue;
		}
	}

	// 7
	public static String valideVille(String pNomRue) throws Exception {
		m = p.matcher(pNomRue);

		if (pNomRue == null || pNomRue.trim().length() == 0) {
			throw new Exception("Nom de rue requis.");
		} else if (!(m.find())) {
			throw new Exception("Le nom de rue est incorrect.");
		} else {
			validationInscription.remove(7);
			return pNomRue;
		}
	}

	public static void inscription(String pNom, String pPrenom, String pLogin, String pPassword,
			String pPasswordConfirmation, String pNumeroRue, String pRue, String pCodePostal, String pVille) {
		verifInscription();
		try {
			valideNom(pNom);
			validePrenom(pPrenom);
			valideLogin(pLogin);
			validePassword(pPassword, pPasswordConfirmation);
			valideNumeroRue(pNumeroRue);
			valideNomRue(pRue);
			valideCodePostal(pCodePostal);
			valideVille(pVille);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (validationInscription.isEmpty()) {

			new Client(pNom, pPrenom, Adresse.getIdAdresse(), false);
			new Adresse(Adresse.getIdAdresse() + 1, 0, null, 0, null);
			new Compte(null, null, null);
			System.out.println("compte créé.");
		} else {
			System.out.println("échec création compte.");
		}
	}
}
