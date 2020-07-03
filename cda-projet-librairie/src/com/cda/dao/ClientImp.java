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

//	create table client (id_client int(6) auto_increment not null,
//			nom_client varchar(50) not null,
//			prenom_client varchar(50) not null,
//			id_adresse_adresse int(6) not null,
//			compte_login_compte varchar(100) not null,
//			isActive Bool DEFAULT false,
//			primary key (id_client)) ENGINE = InnoDB;

	@Override
	public void remove(Client e) {// delete from client where id_client = 5;
		// TODO Auto-generated method stub

	}

	@Override
	public <E> Client update(E client) {// au lieu de select faire updtate et, passer le 0 en 1
//		update client 
//		set isActive = true 
//		where isActive =false

		String request = "update client set id_client=?,nom_client=?,prenom_client=? id_adresse_adresse=?,compte_login_compte=?,isActive=? where id_client = ?";

		try {
			PreparedStatement ps = null;
			ps = c.prepareStatement(request);

			ps.setInt(1, ((Client) client).getId());
			ps.setString(2, ((Client) client).getNom());
			ps.setString(3, ((Client) client).getPrenom());
			ps.setInt(4, ((Client) client).getId_adresse());
			ps.setString(5, ((Client) client).getLogin());
			ps.setBoolean(6, false);
			ps.setInt(7, ((Client) client).getId());

			// on passe int id (cast) et on le set au ? du string, on met 1 car c'est le
			// premier id
			ps.executeUpdate();// exectution de la requete pour requete
								// ecriture
			// ps.executeUpdate();?

			// on passe int id (cast) et on le set au ? du string, on met 1 car c'est le
			// premier id

			return (Client) client;

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

			ps.setString(1, (String) login);// on passe login et on le set au ?

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

	@Override
	public <E> Client save(E client) {
		if (c != null && client != null) {
			try {
				String request = "INSERT INTO client (nom_client,prenom_client,id_adresse_adresse,compte_login_compte,isActive ) VALUES (?,?,?,?,?)";
				PreparedStatement ps = null;
				ps = c.prepareStatement(request);

				ps.setString(1, ((Client) client).getNom());
				ps.setString(2, ((Client) client).getPrenom());
				ps.setInt(3, ((Client) client).getId_adresse());
				ps.setString(4, ((Client) client).getLogin());
				ps.setBoolean(5, false);

				ps.executeUpdate();
				ResultSet resultat = ps.getGeneratedKeys();

				if (resultat.next()) {
					return ((Client) client);
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		} else {
			System.out.println("Entrée impossible.");
		}
		return null;

	}
}
