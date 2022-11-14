package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course,Long>{

}
