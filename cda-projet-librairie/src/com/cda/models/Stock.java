package com.cda.models;

import java.util.HashMap;

public class Stock {// relier libraire à stock dans dcl ?

	private static HashMap<Integer, Integer> qtyLivre;// key:id livre et valeur :quantité
	// ex: id 1 : 50 livres tolkien
	// 2 : 60 jkrolling

	public Stock() {

	}

	public static HashMap<Integer, Integer> getQtyLivre() {
		return qtyLivre;
	}

	public static void setQtyLivre(HashMap<Integer, Integer> qtyLivre) {
		Stock.qtyLivre = qtyLivre;
	}

}
