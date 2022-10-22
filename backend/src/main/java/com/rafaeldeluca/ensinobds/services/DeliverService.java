package com.rafaeldeluca.ensinobds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rafaeldeluca.ensinobds.dto.DeliverRevisionDTO;
import com.rafaeldeluca.ensinobds.entities.Deliver;
import com.rafaeldeluca.ensinobds.repositories.DeliverRepository;

@Service
public class DeliverService {
	
	@Autowired
	private DeliverRepository deliverRepository;
	
	// vai ser similar a atualizar um objeto. A Correção vai ter a id da deliver que está sendo salva 
	// e os dados da DeliverRevisionDTO	
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO dto) {
		Deliver deliver = deliverRepository.getOne(id);
		deliver.setFeedback(dto.getFeedback());
		deliver.setStatus(dto.getStatus());
		deliver.setCorrectCount(dto.getCorrectCount());	
		deliverRepository.save(deliver);
		
	}
	
}
