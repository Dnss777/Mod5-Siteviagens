package com.Mod5.boraAgora.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Mod5.boraAgora.entities.Compra;
import com.Mod5.boraAgora.repositories.ClienteRepository;
import com.Mod5.boraAgora.repositories.CompraRepository;
import com.Mod5.boraAgora.repositories.DestinoRepository;

@Controller
@RequestMapping("/compra")
public class CompraController {
        
	@Autowired
	private CompraRepository compraRepository;
    @Autowired
    private ClienteRepository clienteRepository;
    @Autowired
    private DestinoRepository destinoRepository;

	@GetMapping
	public ModelAndView compra() {
		ModelAndView modelAndView = new ModelAndView("compra/list");

		modelAndView.addObject("listaCliente", clienteRepository.findAll());
		modelAndView.addObject("listaDestino", destinoRepository.findAll());
		modelAndView.addObject("compra", compraRepository.findAll());
		modelAndView.addObject("compra", new Compra());
		
		return modelAndView;
	}
	
	
	@GetMapping("/cadastrar")
	public ModelAndView cadastrar() {
		ModelAndView modelAndView = new ModelAndView("compra/form");

		modelAndView.addObject("listaCliente", clienteRepository.findAll());
		modelAndView.addObject("listaDestino", destinoRepository.findAll());
		modelAndView.addObject("compra", new Compra());
		
		return modelAndView;
	}

	@PostMapping("/cadastrar")
	public ModelAndView cadastrar(@Validated @ModelAttribute("compra") Compra compra, BindingResult result, ModelMap model) {
	    if (result.hasErrors()) {
	        ModelAndView modelAndView = new ModelAndView("Compra/form"); // O nome do seu formulário HTML
	        modelAndView.addObject("listaCliente", clienteRepository.findAll());
	        modelAndView.addObject("listaDestino", destinoRepository.findAll());
	        return modelAndView;
	    }

	    model.addAttribute("id", compra.getId());
	    model.addAttribute("data", compra.getData());
	    model.addAttribute("total", compra.getTotal());
	    model.addAttribute("destino", compra.getDestino());
	    model.addAttribute("cliente", compra.getCliente());

	    compraRepository.save(compra);

	    ModelAndView modelAndView = new ModelAndView("redirect:/compra"); // Alterado para redirecionar para /compra
	    return modelAndView;
	}



	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		compraRepository.deleteById(id);

		return "redirect:/compra";
	}
	
	
}









