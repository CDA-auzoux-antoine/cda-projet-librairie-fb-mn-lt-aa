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
	public void remove(Client e) {// delete from client where id_client = 5;
		// TODO Auto-generated method stub

	}

	@Override
	public <E> Client update(E id) {// au lieu de select faire updtate et, passer le 0 en 1
//		update client 
//		set isActive = true 
//		where isActive =false

		// create statement ? Statement statement = connexion.createStatement
		String request = "update * from client where id_client=?";//

		try {
			PreparedStatement ps = null;
			ps = c.prepareStatement(request);
			ps.setInt(1, (int) id);// on passe int id (cast) et on le set au ? du string, on met 1 car c'est le
									// premier id
			ResultSet rs = ps.executeQuery();// exectution de la requete pour requete
												// ecriture
			// ps.executeUpdate();?

			while (rs.next()) {// met le client dans rs: retourne des clolonnes à construire (un tableau)
				return new Client(rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getBoolean(TypeDeCompte.ACTIVED.getType()));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public <E> Client find(E login) {

		String request = "select * from client where compte_login_compte=?";// preparation de la requete

		try {
			PreparedStatement ps = null;
			ps = c.prepareStatement(request);
			ps.setString(1, (String) login);// on passe int id et on le set au ?

			ResultSet rs = ps.executeQuery();// exectution de la requete pour requete lecture

			while (rs.next()) {
				Client vClient = new Client(rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getBoolean(TypeDeCompte.ACTIVED.getType()));
				vClient.setId(rs.getInt(1));// met le client dans rs: retourne des clolonnes à construire
				return vClient;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Client> getAll() {
		return null;
	}

}
