package com.example.registrationLoginDemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.registrationLoginDemo.Service.UserApplicationService;
import com.example.registrationLoginDemo.entity.UserApplication;

@Controller
public class UserApplicationController {

    private UserApplicationService userApplicationService;

    @Autowired
    public UserApplicationController(UserApplicationService userApplicationService) {
        this.userApplicationService = userApplicationService;
    }

    @RequestMapping(value = "/submitApplication", method = RequestMethod.POST)
    public String submitApplication(
            @RequestParam("fullname") String fullname,
            @RequestParam("email") String email,
            @RequestParam("cor") String cor,
            @RequestParam("passportnumber") int passportnumber,
            @RequestParam("dob") String dob,
            @RequestParam("visatype") String visatype,
            @RequestParam("pov") String pov,
            @RequestParam("Tdate") String Tdate,
            @RequestParam("nodays") int nodays,
            Model model
    ) {
        UserApplication userApplication = new UserApplication(fullname, email, cor, passportnumber, dob, visatype, pov, Tdate, nodays);
        userApplicationService.saveUserApplication(userApplication);
        model.addAttribute("submissionSuccess", true); // Add an attribute to indicate a successful submission
        return "redirect:/displayData";
    }
}
