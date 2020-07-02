package com.cda.program;

import com.cda.connection.MyConnection;
import com.cda.constant.TypeDeCompte;
import com.cda.dao.CompteImp;
import com.cda.dao.IDao;
import com.cda.models.Client;
import com.cda.models.Compte;

import outils.PasswordHash;

public class Program {
	public static void main(String[] args) {
		MyConnection.getConnexion();
		IDao compte = new CompteImp();
		Client client = (Client) compte.find(new Compte("client", PasswordHash.getMd5("client"), TypeDeCompte.CLIENT));
		if (client != null) {
			// Connecté
			System.out.println(client);
		} else {
			System.out.println("User ou password incorrect");
		}
	}
}
