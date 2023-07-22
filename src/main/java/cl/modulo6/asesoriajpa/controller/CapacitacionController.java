package cl.modulo6.asesoriajpa.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.modulo6.asesoriajpa.model.entity.Capacitacion;
import cl.modulo6.asesoriajpa.model.services.CapacitacionService;

@Controller
public class CapacitacionController {
	
	private static final Logger logger = Logger.getLogger(CapacitacionController.class);
	
	@Autowired
	private CapacitacionService capacitacionService;
	//listar todas las capacitaciones
	@RequestMapping(value="/listar-capacitaciones", method = RequestMethod.GET)
	public ModelAndView mostrarCapacitaciones() {
		logger.info("Obteniendo TODAS las capacitaciones desde la BD");
		List<Capacitacion> capacitaciones = capacitacionService.getAll();
		
		return new ModelAndView("listar-capacitaciones", "capacitaciones", capacitaciones);
	}
	
	//guarda capacitacion
	@RequestMapping(value = "/capacitacion/save", method = RequestMethod.POST)
	public String crearCapacitacion(@ModelAttribute("capacitacion") Capacitacion capacitacion) {
	    capacitacionService.create(capacitacion);
	    return "redirect:/listar-capacitaciones"; 
	}
	
	//redirecciona la capcitacion a editar con data de la capcitacion en input
	@RequestMapping(value = "/edit-capacitacion/{id}", method = RequestMethod.GET)
	public ModelAndView showEditForm(@PathVariable("id") int idCapacitacion) {
	    ModelAndView editCapacitacion = new ModelAndView("editar-capacitacion");
	    Capacitacion capacitacion = capacitacionService.getOne(idCapacitacion); 
	    editCapacitacion.addObject("capacitacion", capacitacion); 
	    return editCapacitacion;
	}
	
	//editar capacitacion
	@RequestMapping(value = "/capacitacion/edit", method = RequestMethod.POST)
	public String updateCapacitacion(@ModelAttribute("capacitacion") Capacitacion capacitacion) {
	    capacitacionService.update(capacitacion); 
	    return "redirect:/listar-capacitaciones"; 
	}
	
	//borrar capacitacion
	@RequestMapping(value = "/delete-capacitacion/{id}", method = RequestMethod.GET)
	public String deleteStudent(@PathVariable("id") int idCapacitacion) {
		capacitacionService.delete(idCapacitacion); 
	    return "redirect:/listar-capacitaciones"; 
	}
}
