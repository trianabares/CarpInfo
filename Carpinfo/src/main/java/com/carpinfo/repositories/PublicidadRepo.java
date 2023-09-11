package com.carpinfo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Publicacion;

public interface PublicidadRepo extends CrudRepository<Publicacion, Long> {
	
	public List<Publicacion> findAll();
}