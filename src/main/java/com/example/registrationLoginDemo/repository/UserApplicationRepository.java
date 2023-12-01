package com.example.registrationLoginDemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.registrationLoginDemo.entity.UserApplication;

@Repository
public interface UserApplicationRepository extends JpaRepository<UserApplication, Long> {
}
