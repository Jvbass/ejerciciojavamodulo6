package cl.modulo6.asesoriajpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import cl.modulo6.asesoriajpa.model.entity.Contacto;

@Controller
public class ContactoController {

	
	@RequestMapping(value = "/submitContactForm", method = RequestMethod.POST)
	public String capturarContacto(@RequestParam("name") String name, @RequestParam("lastname") String lastname, @RequestParam("email") String email, @RequestParam("message") String message) {
	       
			Contacto contacto = new Contacto();
	        contacto.setName(name);
	        contacto.setLastname(lastname);
	        contacto.setEmail(email);
	        contacto.setMessage(message);
	        
	        // Mostramos los datos en la consola
	        System.out.println("**********************");
	        System.out.println("Nombre: " + contacto.getName());
	        System.out.println("Apellido: " + contacto.getLastname());
	        System.out.println("Email: " + contacto.getEmail());
	        System.out.println("Mensaje: " + contacto.getMessage());
	        System.out.println("**********************");
			
	    return "redirect:/home"; 
	}
	
}
