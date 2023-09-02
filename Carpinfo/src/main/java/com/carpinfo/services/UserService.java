package com.carpinfo.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.carpinfo.models.User;
import com.carpinfo.repositories.UserRepo;

@Service
public class UserService {
	private final UserRepo userRepo;
	public UserService(UserRepo uRe) {
		this.userRepo = uRe;
	}

	// Encontrar usuario a traves de email
	public User encontrarPorEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	public User encontrarUserPorId(Long id) {
		Optional<User> user = userRepo.findById(id);
		if(user.isPresent()) {
			return user.get();
		}
		return null;
	}

	// registar al usuario
	public User registroUsuario(User user, BindingResult resultado) {

		User usuarioRegistrado = userRepo.findByEmail(user.getEmail());

		if (usuarioRegistrado != null) {
			resultado.rejectValue("email", "Matches", "Correo electronico ya existe");
		}
		if (!user.getPassword().equals(user.getPasswordConfirmation())) {
			resultado.rejectValue("password", "Matches", "Password no coincide");
		}
		if (resultado.hasErrors()) {
			return null;
		}
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
		return userRepo.save(user);

	}

	// Autenticacion del usuario (LOGIN)
	public boolean authenthicateUser(String email, String password, BindingResult resultado) {

		User usuarioRegistrado = userRepo.findByEmail(email);

		if (usuarioRegistrado == null) {
			resultado.rejectValue("email", "Matches", "Email no valido");
			return false;
		} else {
			if (BCrypt.checkpw(password, usuarioRegistrado.getPassword())) {
				return true;
			} else {
				resultado.rejectValue("password", "Matches", "Password no valido");
				return false;
			}
		}
	}
}
