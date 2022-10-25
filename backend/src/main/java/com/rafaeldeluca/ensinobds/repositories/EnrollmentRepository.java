package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Enrollment;
import com.rafaeldeluca.ensinobds.entities.pk.EnrollmentPrimaryKey;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPrimaryKey >{

}
