package com.cda.program;

import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.ihm.Ihm;

public class Program {
	private static IDao livreImp = new LivreImp();

	public static void main(String[] args) {

		Ihm.menuInit();

	}
}
