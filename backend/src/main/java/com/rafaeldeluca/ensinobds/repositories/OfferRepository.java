package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Offer;

public interface OfferRepository extends JpaRepository <Offer, Long> {

}