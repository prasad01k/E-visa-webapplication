package com.example.registrationLoginDemo.controller;

import org.mindrot.jbcrypt.BCrypt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.registrationLoginDemo.entity.User;
import com.example.registrationLoginDemo.repository.UserRepository;

@Controller
public class ParentController {
	@Autowired
	private UserRepository userRepository;
	
	
	@GetMapping("/VisaApplication")
	String method2()
	{
		return "VisaApplication";
	}
	
	
	@GetMapping("/VisaTypes")
	String method3()
	{
		return "VisaTypes";
	}
	
	
	@GetMapping("/Requirements")
	String method4()
	{
		return "Requirements";
	}
	
//	@GetMapping("/FeesAndPayments")
//	String method5()
//	{
//		return "FeesAndPayments";
//	}
	
	@GetMapping("/Support")
	String method6()
	{
		return "Support";
	}
	
	@GetMapping("/AboutUs")
	String method7()
	{
		return "AboutUs";
	}
	
	@GetMapping("/NewsUpdates")
	String method8()
	{
		return "NewsUpdates";
	}
	
	@GetMapping("/ContactUs")
	String method9()
	{
		return "ContactUs";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	@GetMapping("/registration")
	public String registrationPage(User user) {
		return "registrationPage";
	}
	@GetMapping("/")
	public String loginPage(User user) {
		return "loginPage";
	}
	@PostMapping("/register")

	public String register(@ModelAttribute("user")User user) {
		String encodedPassword=BCrypt.hashpw(user.getPassword(),BCrypt.gensalt(12));
		user.setPassword(encodedPassword);
		userRepository.save(user);
		return "loginPage";
	}
	@PostMapping("/login")
    public String loginProcess(
            @RequestParam("gmail") String gmail,
            @RequestParam("password") String password) {
        // Your login logic here
        User dbUser = userRepository.findByGmail(gmail);
        Boolean isPasswordMatch = BCrypt.checkpw(password, dbUser.getPassword());

        if (isPasswordMatch) {
            // Successful login
            return "redirect:/home"; // Redirect to the home page
        } else {
            // Failed login, redirect to the login page with an error parameter
            return "redirect:/?error=true";
        }
    }
}
