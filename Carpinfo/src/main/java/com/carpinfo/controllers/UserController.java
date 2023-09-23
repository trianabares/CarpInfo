package com.carpinfo.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.carpinfo.models.LogReg;
import com.carpinfo.models.User;
import com.carpinfo.services.FileUpService;
import com.carpinfo.services.PublicidadService;
import com.carpinfo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {

	private final UserService userServ;
	private final PublicidadService publiServ;
	private final FileUpService fileUpServ;

	public UserController(UserService uSer, PublicidadService publiServ, FileUpService fileUpServ) {
		this.userServ = uSer;
		this.publiServ = publiServ;
		this.fileUpServ = fileUpServ;
	}

	// ruta donde se suben las fotos
	private String UPLOAD_FOLDER = "src/main/webapp/images/";

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
		viewModel.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "registro.jsp";
	}

	@PostMapping("/registration")
	public String registro(@Valid @ModelAttribute("user") User usuario, BindingResult resultado,
			@RequestParam("imageUpload") MultipartFile profileImage, Model viewModel) throws IOException {

		// subir foto de perfil
		if (profileImage == null) {
			throw new RuntimeException("Por favor subir un archivo");
		}

		fileUpServ.subirArchivoABD(profileImage);

		try {
			byte[] bytes = profileImage.getBytes();
			Path ruta = Paths.get(UPLOAD_FOLDER, profileImage.getOriginalFilename());
			Files.write(ruta, bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}

		usuario.setProfileImage("/images/" + profileImage.getOriginalFilename());

		userServ.registroUsuario(usuario, resultado);

		if (resultado.hasErrors()) {
			viewModel.addAttribute("login", new LogReg());
			viewModel.addAttribute("publicaciones", publiServ.findAllPublicaciones());
			return "registro.jsp";
		}

		viewModel.addAttribute("login", new LogReg());
		return "redirect:/";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("login") LogReg loginuser, BindingResult resultado, Model viewModel,
			HttpSession sesion) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("user", new User());
			viewModel.addAttribute("publicaciones", publiServ.findAllPublicaciones());
			viewModel.addAttribute("error", "E-mail y/o contraseña ingresados son inválidos");
			return "info.jsp";
		}

		if (userServ.authenthicateUser(loginuser.getEmail(), loginuser.getPassword(), resultado)) {
			User usuarioLog = userServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("userID", usuarioLog.getId());
			viewModel.addAttribute("usuario", usuarioLog);
			return "redirect:/";
		} else {
			viewModel.addAttribute("errorLog", "Por favor intenta de nuevo");
			viewModel.addAttribute("user", new User());
			return "info.jsp";
		}

	}
	
	//editar perfil de user
	@GetMapping("/perfil/{id}/edit")
	public String editGet(@PathVariable("id") Long id, Model viewModel, HttpSession sesion) {
		Long userId = (Long) sesion.getAttribute("userID");

		// Verifica si el usuario ha iniciado sesión
		if (userId != null) {
			if(userId != id) {
				return "redirect:/";
			}
			User usuarioSesion = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuarioSesion);
		}
		
		viewModel.addAttribute("user", userServ.encontrarUserPorId(userId));
		viewModel.addAttribute("login", new LogReg());
		viewModel.addAttribute("publicaciones", publiServ.findAllPublicaciones());
		return "editarperfil.jsp";
	}
	
	@PutMapping("/perfil/{id}/edit")
	public String edit(@Valid @ModelAttribute("user") User usuario, BindingResult resultado, HttpSession sesion,
			@RequestParam("imageUpload") MultipartFile profileImage, @PathVariable("id") Long id, Model viewModel) throws IOException {

		// subir foto de perfil
		if (profileImage == null) {
			throw new RuntimeException("Por favor subir un archivo");
		}

		fileUpServ.subirArchivoABD(profileImage);

		try {
			byte[] bytes = profileImage.getBytes();
			Path ruta = Paths.get(UPLOAD_FOLDER, profileImage.getOriginalFilename());
			Files.write(ruta, bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}

		usuario.setProfileImage("/images/" + profileImage.getOriginalFilename());
		
		Long userId = (Long) sesion.getAttribute("userID");
		if (resultado.hasErrors()) {
			viewModel.addAttribute("usuario", userServ.encontrarUserPorId(userId));
			viewModel.addAttribute("publicaciones", publiServ.findAllPublicaciones());
			return "editarperfil.jsp";
		}
		
		userServ.actualizarUsuario(usuario, id);

		viewModel.addAttribute("login", new LogReg());
		return "redirect:/perfil/{id}";
	}

	@GetMapping("/logout")
	public String logout(HttpSession sesion) {
		sesion.setAttribute("userID", null);
		return "redirect:/";
	}
}
