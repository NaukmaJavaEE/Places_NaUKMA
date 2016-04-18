package com.javaee.naukmaplaces.service;

import java.util.List;
import com.javaee.naukmaplaces.domain.Place;

public interface PlaceService {
	public void addPlace(Place place);

	public void removePlace(Integer id);
	public List<Place> listPlace();
	public List<Place> listDekanat();
	public List<Place> listKafedra();
}
