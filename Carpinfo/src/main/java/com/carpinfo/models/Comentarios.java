package com.carpinfo.models;

import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="comentarios")
public class Comentarios {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message= "Por favor ingrese su comentario")
	@Size(min=3, message= "El comentario debe ser mayor a 3 caracteres")
	@Size(max=800, message= "El comentario es demasiado largo")
	private String contenidos;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user.id")
    private User creador;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="mensaje.id")
    private Mensajes mensaje;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Comentarios() {
	}
	
	public String fechaComentario() {
	    SimpleDateFormat formatoFecha = new SimpleDateFormat("EEEE, MMM d, yyyy HH:mm");
	    return formatoFecha.format(this.createdAt);
	}
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}
