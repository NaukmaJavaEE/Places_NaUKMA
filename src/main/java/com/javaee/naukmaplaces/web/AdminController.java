package com.javaee.naukmaplaces.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private PlaceService placeService;

	@RequestMapping("/")
	public String start(Map<String, Object> map) {
		map.put("place", new Place());
		return "admin";
	}

	@RequestMapping(value = "/allplaces", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAll(){
		return placeService.listAllPlaces();
	}

	@RequestMapping(value = "/newplaces", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllNew() {
		return placeService.listNewPlaces();
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addPlace(@RequestParam("id") int id) {
		placeService.addApprovedPlace(id);
		return "redirect:/admin/";
	}

	@RequestMapping("/delete/{placeId}")
	public String deletePlace(@PathVariable("placeId") Integer placeId) {
		placeService.removePlace(placeId);
		return "redirect:/admin/";
	}

}
