package com.example.registrationLoginDemo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.registrationLoginDemo.entity.UserApplication;
import com.example.registrationLoginDemo.repository.UserApplicationRepository;

@Service
public class UserApplicationService {

    private UserApplicationRepository userApplicationRepository;

    @Autowired
    public UserApplicationService(UserApplicationRepository userApplicationRepository) {
        this.userApplicationRepository = userApplicationRepository;
    }

    public void saveUserApplication(UserApplication userApplication) {
        userApplicationRepository.save(userApplication);
    }

	public List<UserApplication> getAllUserApplications() {
		 return userApplicationRepository.findAll();
	}
}
