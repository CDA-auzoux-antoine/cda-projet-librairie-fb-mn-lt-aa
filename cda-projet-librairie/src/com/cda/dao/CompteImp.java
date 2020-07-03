package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.constant.TypeDeCompte;
import com.cda.models.Client;
import com.cda.models.Compte;
import com.cda.models.Libraire;

public class CompteImp<T> implements IDao<T> {
	private static Connection c = MyConnection.getConnexion();

	@Override
	public <E> T save(E e) {
		return null;

	}

	@Override
	public void remove(T compte) {

	}

	@Override
	public <E> T update(E adresse) {
		return null;
	}

	@Override
	public <E> T find(E compte) {
		if (compte != null) {
			String query = "select * from " + ((Compte) compte).getType().getType()
					+ " where compte_login_compte = (select login_compte from compte where login_compte =? and password_compte=?);";
			try {
				PreparedStatement ps = null;
				ps = c.prepareStatement(query);
				ps.setString(1, ((Compte) compte).getLogin());
				ps.setString(2, ((Compte) compte).getPassword());
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					if (((Compte) compte).getType().equals(TypeDeCompte.CLIENT)) {
						Client c = new Client(rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
								rs.getBoolean(TypeDeCompte.ACTIVED.getType()));
						c.setId(rs.getInt(1));
						return (T) c;
					} else if (((Compte) compte).getType().equals(TypeDeCompte.LIBRAIRE)) {
						Libraire l = new Libraire(rs.getString(2), rs.getString(3), rs.getString(4));
						l.setId(rs.getInt(1));
						return (T) l;
					}
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<T> getAll() {
		return null;
	}
}