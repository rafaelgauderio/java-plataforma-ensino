package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Section;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long>{

}