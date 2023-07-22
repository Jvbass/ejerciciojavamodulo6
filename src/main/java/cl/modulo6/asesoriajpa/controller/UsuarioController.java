package cl.modulo6.asesoriajpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import cl.modulo6.asesoriajpa.model.entity.Usuario;
import cl.modulo6.asesoriajpa.model.services.UsuarioService;



@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	//listar todas los usuarios
	@RequestMapping(value="/listar-usuarios", method = RequestMethod.GET)
	public ModelAndView mostrarUsuarios() {
		List<Usuario> usuarios = usuarioService.getAll();
		
		return new ModelAndView("listar-usuarios", "usuarios", usuarios);
	}
	
	//guarda usuario
	@RequestMapping(value = "/usuario/save", method = RequestMethod.POST)
	public String crearUsuario(@ModelAttribute("usuario") Usuario usuario) {
		usuarioService.create(usuario);
	    return "redirect:/listar-usuarios"; 
	}
	
	//redirecciona a form edutar usuario con datos del usuario a editar
	@RequestMapping(value = "/edit-usuario/{id}", method = RequestMethod.GET)
	public ModelAndView showEditForm(@PathVariable("id") String rut) {
	    ModelAndView editUsuario = new ModelAndView("editar-usuario");
	    Usuario usuario = usuarioService.getOne(rut); 
	    editUsuario.addObject("usuario", usuario); 
	    return editUsuario;
	}
	
	//editar usuario
	@RequestMapping(value = "/usuario/edit", method = RequestMethod.POST)
	public String updateUsuario(@ModelAttribute("usuario") Usuario usuario) {
		usuarioService.update(usuario); 
	    return "redirect:/listar-usuarios"; 
	}
	
	  //borrar usuario
	@RequestMapping(value = "/delete-usuario/{id}", method = RequestMethod.GET)
	public String deleteUsuario(@PathVariable("id") String rut) {
		usuarioService.delete(rut); 
	    return "redirect:/listar-usuarios"; 
	}
	
}
