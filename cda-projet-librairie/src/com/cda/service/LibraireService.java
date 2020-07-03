package com.cda.service;

import com.cda.dao.ClientImp;
import com.cda.dao.CompteImp;
import com.cda.dao.LivreImp;
import com.cda.models.Client;
import com.cda.models.Compte;
import com.cda.models.Libraire;
import com.cda.models.Livre;

public class LibraireService {

	public void validerDemande(ClientImp pclientimp, String loginClient) {
		Client vclient = pclientimp.find(loginClient);// on recupere client de la bdd on le met dans variable vclient
														// dans java
		vclient.setActived(true);// activé dans java, l'ajouter ensuite dans la bdd avec maintenant le statut
									// true
		pclientimp.update(vclient);// update=modifier, mise à jour, elle est passée à true dans bdd

	}

	public void supprimerDemande(ClientImp pclientimp, int idClient) {

		Client vclient = pclientimp.find(idClient);// on recupere client de la bdd on le met dans variable vclient dans
		// java
		vclient.setActived(true);// activé dans java, l'ajouter ensuite dans la bdd avec maintenant le statut
// true
		pclientimp.remove(vclient);// le supprimer dans bdd
	}

	public void ajouterLivreStock(LivreImp limp, Livre plivre) {// ajouter, utiliser methhode save

		limp.save(plivre);

	}

	public static Libraire connexion(Compte c) {
		return (Libraire) new CompteImp().find(c);
	}

	public void supprimerLivreStock(LivreImp limp, Livre plivre) {
		limp.remove(plivre);
	}

	@Override
	public String toString() {
		return "Libraire [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}
