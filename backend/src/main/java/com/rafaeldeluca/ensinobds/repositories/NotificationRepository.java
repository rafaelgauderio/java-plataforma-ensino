package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.rafaeldeluca.ensinobds.entities.Notification;
import com.rafaeldeluca.ensinobds.entities.User;

public interface NotificationRepository extends JpaRepository <Notification, Long> {
	
	//método para buscar as notificações paginadas do usuário 
	Page<Notification> findByUser(User user, Pageable pageable);

}