package com.rafaeldeluca.ensinobds.services.exceptions;

public class ForbiddenException extends RuntimeException{

	private static final long serialVersionUID = 1L;
	
	public ForbiddenException(String message) {
		
		// retornar o erro 403
		// usuário logado com token válido, mas o recurso não pode ser acesso devido ao perfil 
		// regra de negócio poibre ele de acessar esse recurso		
		
		super(message);
	}	
}
