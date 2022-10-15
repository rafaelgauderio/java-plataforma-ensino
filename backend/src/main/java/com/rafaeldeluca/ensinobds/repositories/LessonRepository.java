package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Lesson;

public interface LessonRepository extends JpaRepository <Lesson, Long> {

}
