package com.web.demoprueba;

import org.springframework.stereotype.Controller;

@Controller
public class Home {
    public String home() {
        return "index";
    }
}
