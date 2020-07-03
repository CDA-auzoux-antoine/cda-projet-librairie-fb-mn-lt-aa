package com.cda.ihm;

import java.util.ArrayList;
import java.util.Scanner;

import com.cda.constant.TypeDeCompte;
import com.cda.dao.CompteImp;
import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.models.Client;
import com.cda.models.Compte;
import com.cda.models.Libraire;
import com.cda.models.Livre;
import com.cda.service.ClientService;
import com.cda.service.LibraireService;

public class Ihm {

	private static int choix;
	private static final Scanner SCANNER = new Scanner(System.in);
	private static final IDao LIVREIMP = new LivreImp();
	private static final IDao COMPTEIMP = new CompteImp();

	public static void menuClient() {
		System.out.println("saisissez votre choix :");
		int choix = SCANNER.nextInt();
		SCANNER.nextLine();
		switch (choix) {
		case 1:
//commander
			break;
		case 2:
//listerMesCommandes
			break;
		case 3:
//
			break;
		case 4:

			break;

		default:
			break;
		}
	}

	public static void menuLibraire() {

	}

	public static void menuInit() {
		System.out.println("Saisissez votre choix");
		choix = SCANNER.nextInt();
		SCANNER.nextLine();
		switch (choix) {
		case 1:
			listerLivre((ArrayList<Livre>) LIVREIMP.getAll());
			break;
		case 2:
			switchMenu();
			break;
		case 3:

			break;

		default:
			break;
		}

	}

	private static void listerLivre(ArrayList<Livre> pArray) {
		System.out.format("%5s%50s%15s%35s%15s%10s%n", "ID", "Titre", "Auteur", "Genre", "Nombre Page", "Prix");
		for (Livre livre : pArray) {
			System.out.format("%5s%50s%15s%35s%15s%10s%n", livre.getIdentifiant(), livre.getTitre(), livre.getAuteur(),
					livre.getGenre(), livre.getNbrePage(), livre.getPrix());
		}
	}

	private static void switchMenu() {
		System.out.println("Saisissez Login : ");
		String login = SCANNER.nextLine();
		System.out.println("Saissiez Mot de passe : ");
		String mdp = SCANNER.nextLine();
		System.out.println("Taper 1 pour Client ou 2 pour Libraire");
		int choix = SCANNER.nextInt();
		if (choix == 1) {
			Client client = ClientService.connexion(new Compte(login, mdp, TypeDeCompte.CLIENT));
			if (client == null) {
				System.out.println("Login ou mdp incorrect");
			} else if (client.isActived()) {
				menuClient();
			} else {
				System.out.println("compte inactif");
			}

		} else if (choix == 2) {
			Libraire libraire = LibraireService.connexion(new Compte(login, mdp, TypeDeCompte.LIBRAIRE));
			if (libraire == null) {
				System.out.println("Login ou mdp incorrect");
			} else {
				menuLibraire();
			}
		}

	}

}
