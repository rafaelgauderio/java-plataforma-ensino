package com.rafaeldeluca.ensinobds.services;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rafaeldeluca.ensinobds.dto.UserDTO;
import com.rafaeldeluca.ensinobds.entities.User;
import com.rafaeldeluca.ensinobds.repositories.UserRepository;
import com.rafaeldeluca.ensinobds.services.exceptions.ResourceNotFoundException;


@Service
public class UserService implements UserDetailsService {
	
	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AuthService authService;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		User user = userRepository.findByEmail(email);
		if (user ==null) {
			logger.error("Usuário não foi encontrado: " + email);
			throw new UsernameNotFoundException("Email não encontrado.");
		}
		logger.info("Usuário encontrado: " + email);		
		return user;
	}
	
	@Transactional(readOnly = true)
	public UserDTO findById(Long id) {
		
		// se lançar a exceção abaixo para a lógica do método 
		authService.validateSelfOrAdmin(id);
		
		Optional <User> object = userRepository.findById(id);
		User entity = object.orElseThrow(() -> new ResourceNotFoundException("Enitity not found"));
		UserDTO userDTO = new UserDTO(entity);
		return userDTO;
	}

}
