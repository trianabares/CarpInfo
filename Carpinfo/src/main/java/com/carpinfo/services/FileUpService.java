package com.carpinfo.services;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.carpinfo.models.FileUp;
import com.carpinfo.repositories.FileUpRepo;

@Service
public class FileUpService {
	
	private final FileUpRepo fileupRepo;
	public FileUpService(FileUpRepo fuR) {
		this.fileupRepo = fuR;
	}
	
	public String subirArchivoABD(MultipartFile archivo) {
		
		FileUp nuevoArchivo = FileUp.builder()
				.nombre(archivo.getOriginalFilename())
				.fileType(archivo.getContentType())
				.rutaArchivo("/src/main/resources/static/images/"+archivo.getOriginalFilename())
				.build();
		
		fileupRepo.save(nuevoArchivo);
		
		if(nuevoArchivo != null) {
			System.out.println(archivo.getOriginalFilename());
			return "Upload exitoso" + archivo.getOriginalFilename(); 
		}
		
		return null;
	}
	

}