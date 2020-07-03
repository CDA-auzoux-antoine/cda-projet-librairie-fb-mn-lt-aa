package com.cda.program;

import java.util.Scanner;

import com.cda.models.Client;
import com.cda.service.ClientService;

public class Program {
	public static void main(String[] args) {
		ClientService cs = new ClientService();
		Scanner sc = new Scanner(System.in);

		try {
			System.out.println("prenom : ");
			cs.validePrenom(sc.nextLine());
			System.out.println("nom : ");
			cs.valideNom(sc.nextLine());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("prénom enregistré : ");
		System.out.println(Client.getPrenom());
		System.out.println("nom enregistré : ");
		System.out.println(Client.getNom());

	}
}
