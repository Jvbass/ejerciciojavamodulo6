package cl.modulo6.asesoriajpa.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.modulo6.asesoriajpa.model.entity.Cliente;

public interface IClienteRepository extends JpaRepository<Cliente, String>{
	
}
