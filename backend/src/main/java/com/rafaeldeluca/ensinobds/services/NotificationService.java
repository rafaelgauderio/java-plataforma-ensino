package com.rafaeldeluca.ensinobds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.rafaeldeluca.ensinobds.dto.NotificationDTO;
import com.rafaeldeluca.ensinobds.entities.Notification;
import com.rafaeldeluca.ensinobds.entities.User;
import com.rafaeldeluca.ensinobds.repositories.NotificationRepository;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationRepository notificationRepository;
	
	@Autowired
	private AuthService authService;
	
	public Page<NotificationDTO> notificationsForCurrentUser(boolean unreadOnly, Pageable pageable) {
		
		User user = authService.authenticated();
		//fazer uma busca no database das notificações paginadas desse usuário.
		Page<Notification> page = notificationRepository.find(user,unreadOnly, pageable);
		return page.map( x -> new NotificationDTO(x));
	}
	

}
