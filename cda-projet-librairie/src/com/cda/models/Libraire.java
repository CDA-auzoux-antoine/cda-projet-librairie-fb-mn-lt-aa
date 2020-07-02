package com.cda.models;

public class Libraire extends Personne {

	public Libraire(String nom, String prenom, Compte compte) { // ajouter id ?
		super(nom, prenom, compte);
	}

	public void validerDemander() {
		// il valide la demande de creation de compte
		// le client doit d'abord avoir créé un compte: la connexion doit etre a true

		if (Personne.isConnexion(true)) {
			System.out.println("Votre compte a bien été créé!");
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
			if (saisie.equals(Livre.getIdentifiant())) {

			}

		}

	}

	public void supprimerLivreStock() {

	}

	@Override
	public String toString() {
		return "Libraire [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}
