package com.cda.program;

import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.service.LivreService;

public class Program {
	private static IDao livreImp = new LivreImp();

	public static void main(String[] args) {

		boolean retour = LivreService.modifierQuantiteStockLivre((LivreImp) livreImp, 200, 7);
		System.out.println(retour);

	}
}
