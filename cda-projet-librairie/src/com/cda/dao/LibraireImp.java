package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.models.Libraire;

public class LibraireImp implements IDao<Libraire> {

	private static Connection c = MyConnection.getConnexion();

	@Override
	public <E> Libraire save(E e) {

//		if (c != null && e != null) {
//
//			try {
//				String request = "INSERT INTO libraire (id_libraire,prenom_Libraire,nom_Libraire) VALUES (?,?,?,?,?,?)";
//				PreparedStatement ps = null;
//				ps = c.prepareStatement(request);
//				ps.setInt(1, ((Libraire) e).getId());
//				ps.setString(2, ((Libraire) e).getPrenom());
//				ps.setString(3, ((Libraire) e).getNom());
//				
//				
//
//				ps.executeUpdate();
//
//				ResultSet resultat = ps.getGeneratedKeys();
//				if (resultat.next()) {
//					return ((Libraire) e);
//				}
//			} catch (SQLException ex) {
//				ex.printStackTrace();
//			}
//		} else {
//			System.out.println("Entrée impossible.");
//		}
		return null;
	}

	@Override
	public void remove(Libraire e) {

		// TODO Auto-generated method stub

		String request = "delete from libraire where id_libraire = ?";
		PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(request);
			ps.setInt(1, e.getId());
			ps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

	}

	@Override
	public <E> Libraire update(E e) {
		if ((Libraire) e != null) {
			String request = "update libraire set id_libraire=?,prenom_Libraire=?,nom_Libraire=? where id_libraire = ?";
			PreparedStatement ps = null;
			try {
				ps = c.prepareStatement(request);
				ps.setInt(1, ((Libraire) e).getId());
				ps.setString(2, ((Libraire) e).getPrenom());
				ps.setString(3, ((Libraire) e).getNom());

				ps.executeUpdate();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		} else {
			System.out.println("Entrée impossible la personne ne peut etre null");
		}
		return null;
	}

//	update client 
//	set isActive = true 
//	where isActive =false	

	@Override
	public <E> Libraire find(E login) {

		Libraire vLibraire = null;

		try {
			String request = "select * from libraire where compte_login_compte = ?";
			PreparedStatement ps = c.prepareStatement(request);

			ps.setString(1, (String) login);
			ResultSet r = ps.executeQuery();

			while (r.next()) {
				String compteLibraire = r.getString(2);
				String prenomLibraire = r.getString(3);
				String nomLibraire = r.getString(4);
				vLibraire = new Libraire(nomLibraire, prenomLibraire, compteLibraire);
				vLibraire.setId((int) login);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		if (vLibraire != null) {
			return vLibraire;
		} else {

			return null;
		}
	}

	@Override
	public List<Libraire> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
