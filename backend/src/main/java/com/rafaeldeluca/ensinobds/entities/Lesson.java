package com.rafaeldeluca.ensinobds.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/*SuperClasse Lesson (aula)
Lesson abstract, pois ele vai ser ter que ser ou uma Task (tarefa) ou Content.
Content e Task vão ter o mesmo id da Lesson correspondente. Herdam o atributo id da classe Lesson
Sendo Lesson abstract a classe não foi poder ser instanciada. Somente as Subclasses podem ser instanciadas.
SubClasse herdam da classe SuperClasse os métodos equal e hashCode
Herança no bando de dados relacional tem que informar se vai informar com tipos diferentes em apenas um tabelão (SINGLE_TABLE), vai ter
	vários campos com NULL das classes diferentes. Ou em tabelas diferentes (JOINED) e relacionar as tabelas com chaves estrangeriras
	joinColumns vai ser a Chave estrangeira da classe que se estou usando
*/

public abstract class Lesson implements Serializable{
	
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String title;
	private Integer position;
	
	private Section section;
	
	private Set<Enrollment> enrollmentsDone = new HashSet<Enrollment>();
	
	public Lesson () {
		
	}
	
	// Nunca colocar Collection em Construtores
	public Lesson(Long id, String title, Integer position, Section section) {
		super();
		this.id = id;
		this.title = title;
		this.position = position;
		this.section = section;	
	}

	public Long getId() {
		return id;
	}

	public void setId(Long ind) {
		this.id = ind;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public Set<Enrollment> getEnrollmentsDone() {
		return enrollmentsDone;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lesson other = (Lesson) obj;
		return Objects.equals(id, other.id);
	}

	// Não fazer métodos set para Collection
	/*
	public void setEnrollmentsDone(Set<Enrollment> enrollmentsDone) {
		this.enrollmentsDone = enrollmentsDone;
	}
	*/	
	

}
