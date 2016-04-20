package com.javaee.naukmaplaces.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;

@RequestMapping("/places")
@Controller
public class GuestController {

	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value = "/dean", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllDean(){
		return placeService.listDean();
	}
		
	@RequestMapping(value = "/chair", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllChair(){
		return placeService.listChair();
	}
	
	@RequestMapping(value = "/administration", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllAdministration(){
		return placeService.listAdministration();
	}
	
	@RequestMapping(value = "/departments", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllDepartments(){
		return placeService.listDepartments();
	}
	
	@RequestMapping(value = "/library", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllLibrary(){
		return placeService.listLibrary();
	}
	
	@RequestMapping(value = "/organizations", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllOrganizations(){
		return placeService.listOrganizations();
	}
	
	@RequestMapping(value = "/coworking", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllCoworking(){
		return placeService.listCoworking();
	}
	
	@RequestMapping(value = "/friends", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllFriends(){
		return placeService.listFriends();
	}
	
	@RequestMapping(value = "/schools", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllSchool(){
		return placeService.listSchools();
	}
	
	
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllService(){
		return placeService.listServices();
	}
	
	@RequestMapping(value = "/health", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAllHealth(){
		return placeService.listHealth();
	}
	
	
}
