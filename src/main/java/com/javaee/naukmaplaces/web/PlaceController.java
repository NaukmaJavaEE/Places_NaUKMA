package com.javaee.naukmaplaces.web;

import java.util.Map;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PlaceController {

	@Autowired
	private PlaceService placeService;
	
	 @RequestMapping("/index")
	 public String listPlaces(Map<String, Object> map) {
	 map.put("place", new Place());
	 return "place";
	 }

	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}

	@RequestMapping(value = "/propose", method = RequestMethod.POST)
	public String addPlace(@ModelAttribute("place") Place place, BindingResult result) {
		placeService.addNewPlace(place);
		return "redirect:/index";
	}
}
