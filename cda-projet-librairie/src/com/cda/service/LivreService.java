package com.cda.service;

import com.cda.dao.LivreImp;
import com.cda.models.Livre;

public class LivreService {

	public static void modifierPrixLivre(LivreImp pLivreImp, int vPrix, int vId) {
		Livre livre = pLivreImp.find(vId);
		livre.setPrix(vPrix);
		pLivreImp.update(livre);

	}

}
