package com.example.registrationLoginDemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.registrationLoginDemo.Service.UserApplicationService;
import com.example.registrationLoginDemo.entity.UserApplication;

@Controller
public class DisplayDataController {
    private UserApplicationService userApplicationService;

    @Autowired
    public DisplayDataController(UserApplicationService userApplicationService) {
        this.userApplicationService = userApplicationService;
    }

    @GetMapping("/displayData")
    public String displayData(Model model) {
        List<UserApplication> userApplications = userApplicationService.getAllUserApplications();
        model.addAttribute("userApplications", userApplications);
        return "displayVisaData"; // This should be the name of your HTML page
    }
}
