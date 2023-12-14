package com.Mod5.boraAgora.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Mod5.boraAgora.entities.Cliente;

     @Repository
     public interface ClienteRepository extends JpaRepository<Cliente, Long>
     {
    	 
    	 
     }