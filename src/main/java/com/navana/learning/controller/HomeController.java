
package com.navana.learning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/devops")
    public String devops() {
        return "devops";
    }

    @GetMapping("/itsupport")
    public String itSupport() {
        return "itsupport";
    }

    @GetMapping("/intune")
    public String intune() {
        return "intune";
    }

    @GetMapping("/review")
    public String review() {
        return "review";
    }
}

