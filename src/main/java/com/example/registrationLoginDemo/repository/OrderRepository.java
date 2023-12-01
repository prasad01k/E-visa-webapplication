package com.example.registrationLoginDemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.registrationLoginDemo.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
    // Define custom queries if needed
}
