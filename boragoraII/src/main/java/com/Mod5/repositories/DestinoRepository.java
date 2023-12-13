package com.Mod5.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Mod5.entities.Destinos;

public interface DestinoRepository extends JpaRepository<Destinos, Long> {
	
}