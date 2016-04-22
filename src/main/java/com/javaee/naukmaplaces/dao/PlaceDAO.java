package com.javaee.naukmaplaces.dao;

import java.util.List;

import com.javaee.naukmaplaces.domain.*;

public interface PlaceDAO {
	
	void addNewPlace(Place place);	
	void addApprovedPlace(int id);
	void addApprovedPlace(Place place);
	void removePlace(Integer pid);
	
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
	public List<Place> listServices();
	public List<Place> listHealth();
}
