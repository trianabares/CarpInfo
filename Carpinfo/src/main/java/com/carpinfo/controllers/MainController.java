package com.carpinfo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String root(){
		return "Inicio.jsp";
	}
	
	@GetMapping("/info")
	public String info(){
		return "info.jsp";
	}
	
	@GetMapping("/info/mareas")
	public String mareas(){
		return "mareas.jsp";
	}
	
	@GetMapping("/info/aysa")
	public String aysa(){
		return "aysa.jsp";
	}
	
	@GetMapping("/turismo")
	public String turismo(){
		return "turismo.jsp";
	}
	
	@GetMapping("/vecinos")
	public String vecinos(){
		return "vecinos.jsp";
	}
	
	@GetMapping("/contacto")
	public String contacto(){
		return "contacto.jsp";
	}

}
