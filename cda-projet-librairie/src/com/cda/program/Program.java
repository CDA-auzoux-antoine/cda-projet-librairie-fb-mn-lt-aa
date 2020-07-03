package com.cda.program;

import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.service.LivreService;

public class Program {
<<<<<<< HEAD
	private static IDao livreImp = new LivreImp();
=======
>>>>>>> 66994e974d79edecaf9544992284711a3030f0d7

	public static void main(String[] args) {

		boolean retour = LivreService.modifierQuantiteStockLivre((LivreImp) livreImp, 200, 7);
		System.out.println(retour);

	}
}
