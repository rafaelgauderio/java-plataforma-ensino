package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Topic;

public interface TopicRepository extends JpaRepository<Topic, Long>{

}