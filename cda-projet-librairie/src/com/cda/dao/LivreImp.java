package com.cda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cda.connection.MyConnection;
import com.cda.models.Livre;

public class LivreImp implements IDao<Livre> {

	private static Connection c;

	public LivreImp() {
		c = MyConnection.getConnexion();
	}

	@Override
	public void remove(Livre t) {
		String request = "delete from livre where id = ?";
		PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(request);
			ps.setInt(1, t.getIdentifiant());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Livre> getAll() {
		ArrayList<Livre> arrayLivre = new ArrayList<>();
		try {
			Statement s = c.createStatement();
			ResultSet r = s.executeQuery("select * from livre");
			while (r.next()) {
				Integer vIdLivre = r.getInt(1);
				String titreLivre = r.getString(2);
				String auteurLivre = r.getString(3);
				Integer nbrePage = r.getInt(4);
				String genreLivre = r.getString(5);
				Float prixLivre = r.getFloat(6);
				Integer quantiteLivre = r.getInt(7);

				Livre vLivre = new Livre(titreLivre, genreLivre, auteurLivre, prixLivre, nbrePage, quantiteLivre);
				vLivre.setIdentifiant(vIdLivre);
				arrayLivre.add(vLivre);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrayLivre;
	}

	@Override
	public <E> Livre save(E e) {
		if (c != null && e != null) {
			try {
				String request = "INSERT INTO livre (tittre_livre,auteur_livre,nombreDePages_livre,Genre_livre, prix_livre,quantite ) VALUES (?,?,?,?,?,?)";
				PreparedStatement ps = null;
				ps = c.prepareStatement(request);
				ps.setString(1, ((Livre) e).getTitre());
				ps.setString(2, ((Livre) e).getAuteur());
				ps.setInt(3, ((Livre) e).getNbrePage());
				ps.setString(4, ((Livre) e).getGenre());
				ps.setFloat(5, ((Livre) e).getPrix());
				ps.setInt(6, ((Livre) e).getQuantite());
				ps.executeUpdate();
				ResultSet resultat = ps.getGeneratedKeys();
				if (resultat.next()) {
					return ((Livre) e);
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		} else {
			System.out.println("Entrée impossible.");
		}
		return null;
	}

	@Override
	public <E> Livre update(E e) {

		return null;
	}

	@Override
	public <E> Livre find(E e) {
		Livre vLivre = null;
		try {
			String request = "select * from livre where id_livre = ?";
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
				vLivre = new Livre(titreLivre, genreLivre, auteurLivre, prixLivre, nbrePage, quantiteLivre);
				vLivre.setIdentifiant((int) e);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		if (vLivre != null) {
			return vLivre;
		} else {

			return null;
		}
	}

}
