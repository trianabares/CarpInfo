package com.carpinfo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.carpinfo.models.Mensajes;
import com.carpinfo.models.Temas;
import com.carpinfo.repositories.MensajesRepo;
import com.carpinfo.repositories.TemasRepo;

@Service
public class ForoService {

	private final TemasRepo temasRepo;
	private final MensajesRepo mensajesRepo;
	public ForoService(TemasRepo tRe, MensajesRepo mRe) {
		this.temasRepo = tRe;
		this.mensajesRepo = mRe;
	}
	
	public Temas addTema(Temas tema) {
		return temasRepo.save(tema);
	}
	
	public Mensajes addMensaje(Mensajes mensaje) {
		return mensajesRepo.save(mensaje);
	}
	
	public List<Temas> allTemas() {
		return temasRepo.findAll();
	}
	
	public List<Mensajes> findMensajesByTema(Long id) {
		return mensajesRepo.findMensajesByTema(id);
	}
	
	public Temas mostrar(Long id) {
		return temasRepo.findById(id).orElse(null);
	}
	
}
