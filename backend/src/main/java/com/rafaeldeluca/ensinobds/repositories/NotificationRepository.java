package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.rafaeldeluca.ensinobds.entities.Notification;
import com.rafaeldeluca.ensinobds.entities.User;

public interface NotificationRepository extends JpaRepository <Notification, Long> {
	
	//método para buscar as notificações paginadas do usuário 
	// buscar todas as notificações ou somente as não lidas (read=false)
	
	
	
	@Query ("SELECT objeto FROM Notification objeto "
			+ "WHERE (objeto.user =  :user) "
			+ "AND (:unreadOnly = false OR objeto.read = false) "
			+ "ORDER BY objeto.moment DESC"
			)
	Page<Notification> find(User user, boolean unreadOnly, Pageable pageable);

}