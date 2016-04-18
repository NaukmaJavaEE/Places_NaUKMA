package com.javaee.naukmaplaces.dao;

import java.util.List;

import com.javaee.naukmaplaces.domain.*;

public interface PlaceDAO {
	
	void addPlace(Place place);
	
	void removePlace(Integer pid);
	
	public List<Place> listPlaces();

	public List<Place> listDekanat();
	public List<Place> listKafedra();
	public List<Place> listLibrary();
	public List<Place> listAdmin();
	public List<Place> listHealth();
	public List<Place> listSchool();
	public List<Place> listStudOrg();
	public List<Place> listMoney();
	public List<Place> listFriendOrg();
	

}
