package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Offer;

@Repository
public interface OfferRepository extends JpaRepository <Offer, Long> {

}