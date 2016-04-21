package com.javaee.naukmaplaces.service;

import java.util.List;
import com.javaee.naukmaplaces.domain.Place;

public interface PlaceService {
	public void addNewPlace(Place place);
	void addApprovedPlace(int id);
	public void removePlace(Integer id);

	public List<Place> listAllPlaces();
	public List<Place> listNewPlaces();

	public List<Place> listDean();
	public List<Place> listChair();
	public List<Place> listAdministration();
	public List<Place> listDepartments();
	public List<Place> listLibrary();
	public List<Place> listOrganizations();
	public List<Place> listCoworking();
	public List<Place> listFriends();
	public List<Place> listSchools();
	public List<Place> listHealth();
	public List<Place> listServices();
}
