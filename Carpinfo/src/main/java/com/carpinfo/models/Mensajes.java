package com.carpinfo.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
@Table(name="mensajes")
public class Mensajes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message= "Por favor ingrese el título de su mensaje")
	@Size(min=3, max=30, message= "El título debe ser de entre 3 y 30 caracteres")
	private String titulo;
	
	@NotNull(message= "Por favor ingrese el contenido de su mensaje")
	@Size(min=3, message= "El mensaje debe ser mayor a 3 caracteres")
	@Size(max=800, message= "El comentario es demasiado largo")
	private String contenidos;
	
	@Column(name = "post_image")
	private String postImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user.id")
    private User creador;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="tema.id")
    private Temas tema;
	
	@OneToMany(mappedBy="mensaje", fetch=FetchType.LAZY)
    private List<Comentarios> comentario;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Mensajes() {
	}
	
	public String fechaMensaje() {
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
