package com.javaee.naukmaplaces.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaee.naukmaplaces.domain.Place;

@Repository
public class PlaceDAOImpl implements PlaceDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addPlace(Place place) {
		sessionFactory.getCurrentSession().save(place);
	}

	public void removePlace(Integer id) {
		Place place = (Place) sessionFactory.getCurrentSession().load(Place.class, id);
		if (null != place) {
			sessionFactory.getCurrentSession().delete(place);
		}
	}

	@SuppressWarnings("unchecked")
	public List<Place> listPlaces() {
		return sessionFactory.getCurrentSession().createQuery("from Place").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listDekanat() {
		Query query = sessionFactory.getCurrentSession().createQuery("from Place where type=:type_place");
		query.setParameter("type_place", "dekanat");
		return query.list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listKafedra() {
		Query query = sessionFactory.getCurrentSession().createQuery("from Place where type=:type_place");
		query.setParameter("type_place", "kafedra");
		return query.list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listLibrary() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listAdmin() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listHealth() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listSchool() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listStudOrg() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listMoney() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Place> listFriendOrg() {
		// TODO Auto-generated method stub
		return null;
	}
}
