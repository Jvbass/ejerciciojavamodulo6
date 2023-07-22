package cl.modulo6.asesoriajpa.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

//home
    @RequestMapping(value = {"home", "/"}, method = RequestMethod.GET)
    public ModelAndView showHome() {
        return new ModelAndView("home");
    }
//crear capacitacion    
    @RequestMapping(value = {"crear-capacitacion"}, method = RequestMethod.GET)
    public ModelAndView showCrearCapacitacion() {
        return new ModelAndView("crear-capacitacion");
    }
    
  //Contacto  
    @RequestMapping(value = {"contacto"}, method = RequestMethod.GET)
    public ModelAndView showContacto() {
        return new ModelAndView("contacto");
    }
    
  //crear Usuario    
    @RequestMapping(value = {"crear-usuario"}, method = RequestMethod.GET)
    public ModelAndView showCrearUsuario() {
        return new ModelAndView("crear-usuario");
    }
    
 // Formulario de login
	
 	@RequestMapping(value="/login")
 	public ModelAndView login() {
 		return new ModelAndView("login");
 	}
 	
 	@RequestMapping(value="/error")
 	public ModelAndView errorLogin() {
 		return new ModelAndView("login", "error", "true");
 	}
 	
 	@RequestMapping(value="/logout")
 	public ModelAndView logout() {
 		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
 		if(auth != null) {
 			SecurityContextHolder.getContext().setAuthentication(null);
 		}
 		
 		return new ModelAndView("redirect:/login?logout");
 	}

}
