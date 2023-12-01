package com.example.registrationLoginDemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.registrationLoginDemo.entity.Order;
import com.example.registrationLoginDemo.repository.OrderRepository;

@Controller
public class OrderController {
    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("/FeesAndPayments")
    public String showOrderForm(Model model) {
        model.addAttribute("order", new Order());
        return "FeesAndPayments";
    }

    @PostMapping("/order")
    public String processOrderForm(@ModelAttribute Order order) {
        // Save the order to the database
        orderRepository.save(order);
        return "redirect:/thank-you"; // Redirect to a thank you page
    }
}

