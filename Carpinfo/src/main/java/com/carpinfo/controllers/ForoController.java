package com.carpinfo.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.carpinfo.models.Mensajes;
import com.carpinfo.models.Temas;
import com.carpinfo.services.ForoService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ForoController {
	
private final UserService userServ;
private final ForoService foroServ;
	
	public ForoController(UserService uServ,ForoService fServ ) {
		this.userServ = uServ;
		this.foroServ = fServ;

	}
	
	// TEMAS Y MENSAJES
	
	@GetMapping("/foro/{idTema}")
	public String mostrarTema(@PathVariable("idTema") Long idTema, @ModelAttribute("nuevomensaje") Mensajes mensaje, Model model, HttpSession sesion) {
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/registro";
		}
		Temas temas = foroServ.mostrar(idTema);
		model.addAttribute("tema", temas);
		List<Mensajes> mensajes = foroServ.findMensajesByTema(idTema);
		model.addAttribute("mensajes", mensajes);
		model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
		return "tema.jsp";
	}
	
	@PostMapping("/foro/{idTema}/nuevo")
	public String addMsg(@Valid @ModelAttribute("nuevomensaje") Mensajes mensaje, BindingResult result, @PathVariable("idTema") Long idTema, HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/registro";
		}
		if (result.hasErrors()) {
			Temas temas = foroServ.mostrar(idTema);
			model.addAttribute("tema", temas);
			List<Mensajes> mensajes = foroServ.findMensajesByTema(idTema);
			model.addAttribute("mensajes", mensajes);
			model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
			return "tema.jsp";
		} else {
			foroServ.addMensaje(mensaje);
			return "redirect:/foro/" + idTema.toString();
		}
	}
	
	// MENSAJES Y COMENTARIOS
	
//	@GetMapping("/foro/{idTema}/{idMensaje}")
//	public String mostrarMensaje(@PathVariable("idTema") Long idTema, @PathVariable("idTema") Long idMensaje, @ModelAttribute("nuevocomentario") Mensajes mensaje, Model model, HttpSession sesion) {
//		Long userId = (Long) sesion.getAttribute("userID");
//		if (userId == null) {
//			return "redirect:/registro";
//		}
//		Temas temas = foroServ.mostrar(idTema);
//		model.addAttribute("tema", temas);
//		List<Mensajes> mensajes = foroServ.findMensajesByTema(idTema);
//		model.addAttribute("mensajes", mensajes);
//		model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
//		return "mensaje.jsp";
//	}
//	
//	@PostMapping("/foro/{idTema}/nuevo")
//	public String addMsg(@Valid @ModelAttribute("nuevomensaje") Mensajes mensaje, BindingResult result, @PathVariable("idTema") Long idTema, HttpSession sesion, Model model) {
//		Long userId = (Long) sesion.getAttribute("userID");
//		if (userId == null) {
//			return "redirect:/registro";
//		}
//		if (result.hasErrors()) {
//			Temas temas = foroServ.mostrar(idTema);
//			model.addAttribute("tema", temas);
//			List<Mensajes> mensajes = foroServ.findMensajesByTema(idTema);
//			model.addAttribute("mensajes", mensajes);
//			model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
//			return "tema.jsp";
//		} else {
//			foroServ.addMensaje(mensaje);
//			return "redirect:/foro/" + idTema.toString();
//		}
//	}
	
}