package com.cda.dao;

import java.util.List;

public interface IDao<T> {

	<E> T save(E t);

	void remove(T t);

	<E> T update(E t);

	T findById(int id);

	List<T> getAll();

}