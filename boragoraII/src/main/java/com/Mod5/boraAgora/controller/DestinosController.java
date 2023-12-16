package com.Mod5.boraAgora.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Mod5.boraAgora.entities.Destinos;
import com.Mod5.boraAgora.repositories.DestinoRepository;


@Controller
@RequestMapping("/destinos")
public class DestinosController {
	
	@Autowired
	private DestinoRepository destinoRepository;
	
	
	@GetMapping
	public ModelAndView destinos() {
		ModelAndView modelAndView = new ModelAndView("Destino/list.html");
		List<Destinos> destinos = destinoRepository.findAll();
		modelAndView.addObject("destinos", destinos);
		return modelAndView;
	}

	@GetMapping("/cadastrar")
	public ModelAndView cadastrar() {
		ModelAndView modelAndView = new ModelAndView("Destino/form.html");
		modelAndView.addObject("destino", new Destinos());
		return modelAndView;
	}

	@PostMapping({"/cadastrar", "/{id}/editar"})
	public ModelAndView cadastrar(Destinos destino) {
		ModelAndView modelAndView = new ModelAndView("redirect:/destino");
		destinoRepository.save(destino);
		return modelAndView;
	}

	@GetMapping("/{id}/excluir")
	public ModelAndView excluir(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView("redirect:/destino");
		destinoRepository.deleteById(id);
		return modelAndView;
	}
}