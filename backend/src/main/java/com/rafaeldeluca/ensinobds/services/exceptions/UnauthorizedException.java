package com.rafaeldeluca.ensinobds.services.exceptions;

public class UnauthorizedException extends RuntimeException{

	private static final long serialVersionUID = 1L;
	
	public UnauthorizedException(String message) {
		
		// erro 401
		// token é invalido
		
		super(message);
	}	
}
