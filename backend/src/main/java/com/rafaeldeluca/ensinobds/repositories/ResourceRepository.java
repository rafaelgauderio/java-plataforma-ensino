package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long>{

}
