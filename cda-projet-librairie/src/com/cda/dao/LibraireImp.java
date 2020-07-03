package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.models.Libraire;

public class LibraireImp implements IDao<Libraire> {
	private static Connection c = MyConnection.getConnexion();

	@Override
	public <E> Libraire save(E e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Libraire e) {
		String request = "delete from libraire where login = ?";
		PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(request);
			ps.setInt(1, t.getIdentifiant());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	}

	@Override
	public <E> Libraire update(E e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <E> Libraire find(E e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Libraire> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
