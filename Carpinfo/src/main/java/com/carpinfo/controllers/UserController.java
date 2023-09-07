package com.carpinfo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.carpinfo.models.LogReg;
import com.carpinfo.models.User;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {

	private final UserService userServ;

	public UserController(UserService uSer) {
		this.userServ = uSer;

	}

	@GetMapping("/registro")
	public String raiz(Model viewModel, HttpSession sesion) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
		}
		viewModel.addAttribute("user", new User());
		viewModel.addAttribute("login", new LogReg());

		return "registro.jsp";
	}

	@PostMapping("/registration")
	public String registro(@Valid @ModelAttribute("user") User usuario, BindingResult resultado, Model viewModel) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("login", new LogReg());

			return "registro.jsp";
		}
		User usuarioRegistrado = userServ.registroUsuario(usuario, resultado);
		viewModel.addAttribute("login", new LogReg());
		if (usuarioRegistrado != null) {
			viewModel.addAttribute("registro", "Gracias por registrarte, ahora login por favor");
		}
		return "redirect:/";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("login") LogReg loginuser, BindingResult resultado, Model viewModel,
			HttpSession sesion) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("user", new User());
			return "inicio.jsp";
		}

		if (userServ.authenthicateUser(loginuser.getEmail(), loginuser.getPassword(), resultado)) {
			User usuarioLog = userServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("userID", usuarioLog.getId());
			viewModel.addAttribute("usuario", usuarioLog);
			return "redirect:/";
		} else {
			viewModel.addAttribute("errorLog", "Por favor intenta de nuevo");
			viewModel.addAttribute("user", new User());
			return "inicio.jsp";
		}

	}

	@GetMapping("/logout")
	public String logout(HttpSession sesion) {
		sesion.setAttribute("userID", null);
		return "redirect:/";
	}
}
