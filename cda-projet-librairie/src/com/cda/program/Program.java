package com.cda.program;

import com.cda.connection.MyConnection;
import com.cda.dao.IDao;
import com.cda.dao.StockImp;
import com.cda.models.Livre;

public class Program {
	public static void main(String[] args) {
		MyConnection.getConnexion();
		IDao stock = new StockImp();
		stock.save(new Livre("toto", "titi", "tutu", "tata", 150, 250));

	}
}
