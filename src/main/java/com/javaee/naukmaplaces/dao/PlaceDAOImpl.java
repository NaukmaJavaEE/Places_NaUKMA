package com.javaee.naukmaplaces.dao;

import java.util.List;

import org.hibernate.SessionFactory;
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
		 Place place = (Place)
		 sessionFactory.getCurrentSession().load(Place.class, id);
		 if (null != place) {
		 sessionFactory.getCurrentSession().delete(place);
		 }
	}

	 @SuppressWarnings("unchecked")
	public List<Place> listPlaces() {
		 return sessionFactory.getCurrentSession().createQuery("from Place").list();
	}
}
