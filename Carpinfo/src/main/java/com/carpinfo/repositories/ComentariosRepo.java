package com.carpinfo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Comentarios;

public interface ComentariosRepo extends CrudRepository <Comentarios, Long> {
	
	@Query(value="SELECT comentarios.* FROM comentarios JOIN mensajes ON mensajes.id = comentarios.mensaje_id WHERE mensajes.id = :mensajeID", nativeQuery=true)
	List<Comentarios> findComentarioByMensaje(Long mensajeID);
	
	@Query(value="SELECT comentarios.* FROM comentarios JOIN users ON users.id = comentarios.user_id WHERE users.id = :userID", nativeQuery=true)
	List<Comentarios> findComentariosByUser(Long userID);

}
