package com.carpinfo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.carpinfo.models.Comentarios;
import com.carpinfo.models.Mensajes;
import com.carpinfo.models.Temas;
import com.carpinfo.repositories.ComentariosRepo;
import com.carpinfo.repositories.MensajesRepo;
import com.carpinfo.repositories.TemasRepo;

@Service
public class ForoService {

	private final TemasRepo temasRepo;
	private final MensajesRepo mensajesRepo;
	private final ComentariosRepo comentariosRepo;
	public ForoService(TemasRepo tRe, MensajesRepo mRe, ComentariosRepo cRe) {
		this.temasRepo = tRe;
		this.mensajesRepo = mRe;
		this.comentariosRepo = cRe;
	}
	
	public Temas addTema(Temas tema) {
		return temasRepo.save(tema);
	}
	
	public Mensajes addMensaje(Mensajes mensaje) {
		return mensajesRepo.save(mensaje);
	}
	
	public Comentarios addComentario(Comentarios comentario) {
		return comentariosRepo.save(comentario);
	}
	
	public List<Temas> allTemas() {
		return temasRepo.findAll();
	}
	
	public List<Mensajes> findMensajesByTema(Long id) {
		return mensajesRepo.findMensajesByTema(id);
	}
	
	public List<Comentarios> findComentarioByMensaje(Long id) {
		return comentariosRepo.findComentarioByMensaje(id);
	}
	
	public List<Mensajes> findMensajesByUser(Long userId){
		return mensajesRepo.findMensajesByUser(userId);
	}
	
	public List<Comentarios> findComentariosByUser(Long userId) {
		return comentariosRepo.findComentariosByUser(userId);
	}
	
	public Temas mostrar(Long id) {
		return temasRepo.findById(id).orElse(null);
	}
	
	public Mensajes mostrarMensaje(Long id) {
		return mensajesRepo.findById(id).orElse(null);
	}
	
	public void eliminarMensaje(Long id) {
		mensajesRepo.deleteById(id);
	}
	
	public void eliminarComentario(Long id) {
		comentariosRepo.deleteById(id);
	}
	
	public void eliminarTema(Long id) {
		temasRepo.deleteById(id);
	}
	
	public Mensajes editarMensaje(Mensajes mensaje) {
        Mensajes mensajeExistente = mensajesRepo.findById(mensaje.getId()).orElse(null);
        if (mensajeExistente == null) {
            return null;
        }
        
        mensajeExistente.setTitulo(mensaje.getTitulo());
        mensajeExistente.setContenidos(mensaje.getContenidos());

        return mensajesRepo.save(mensajeExistente);
    }
	
}
