
package com.Mod5.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name = "destino")
public class Destinos{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_Destino;
	private String data_Destino;
	private String nome_Destino;
	private Double valor_Destino;

}