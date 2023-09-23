package com.carpinfo.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.carpinfo.models.Publicacion;
import com.carpinfo.models.Temas;
import com.carpinfo.models.User;
import com.carpinfo.services.FileUpService;
import com.carpinfo.services.ForoService;
import com.carpinfo.services.PublicidadService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class PublicidadController {
	private final UserService userServ;
	private final PublicidadService publiServ;
	private final FileUpService fileUpServ;
	private final ForoService foroServ;

	public PublicidadController(UserService uSer, PublicidadService publiServ, FileUpService fileUpServ, ForoService foroServ) {
		this.userServ = uSer;
		this.publiServ = publiServ;
		this.fileUpServ = fileUpServ;
		this.foroServ = foroServ;
	}
	
	//ruta donde se suben las fotos
	private String UPLOAD_FOLDER = "src/main/webapp/images/";
	
	@PostMapping("/servicios/nuevo")
	public String nuevoServicio(@Valid @ModelAttribute("nuevaPubli") Publicacion publi, BindingResult result, 
			Model model, HttpSession sesion, @RequestParam("imageUpload") MultipartFile publiImage) 
					throws IOException{
		Long userId = (Long) sesion.getAttribute("userID");
		
		if (result.hasErrors()) {
			model.addAttribute("usuario", userServ.encontrarUserPorId(userId));
			List<Temas> temas = foroServ.allTemas();
			model.addAttribute("temas", temas);
			model.addAttribute("publicidad", publiServ.findAllPublicaciones());
			return "vecinos.jsp";
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
	
	@DeleteMapping("/servicios/{idPubli}/delete")
	public String eliminarServicio(Model model, HttpSession sesion, @PathVariable("idPubli") Long id) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión y sea admin
		if (userId != null) {
			if(userId != 1) {
				return "redirect:/";
			}
			User usuarioSesion = userServ.encontrarUserPorId(userId);
			model.addAttribute("usuario", usuarioSesion);
		}
		
		publiServ.deletePublication(id);
		return "redirect:/";
	}
}
