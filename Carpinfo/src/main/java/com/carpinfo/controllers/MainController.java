package com.carpinfo.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.carpinfo.models.Publicacion;
import com.carpinfo.models.Temas;
import com.carpinfo.models.User;
import com.carpinfo.services.ForoService;
import com.carpinfo.services.PublicidadService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {

	private final UserService userServ;
	private final ForoService foroServ;
	private final PublicidadService publiServ;

	public MainController(UserService uSer, ForoService foroServ, PublicidadService publiServ) {
		this.userServ = uSer;
		this.foroServ = foroServ;
		this.publiServ = publiServ;
	}

	@GetMapping("/")
	public String root(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "Inicio.jsp";
	}

	@GetMapping("/info")
	public String info(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "info.jsp";
	}

	@GetMapping("/info/mareas")
	public String mareas(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "mareas.jsp";
	}

	@GetMapping("/info/aysa")
	public String aysa(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "aysa.jsp";
	}

	@GetMapping("/turismo")
	public String turismo(HttpSession sesion, Model model, @ModelAttribute("nuevaPubli") Publicacion publi) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "turismo.jsp";
	}

	@GetMapping("/vecinos")
	public String vecinos(@ModelAttribute("nuevacategoria") Temas tema, HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId == null) {

			return "redirect:/registro";
		}
		
		User usuario = userServ.encontrarUserPorId(userId);
		model.addAttribute("usuario", usuario);
		List<Temas> temas = foroServ.allTemas();
		model.addAttribute("temas", temas);
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "vecinos.jsp";
	}
	
	@PostMapping("/vecinos")
	public String addLang(@Valid @ModelAttribute("nuevacategoria") Temas tema, BindingResult result) {
		if (result.hasErrors()) {
			return "vecinos.jsp";
		}
		
		foroServ.addTema(tema);
		return "redirect:/vecinos";
	}

	@GetMapping("/contacto")
	public String contacto(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {

			User usuario = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuario);

		}
		model.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "contacto.jsp";
	}

}
