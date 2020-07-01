package com.cda.dao;

import java.util.List;
public interface IDao<T> {
	
	T save(T personne);
	void remove(T personne);
	T update(T personne);
	T findById(int id);
	List<T> getAll();
}
