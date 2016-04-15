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
	public void addPlace(Place place) {
		placeDAO.addPlace(place);
	}

	@Transactional
	public List<Place> listPlace() {
		return placeDAO.listPlaces();
	}

	@Transactional
	public void removePlace(Integer id) {
		placeDAO.removePlace(id);
	}

}
