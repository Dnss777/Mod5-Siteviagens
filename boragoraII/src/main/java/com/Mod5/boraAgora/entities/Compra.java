package com.Mod5.boraAgora.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;


@Data
@Entity
@Table(name = "compra")
public class Compra{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String data;
	private Double total;
	
	@ManyToOne
	@JoinColumn(name = "id_cli")
	private Cliente cliente;
	
	@ManyToOne
	@JoinColumn(name = "id_dest")
	private Destinos destino;}




