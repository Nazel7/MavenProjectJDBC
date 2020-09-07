package com.mavenproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SecurityController {
    @GetMapping("/loginPage")
    public String loginBlankPage(){

//        return "login-blank-page";
        return "fancy-login";
    }
}
