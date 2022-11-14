package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Resource;

@Repository
public interface ResourceRepository extends JpaRepository<Resource, Long>{

}
