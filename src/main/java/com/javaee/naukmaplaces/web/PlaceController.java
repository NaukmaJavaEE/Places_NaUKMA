package com.javaee.naukmaplaces.web;

import java.util.Map;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PlaceController {

	@Autowired
	private PlaceService contactService;

	@RequestMapping("/index")
	public String listContacts(Map<String, Object> map) {
		map.put("place", new Place());
		map.put("placeList", contactService.listPlace());
		return "place";
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("place") Place place,
			BindingResult result) {
		contactService.addContact(place);
		return "redirect:/index";
	}

	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("placeId") Integer placeId) {
		contactService.removeContact(placeId);
		return "redirect:/index";
	}
}
