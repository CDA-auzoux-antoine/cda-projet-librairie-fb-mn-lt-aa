package com.cda.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class Libraire extends Personne {// ok pour cette classe, pas d'attribut

	public Libraire(int id, String nom, String prenom, String plogin) {
		super(id, nom, prenom, plogin);
	}

}
