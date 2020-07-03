package com.cda.constant;

public enum TypeDeCompte {
	LIBRAIRE("libraire"), CLIENT("client"), ACTIVED("isActive");

	String type;

	private TypeDeCompte(String type) {
		this.type = type;
	}

	public String getType() {
		// TODO Auto-generated method stub
		return type;
	}
}
