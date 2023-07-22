package cl.modulo6.asesoriajpa.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.modulo6.asesoriajpa.model.entity.Capacitacion;

public interface ICapacitacionRepository extends JpaRepository<Capacitacion, Integer>{
//JpaRepository implementa metodos crud findAll , findById, save, delete
}
