package com.Mod5.boraAgora.controller;

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
@RequestMapping("/destino")
public class DestinosController {
	
	@Autowired
	private DestinoRepository DestinoRepository;

	@GetMapping
	public ModelAndView destino() {
		ModelAndView modelAndView = new ModelAndView("views/destino/index.html");
		modelAndView.addObject("destino", DestinoRepository.findAll());

		modelAndView.addObject("destino", new Destinos());

		return modelAndView;
	}

	@PostMapping("/cadastrar")
	public String cadastrar(Destinos destino) {
		DestinoRepository.save(destino);

		return "redirect:/destino";
	}

	@GetMapping("/{idDest}/excluir")
	public String excluir(@PathVariable Long id) {
		DestinoRepository.deleteById(id);

		return "redirect:/destino";
	}

}
	