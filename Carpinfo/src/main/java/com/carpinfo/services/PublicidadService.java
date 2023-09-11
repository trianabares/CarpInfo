package com.carpinfo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.carpinfo.models.Publicacion;
import com.carpinfo.repositories.PublicidadRepo;

@Service
public class PublicidadService {
	private final PublicidadRepo pRepo;
	public PublicidadService(PublicidadRepo pRepo) {
		this.pRepo = pRepo;
	}
	
	public List<Publicacion> findAllPublicaciones(){
		return pRepo.findAll();
	}
	
	public Publicacion addPublicacion(Publicacion publi) {
		return pRepo.save(publi);
	}
}
