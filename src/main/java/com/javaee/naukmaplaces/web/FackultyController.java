package com.javaee.naukmaplaces.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;

@RequestMapping("/faculty")
@Controller
public class FackultyController {

	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody List<Place> getAll(){
		return placeService.listDekanat();
	}
	
}
