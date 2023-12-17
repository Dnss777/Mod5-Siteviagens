package com.Mod5.boraAgora.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;




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
	private Destinos destinos;

	public Compra(Long id, String data, Double total, Cliente cliente, Destinos destinos) {
		super();
		this.id = id;
		this.data = data;
		this.total = total;
		this.cliente = cliente;
		this.destinos = destinos;
	}

	public Compra() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Destinos getDestinos() {
		return destinos;
	}

	public void setDestinos(Destinos destinos) {
		this.destinos = destinos;
	}

}
	






