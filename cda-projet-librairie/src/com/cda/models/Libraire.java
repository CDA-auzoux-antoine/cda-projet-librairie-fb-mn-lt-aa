package com.cda.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class Libraire extends Personne {// ok pour cette classe, pas d'attribut

	public Libraire(String nom, String prenom, String login) {
		super(nom, prenom, login);

	}
}
