package com.javaee.naukmaplaces.web;

import com.javaee.naukmaplaces.domain.Place;
import com.javaee.naukmaplaces.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/log")
public class LoginController {

    @Autowired
    private PlaceService placeService;

    @RequestMapping("/")
    public String start(Map<String, Object> map) {
        map.put("place", new Place());
        return "login";
    }}