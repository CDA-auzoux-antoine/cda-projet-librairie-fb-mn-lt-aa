package com.cda.models;

import java.util.ArrayList;

public class Libraire extends Personne {

	public Libraire(String nom, String prenom, Compte compte) {
		super(nom, prenom, compte);
	}

	public void validerDemander() {
		// il valide la demande de creation de compte
		// le client doit d'abord avoir créé un compte: la connexion doit etre a true

		if (Personne.isConnexion(true)) {// pour ajouter et supprimer un compte il faut l'ajouter ou supp à une base de
											// données
			ArrayList listeComptes = new ArrayList();
			al.add(12);
			al.add("Une chaîne de caractères !");
			al.add(12.20f);
			al.add('d');

			for (int i = 0; i < al.size(); i++) {
				System.out.println("donnée à l'indice " + i + " = " + al.get(i));
			}
			System.out.println("Le compte a bien été créé!");
		}
	}

	public void supprimerDemander() {// ajouter supprimer demande dans dcl
		// il valide la demande de creation de compte
		// le client doit d'abord avoir créé un compte: la connexion doit etre a true

		if (Personne.isConnexion(true)) {// pour ajouter et supprimer un compte il faut l'ajouter ou supp à une base de
											// données
			ArrayList al = new ArrayList();
			al.add(12);
			al.add("Une chaîne de caractères !");
			al.add(12.20f);
			al.add('d');

			for (int i = 0; i < al.size(); i++) {
				System.out.println("donnée à l'indice " + i + " = " + al.get(i));
			}

			System.out.println("Le compte a bien été supprimé!");
		}
	}

	public void ajouterLivreStock() {// ajouter id livre à HashMap<Integer, Integer> qtyLivre + sa quantité
		// ex id 1 livre tolkien : +1 à qty
		// +1 id si on ajoute un nouveau livre , et +1 quantité
		// il doit gerer 2 cas: ajouter un livre à un id existant, et ajouter un id qui
		// n'existe pas plus sa qtité
		// dans tous les cas on ajoute quantité à un id

		for (int i = 0; Stock.getQtyLivre().length; i++) {
			String saisie;
			if (saisie.equals(Livre.getIdentifiant())) {//ajouter +1 à valeur du hashmap 
				containsKey(Object key)
				//Retourne true si l'objet passé en paramètre correspond à une clé de la collection. on peut faire pareil av valeur
				put(K key, V value)
				//Ajoute la clé et la valeur dans la collection en retournant la valeur insérée. 
				//Si la clé existe déjà, sa valeur sera écrasée par celle passée en paramètre de la méthode.

			}

		}

	}

	public void supprimerLivreStock() {
		if (Personne.isConnexion(true)) {
			System.out.println("Votre compte a bien été créé!");
		}

	}

	@Override
	public String toString() {
		return "Libraire [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}
