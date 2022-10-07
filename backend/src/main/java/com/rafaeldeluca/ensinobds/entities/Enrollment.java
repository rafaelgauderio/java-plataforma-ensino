package com.rafaeldeluca.ensinobds.entities;

import java.io.Serializable;
import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
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
	private Instant refundMoment;
	
	private boolean available;
	private boolean onlyUpdate;
	
	@ManyToMany(mappedBy = "enrollmentsDone")
	private Set<Lesson> lessonsDone = new HashSet<Lesson> ();
	
	public Enrollment () {
		
	}
	
	

	public Enrollment(EnrollmentPrimaryKey id, Instant enrollMoment, Instant refundMoment, boolean available,
			boolean onlyUpdate) {
		super();
		this.id = id;
		this.enrollMoment = enrollMoment;
		this.refundMoment = refundMoment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}
	
	public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available,
			boolean onlyUpdate) {
		super();
		id.setUser(user);
		id.setOffer(offer);
		this.enrollMoment = enrollMoment;
		this.refundMoment = refundMoment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}


	public EnrollmentPrimaryKey getId() {
		return id;
	}

	public void setId(EnrollmentPrimaryKey id) {
		this.id = id;
	}
	
	public User getStudent() {
		return id.getUser();
	}
	
	public void setStudent(User user) {
		id.setUser(user);
	}
	
	public Offer getOffer () {
		return id.getOffer();
	}
	
	public void setOffer (Offer offer) {
		id.setOffer(offer);
	}
	

	public Instant getEnrollMoment() {
		return enrollMoment;
	}

	public void setEnrollMoment(Instant enrollMoment) {
		this.enrollMoment = enrollMoment;
	}

	public Instant getRefundMoment() {
		return refundMoment;
	}

	public void setRefundMomment(Instant refundMomment) {
		this.refundMoment = refundMomment;
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
