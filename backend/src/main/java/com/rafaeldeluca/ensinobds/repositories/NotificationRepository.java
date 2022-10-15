package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Notification;

public interface NotificationRepository extends JpaRepository <Notification, Long> {

}