package com.cda.models;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Commande {
	private LocalDateTime date;
	private int numCommande;
	public Commande() {
		this.date = LocalDateTime.now();
	}
	
}
