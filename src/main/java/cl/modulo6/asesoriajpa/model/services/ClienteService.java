package cl.modulo6.asesoriajpa.model.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.modulo6.asesoriajpa.model.entity.Cliente;
import cl.modulo6.asesoriajpa.model.repository.IClienteRepository;

@Service
public class ClienteService {

	@Autowired
	private IClienteRepository clienteRepository;
	
	public List<Cliente> getAll(){
		return clienteRepository.findAll();
	}
	
}
