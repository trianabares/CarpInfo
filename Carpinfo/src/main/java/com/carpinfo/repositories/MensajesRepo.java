package com.carpinfo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.carpinfo.models.Mensajes;

public interface MensajesRepo extends CrudRepository <Mensajes, Long>  {

}
