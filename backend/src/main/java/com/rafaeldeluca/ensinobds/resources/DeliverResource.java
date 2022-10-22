package com.rafaeldeluca.ensinobds.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
	
	@PutMapping(value = "/{id}")
	public ResponseEntity <Void> save (@PathVariable Long id, @RequestBody DeliverRevisionDTO dto ) {
		deliverService.saveRevision(id, dto);
		return ResponseEntity.noContent().build();
	
	}	

}
