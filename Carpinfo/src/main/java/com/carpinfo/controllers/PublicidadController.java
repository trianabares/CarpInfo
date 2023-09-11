package com.carpinfo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.carpinfo.models.Publicacion;
import com.carpinfo.services.PublicidadService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class PublicidadController {
	private final UserService userServ;
	private final PublicidadService publiServ;

	public PublicidadController(UserService uSer, PublicidadService publiServ) {
		this.userServ = uSer;
		this.publiServ = publiServ;
	}
	
	@PostMapping("/servicios/nuevo")
	public String nuevoServicio(@Valid @ModelAttribute("nuevaPubli") Publicacion publi, BindingResult result, 
			Model model, HttpSession sesion) {
		Long userId = (Long) sesion.getAttribute("userID");
		
		if (result.hasErrors()) {
			model.addAttribute("publicidad", publiServ.findAllPublicaciones());
			return "turismo.jsp";
		}
		
		model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
		publiServ.addPublicacion(publi);
		return "redirect:/turismo";
	}
}
