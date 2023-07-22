package cl.modulo6.asesoriajpa.model.services;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.modulo6.asesoriajpa.model.entity.Capacitacion;
import cl.modulo6.asesoriajpa.model.repository.ICapacitacionRepository;

@Service
public class CapacitacionService {
	@Autowired
	private ICapacitacionRepository capacitacionRepository;
	
	
	public List<Capacitacion> getAll(){
		return capacitacionRepository.findAll();//usamos metodo findAll de jpaRepository
	}
	
	public void create(Capacitacion capacitacion) {
		capacitacionRepository.save(capacitacion);
	}
	
	public Capacitacion getOne(int idCapacitacion) {
	    return capacitacionRepository.findById(idCapacitacion)
	        .orElseThrow(() -> new NoSuchElementException("No se encontro capacitacion la id " + idCapacitacion));
	}
	
	public void update(Capacitacion capacitacion) {
		capacitacionRepository.save(capacitacion);
	}
	
	public void delete(int idCapacitacion) {
		capacitacionRepository.delete(capacitacionRepository.getOne(idCapacitacion));
	}

}
