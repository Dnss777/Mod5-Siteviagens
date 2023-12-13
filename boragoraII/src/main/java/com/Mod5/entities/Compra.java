package com.Mod5.entities;

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
	private Long id_Compra;
	private String data_Compra;
	private Double total_Compra;
	
	@ManyToOne
	@JoinColumn(name = "id_Cliente")
	private Cliente cliente;
	
	@ManyToOne
	@JoinColumn(name = "id_Destino")
	private Destinos destino;}




