package com.javaee.naukmaplaces.service;

import java.util.List;
import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.dao.PlaceDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlaceServiceImpl implements PlaceService {

	@Autowired
	private PlaceDAO placeDAO;

	@Transactional
	public void addNewPlace(Place place) {
		placeDAO.addNewPlace(place);
	}
	
	@Transactional
	public void addApprovedPlace(Place place){
		placeDAO.addApprovedPlace(place);
	}

	@Transactional
	public List<Place> listAllPlaces() {
		return placeDAO.listAllPlaces();
	}

	@Transactional
	public List<Place> listNewPlaces() {
		return placeDAO.listNewPlaces();
	}

	@Transactional
	public void removePlace(Integer id) {
		placeDAO.removePlace(id);
	}

	@Transactional
	public List<Place> listDean() {
		return placeDAO.listDean();
	}

	@Transactional
	public List<Place> listChair() {
		return placeDAO.listChair();
	}

	@Transactional
	public List<Place> listAdministration() {
		return placeDAO.listAdministration();
	}

	@Transactional
	public List<Place> listDepartments() {
		return placeDAO.listDepartments();	}

	@Transactional
	public List<Place> listLibrary() {
		return placeDAO.listLibrary();
	}

	@Transactional
	public List<Place> listOrganizations() {
		return placeDAO.listOrganizations();
	}

	@Transactional
	public List<Place> listCoworking() {
		return placeDAO.listCoworking();
	}

	@Transactional
	public List<Place> listFriends() {
		return placeDAO.listFriends();
	}

	@Transactional
	public List<Place> listSchools() {
		return placeDAO.listSchools();
	}

	@Transactional
	public List<Place> listHealth() {
		return placeDAO.listHealth();
	}

	@Transactional
	public List<Place> listServices() {
		return placeDAO.listServices();
	}

}
