package cl.modulo6.asesoriajpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.modulo6.asesoriajpa.model.entity.Cliente;
import cl.modulo6.asesoriajpa.model.services.ClienteService;

@RestController
public class RestClienteController {

	@Autowired
	private ClienteService clienteService;
	
	@RequestMapping(value="/api/clientes", headers = "Accept=application/json")
	public List<Cliente> getCliente(){
		return clienteService.getAll();
	}
}
