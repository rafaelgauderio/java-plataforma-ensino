package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.User;

public interface UserRepository extends JpaRepository <User, Long> {
	
	User findByEmail(String email);

}
