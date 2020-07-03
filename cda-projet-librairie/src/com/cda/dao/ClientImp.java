package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.constant.TypeDeCompte;
import com.cda.models.Client;

public class ClientImp implements IDao<Client> {
	private static Connection c = MyConnection.getConnexion();

	@Override
	public <E> Client save(E e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Client e) {
		// TODO Auto-generated method stub

	}

	@Override
	public <E> Client update(E e) {// au lieu de select faire updtate et, passer le 0 en 1

		return null;
	}

	@Override
	public <E> Client find(E id) {
		String request = "select * from client where id_client=?";
		try {
			PreparedStatement ps = null;
			ps = c.prepareStatement(request);
			ps.setInt(1, (int) id);// on passe int id et on le set au ?
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {// met le client dans rs: retourne des clolonnes à construire
				return new Client(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getBoolean(TypeDeCompte.ACTIVED.getType()));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Client> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
