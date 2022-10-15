package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{

}