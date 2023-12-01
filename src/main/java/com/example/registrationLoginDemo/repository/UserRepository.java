package com.example.registrationLoginDemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.registrationLoginDemo.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	User findByGmail(String gmail);
}
