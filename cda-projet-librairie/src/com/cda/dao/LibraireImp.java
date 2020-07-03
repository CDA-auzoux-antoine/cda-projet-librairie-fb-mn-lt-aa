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
	public <E> Libraire find(E e) {

		Libraire vLibraire = null;

		try {
			String request = "select * from libraire where id_libraire = ?";
			PreparedStatement ps = c.prepareStatement(request);
			ps.setInt(1, (int) e);
			ResultSet r = ps.executeQuery();
			while (r.next()) {
				Integer vIdLivre = r.getInt(1);
				String titreLivre = r.getString(2);
				String auteurLivre = r.getString(3);
				Integer nbrePage = r.getInt(4);
				String genreLivre = r.getString(5);
				Float prixLivre = r.getFloat(6);
				Integer quantiteLivre = r.getInt(6);
//				vLibraire = new Libraire(quantiteLivre, genreLivre, genreLivre, genreLivre);
				vLibraire.setId((int) e);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return vLibraire;

	}

	@Override
	public List<Libraire> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
