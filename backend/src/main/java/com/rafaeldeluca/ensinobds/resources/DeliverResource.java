package com.rafaeldeluca.ensinobds.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rafaeldeluca.ensinobds.dto.DeliverRevisionDTO;
import com.rafaeldeluca.ensinobds.services.DeliverService;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {
	
	@Autowired
	private DeliverService deliverService;
	
	
	//somente o instrutor e admin podem corrigir as tarefas, aluno não está autorizado a acessar esse endPoint
	@PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
	@PutMapping(value = "/{id}")
	public ResponseEntity <Void> saveRevision(@PathVariable Long id, @RequestBody DeliverRevisionDTO dto ) {
		deliverService.saveRevision(id, dto);
		return ResponseEntity.noContent().build();
	
	}	

}
