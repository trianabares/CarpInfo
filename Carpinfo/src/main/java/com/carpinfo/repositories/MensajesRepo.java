package com.carpinfo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Mensajes;

public interface MensajesRepo extends CrudRepository <Mensajes, Long>  {
	
	@Query(value="SELECT mensajes.* FROM mensajes JOIN temas ON temas.id = mensajes.tema_id WHERE temas.id = :temasID", nativeQuery=true)
	List<Mensajes> findMensajesByTema(Long temasID);
	
	@Query(value="SELECT mensajes.* FROM mensajes JOIN users ON users.id = mensajes.user_id WHERE users.id = :userID", nativeQuery=true)
	List<Mensajes> findMensajesByUser(Long userID);

}
