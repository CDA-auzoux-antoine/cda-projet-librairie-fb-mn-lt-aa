package com.cda.program;

import java.util.ArrayList;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.dao.IDao;
import com.cda.dao.LivreImp;
import com.cda.models.Livre;

public class Program {
	public static void main(String[] args) {
		MyConnection.getConnexion();
		IDao livre = new LivreImp();
		List<Livre> maliste = (ArrayList<Livre>) livre.getAll();
		for (Livre monlivre : maliste) {
			System.out.println(monlivre);

		}
	}
}
