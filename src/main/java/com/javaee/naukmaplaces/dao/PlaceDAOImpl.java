package com.javaee.naukmaplaces.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.domain.PlaceStatus;

@Repository
public class PlaceDAOImpl implements PlaceDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addNewPlace(Place place) {
		place.setStatus(PlaceStatus.NEW);
		sessionFactory.getCurrentSession().save(place);
	}

	public void addApprovedPlace(int id) {
		Query query = sessionFactory.getCurrentSession().createQuery("UPDATE Place p SET p.status = 'APPROVED' WHERE p.id = :id");
		query.setParameter("id", id);
		query.executeUpdate();
	}


	public void addApprovedPlace(Place place) {
		place.setStatus(PlaceStatus.APPROVED);
		sessionFactory.getCurrentSession().save(place);
	}

	public void removePlace(Integer id) {
		Place place = (Place) sessionFactory.getCurrentSession().load(Place.class, id);
		if (null != place) {
			sessionFactory.getCurrentSession().delete(place);
		}
	}

	@SuppressWarnings("unchecked")
	public List<Place> listAllPlaces() {
		return sessionFactory.getCurrentSession().createQuery("from Place").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listNewPlaces() {
		Query query = sessionFactory.getCurrentSession().createQuery("from Place where status='NEW'");
		return query.list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listDean() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "dekanat").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listChair() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "kafedra").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listAdministration() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "administration").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listDepartments() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "departments").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listLibrary() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "library").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listOrganizations() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "studorg").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listCoworking() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "coworking").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listFriends() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "friendorg").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listSchools() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "school").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listHealth() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "health").list();
	}

	@SuppressWarnings("unchecked")
	public List<Place> listServices() {
		return sessionFactory.getCurrentSession().createQuery("from Place where status='APPROVED' and type=:type_place")
				.setParameter("type_place", "services").list();
	}

}
