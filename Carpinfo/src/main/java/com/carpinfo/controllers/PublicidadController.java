package com.carpinfo.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.carpinfo.models.Publicacion;
import com.carpinfo.services.FileUpService;
import com.carpinfo.services.PublicidadService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class PublicidadController {
	private final UserService userServ;
	private final PublicidadService publiServ;
	private final FileUpService fileUpServ;

	public PublicidadController(UserService uSer, PublicidadService publiServ, FileUpService fileUpServ) {
		this.userServ = uSer;
		this.publiServ = publiServ;
		this.fileUpServ = fileUpServ;
	}
	
	//ruta donde se suben las fotos
	private String UPLOAD_FOLDER = "src/main/webapp/images/";
	
	@PostMapping("/servicios/nuevo")
	public String nuevoServicio(@Valid @ModelAttribute("nuevaPubli") Publicacion publi, BindingResult result, 
			Model model, HttpSession sesion, @RequestParam("imageUpload") MultipartFile publiImage) 
					throws IOException{
		Long userId = (Long) sesion.getAttribute("userID");
		
		if (result.hasErrors()) {
			model.addAttribute("publicidad", publiServ.findAllPublicaciones());
			return "turismo.jsp";
		}
		
		//foto de la publicacion
		if(publiImage == null) {
			throw new RuntimeException ("Por favor subir un archivo");
		}
		
		fileUpServ.subirArchivoABD(publiImage);
		
		try {
			byte[] bytes = publiImage.getBytes();
			Path ruta = Paths.get(UPLOAD_FOLDER, publiImage.getOriginalFilename());
			Files.write(ruta, bytes);
		}catch(IOException e) {
			e.printStackTrace();
		}
	    
		publi.setPubliImage("/images/" + publiImage.getOriginalFilename());
		model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
		publiServ.addPublicacion(publi);
		return "redirect:/vecinos";
	}
}
