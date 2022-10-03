package com.rafaeldeluca.ensinobds.entities;

import java.io.Serializable;
import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.rafaeldeluca.ensinobds.entities.pk.EnrollmentPrimaryKey;

//Enrollment é a classe de matricula
// não tem chave composto no jpa. Então tem que criar um classe para fazer a chave primária composta 
// com o id do User e id da Offer	

@Entity
@Table(name = "tb_enrollment")
public class Enrollment implements Serializable {
	

	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private EnrollmentPrimaryKey id = new EnrollmentPrimaryKey();
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant enrollMoment;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant refundMomment;
	private boolean available;
	private boolean onlyUpdate;
	
	public Enrollment () {
		
	}
	
	

	public Enrollment(EnrollmentPrimaryKey id, Instant enrollMoment, Instant refundMomment, boolean available,
			boolean onlyUpdate) {
		super();
		this.id = id;
		this.enrollMoment = enrollMoment;
		this.refundMomment = refundMomment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}



	public EnrollmentPrimaryKey getId() {
		return id;
	}

	public void setId(EnrollmentPrimaryKey id) {
		this.id = id;
	}

	public Instant getEnrollMoment() {
		return enrollMoment;
	}

	public void setEnrollMoment(Instant enrollMoment) {
		this.enrollMoment = enrollMoment;
	}

	public Instant getRefundMomment() {
		return refundMomment;
	}

	public void setRefundMomment(Instant refundMomment) {
		this.refundMomment = refundMomment;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public boolean isOnlyUpdate() {
		return onlyUpdate;
	}

	public void setOnlyUpdate(boolean onlyUpdate) {
		this.onlyUpdate = onlyUpdate;
	}

		

}
