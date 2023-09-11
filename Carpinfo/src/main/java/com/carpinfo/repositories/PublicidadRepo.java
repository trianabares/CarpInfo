package com.carpinfo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Publicacion;

public interface PublicidadRepo extends CrudRepository<Publicacion, Long> {
	
	@Query(value="SELECT publicaciones.* FROM publicaciones ORDER BY createdAt DESC", nativeQuery=true)
	public List<Publicacion> findAll();
}