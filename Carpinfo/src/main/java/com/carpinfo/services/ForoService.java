package com.carpinfo.services;

import org.springframework.stereotype.Service;

import com.carpinfo.repositories.MensajesRepo;
import com.carpinfo.repositories.TemasRepo;

@Service
public class ForoService {

	private final TemasRepo temasRepo;
	private final MensajesRepo mensajesRepo;
	public ForoService(TemasRepo tRe, MensajesRepo mRe) {
		this.temasRepo = tRe;
		this.mensajesRepo = mRe;
	}
}
