package com.cda.service;

import com.cda.dao.ClientImp;
import com.cda.dao.LivreImp;
import com.cda.models.Client;
import com.cda.models.Livre;

public class LibraireService {

	public void validerDemande(ClientImp pclientimp, int idClient) {

		Client vclient = pclientimp.find(idClient);// on recupere client de la bdd on le met dans variable vclient dans
													// java
		vclient.setActived(true);// activé dans java, l'ajouter dans la bdd
		pclientimp.update(vclient);

	}

	public void supprimerDemande() {

	}

	public void ajouterLivreStock(LivreImp limp, Livre plivre) {// ajouter, utiliser methhode save

		limp.save(plivre);

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
