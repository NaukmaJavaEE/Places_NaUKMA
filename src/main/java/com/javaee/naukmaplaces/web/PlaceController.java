package com.javaee.naukmaplaces.web;

import java.util.Map;
import java.util.Properties;

import com.javaee.naukmaplaces.domain.MailBody;
import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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

	@RequestMapping(value = "/mail", method = RequestMethod.POST)
	public @ResponseBody
	boolean makeEmail(@RequestBody MailBody mailBody){
		final String username = "places.naukma@gmail.com";
		final String password = "Places.NaUKMA2016";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(mailBody.getEmail()));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(username));
			message.setSubject("test");
			message.setText(mailBody.getText());

			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		return true;
	}
}
