package com.cda.models;

import java.time.LocalDateTime;


public class Commande {
	private LocalDateTime date;
	private int numCommande;
	public Commande() {
		this.date = LocalDateTime.now();
	}
	
	public int getNumCommande() {
		return numCommande;
	}
	public void setNumCommande(int numCommande) {
		this.numCommande = numCommande;
	}
	public LocalDateTime getDate() {
		return date;
	}
}
