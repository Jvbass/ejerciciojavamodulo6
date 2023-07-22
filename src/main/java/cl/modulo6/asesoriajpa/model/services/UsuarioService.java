package cl.modulo6.asesoriajpa.model.services;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import cl.modulo6.asesoriajpa.model.entity.Usuario;
import cl.modulo6.asesoriajpa.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private IUsuarioRepository usuarioRepository;
	
	public List<Usuario> getAll(){
		return usuarioRepository.findAll();
	}
	
	public void create(Usuario usuario) {
		// Encriptar la contraseña antes de guardarla
		String passwordEncriptada = encriptarPassword(usuario.getPassword());
		usuario.setPassword(passwordEncriptada);
		usuarioRepository.save(usuario);
	}
	
	
	public Usuario getOne(String rut) {
	    return usuarioRepository.findById(rut)
	        .orElseThrow(() -> new NoSuchElementException("No se encontro usuario con el rut " + rut));
	}
	
	public void update(Usuario usuario) {
		String passwordEncriptada = encriptarPassword(usuario.getPassword());
		usuario.setPassword(passwordEncriptada);
		usuarioRepository.save(usuario);
	}
	
	public void delete(String rut) {
		usuarioRepository.delete(usuarioRepository.getOne(rut));
	}
	
	//codigo para encriptar contraseña
	private String encriptarPassword(String password) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder.encode(password);
	}
	
	
}
