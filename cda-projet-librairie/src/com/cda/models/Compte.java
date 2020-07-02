package com.cda.models;

import com.cda.constant.TypeDeCompte;

import lombok.Data;

@Data
public class Compte {
	private String login;
	private String password;
	private TypeDeCompte type;

	public Compte(String login, String password, TypeDeCompte type) {
		this.login = login;
		this.password = password;
		this.type = type;
	}
}
