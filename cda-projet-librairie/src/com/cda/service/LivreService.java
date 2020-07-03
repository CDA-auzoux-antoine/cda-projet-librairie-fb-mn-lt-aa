package com.cda.service;

import com.cda.dao.LivreImp;
import com.cda.models.Livre;

public class LivreService {

	public static void modifierPrixLivre(LivreImp pLivreImp, int vPrix, int pId) {
		Livre vLivre = pLivreImp.find(pId);
		vLivre.setPrix(vPrix);
		pLivreImp.update(vLivre);

	}

	public static boolean modifierQuantiteStockLivre(LivreImp pLivreImp, int pQuantite, int pId) {
		Livre vLivre = pLivreImp.find(pId);
		if (vLivre.getIdentifiant() > pQuantite) {
			vLivre.setQuantite(vLivre.getQuantite() - pQuantite);
			pLivreImp.update(vLivre);
			return true;
		}
		return false;
	}

}
