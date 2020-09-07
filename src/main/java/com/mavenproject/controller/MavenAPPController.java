package com.mavenproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MavenAPPController {

    @GetMapping("/home-page")
    public String landingPage(){
        return "landing-page";
    }

    @GetMapping("/GenLeader")
    public String mavenHome(){
     return "ceo-biodata";
    }
    @GetMapping("/Leaders")
    public String forLeaders(){
        return "for-leaders";
    }
    @GetMapping("/GeneralLeader")
    public String forGenLeaders(){
        return "for-general-leaders";
    }
    @GetMapping("/Admins")
    public String forAdmin(){
        return "for-admins";
    }
}
