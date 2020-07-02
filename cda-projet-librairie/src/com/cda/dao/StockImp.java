package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.models.Livre;
import com.cda.models.Stock;

public class StockImp implements IDao<Stock> {
	private static Connection c = MyConnection.getConnexion();

	@Override
	public <E> Stock save(E e) {
		if (c != null && e != null) {
			try {
				String request = "INSERT INTO stock (id_livre, Quantite) VALUES (?,?)";
				PreparedStatement ps = null;
				ps = c.prepareStatement(request);
				ps.setInt(1, ((Livre) e).getIdentifiant());
				ps.setInt(2, ((Livre) e).getQuantite());
				ps.executeUpdate();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		} else {
			System.out.println("Entrée impossible.");
		}
		return null;
	}

	@Override
	public <E> Stock update(E e) {
		return null;
	}

	@Override
	public void remove(Stock e) {

	}

	@Override
	public List<Stock> getAll() {
		return null;
	}

	@Override
	public <E> Stock find(E e) {
		return null;
	}

}
