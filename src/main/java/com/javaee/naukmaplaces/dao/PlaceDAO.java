package com.javaee.naukmaplaces.dao;

import java.util.List;

import com.javaee.naukmaplaces.domain.*;

public interface PlaceDAO {
	
	void addPlace(Place place);
	
	void deletePlace(Integer pid);
	
	public List<Place> listPlaces();

}
