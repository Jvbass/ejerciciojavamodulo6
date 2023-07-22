package cl.modulo6.asesoriajpa.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.modulo6.asesoriajpa.model.entity.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, String> {

}
