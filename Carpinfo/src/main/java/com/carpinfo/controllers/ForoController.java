package com.carpinfo.controllers;

import org.springframework.stereotype.Controller;

import com.carpinfo.services.ForoService;
import com.carpinfo.services.UserService;

@Controller
public class ForoController {
	
private final UserService userServ;
private final ForoService foroServ;
	
	public ForoController(UserService uServ,ForoService fServ ) {
		this.userServ = uServ;
		this.foroServ = fServ;

}
}