package com.cda.ihm;

import java.util.ArrayList;
import java.util.Scanner;

import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.models.Livre;

public class Ihm {

	private static int choix;
	private static final Scanner SCANNER = new Scanner(System.in);
	private static final IDao LIVREIMP = new LivreImp();

	public static void menuClient() {

	}

	public static void menuLibraire() {

	}

	public static void menuInit() {
		System.out.println("Saisissez votre choix");
		choix = SCANNER.nextInt();
		switch (choix) {
		case 1:
			listerLivre((ArrayList<Livre>) LIVREIMP.getAll());
			break;
		case 2:

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

}
