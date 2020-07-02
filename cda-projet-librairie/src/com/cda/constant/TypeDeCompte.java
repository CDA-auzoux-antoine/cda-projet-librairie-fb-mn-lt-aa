package com.cda.constant;

import lombok.Getter;

@Getter
public enum TypeDeCompte {
	LIBRAIRE("libraire"), CLIENT("client"), ACTIVED("isActive");

	String type;

	private TypeDeCompte(String type) {
		this.type = type;
	}
}
