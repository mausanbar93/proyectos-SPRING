package com.seratic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrador on 16/02/2017.
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }
}