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
	public <E> Stock save(E t) {
		if (c != null && t != null) {
			try {
				String request = "INSERT INTO stock (IdLivre, Quantite) VALUES (?,?)";
				PreparedStatement ps = null;
				ps = c.prepareStatement(request);
				ps.setInt(1, ((Livre) t).getIdentifiant());
				ps.setInt(2, ((Livre) t).getQuantite());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("Entrée impossible.");
		}
		return null;
	}

	@Override
	public <E> Stock update(E t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Stock t) {

	}

	@Override
	public Stock findById(int id) {
		return null;
	}

	@Override
	public List<Stock> getAll() {
		return null;
	}

}
