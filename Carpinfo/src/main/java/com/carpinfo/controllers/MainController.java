package com.carpinfo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.carpinfo.models.User;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	private final UserService userServ;
    public MainController(UserService uSer) {
        this.userServ = uSer;
    }
	
	@GetMapping("/")
	public String root(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");
		
		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {
			
			 User usuario = userServ.encontrarUserPorId(userId);
			 model.addAttribute("usuario", usuario);
			 
		}
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
		return "aysa.jsp";
	}
	
	@GetMapping("/turismo")
	public String turismo(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");
		
		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {
			
			 User usuario = userServ.encontrarUserPorId(userId);
			 model.addAttribute("usuario", usuario);
			 
		}
		return "turismo.jsp";
	}
	
	@GetMapping("/vecinos")
	public String vecinos(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");
		
		// Verifica si el usuario ha iniciado sesión
		if (userId == null) {
			
			 return "redirect:/registro";
		}
		User usuario = userServ.encontrarUserPorId(userId);
		 model.addAttribute("usuario", usuario);
		return "vecinos.jsp";
	}
	
	@GetMapping("/contacto")
	public String contacto(HttpSession sesion, Model model) {
		Long userId = (Long) sesion.getAttribute("userID");
		
		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {
			
			 User usuario = userServ.encontrarUserPorId(userId);
			 model.addAttribute("usuario", usuario);
			 
		}
		return "contacto.jsp";
	}

}
