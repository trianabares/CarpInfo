package com.carpinfo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Temas;

public interface TemasRepo extends CrudRepository <Temas, Long>  {

	List<Temas> findAll();
	
}
