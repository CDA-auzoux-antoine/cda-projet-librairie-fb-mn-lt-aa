package com.cda.program;

import com.cda.constant.TypeDeCompte;
import com.cda.dao.CompteImp;
import com.cda.dao.IDao;
import com.cda.models.Client;
import com.cda.models.Compte;

import outils.PasswordHash;

public class Program {
	public static void main(String[] args) {
		IDao clientIdao = new CompteImp();
		Client client = (Client) clientIdao
				.find(new Compte("client", PasswordHash.getMd5("client"), TypeDeCompte.CLIENT));
		if (client != null) {
			if (client.isActived()) {
				System.out.println("coucou " + client.getNom() + " " + client.getPrenom());
			} else {
				System.out.println("Compte inactif");
			}
		} else {
			System.out.println("login ou password incorrect");
		}
		Livre test = (Livre) livre.find(1);
		test.setQuantite(10);
		livre.remove(test);
		livre.update(test);
	}
}
