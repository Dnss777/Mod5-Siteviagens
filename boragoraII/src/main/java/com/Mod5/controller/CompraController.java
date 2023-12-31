package com.Mod5.controller;

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

import com.Mod5.entities.Compra;
import com.Mod5.repositories.ClienteRepository;
import com.Mod5.repositories.CompraRepository;
import com.Mod5.repositories.DestinoRepository;

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
		ModelAndView modelAndView = new ModelAndView("views/compras/index.html");

		modelAndView.addObject("listaCliente", clienteRepository.findAll());
		modelAndView.addObject("listaDestino", destinoRepository.findAll());
		modelAndView.addObject("compras", compraRepository.findAll());
		modelAndView.addObject("compra", new Compra());
		
		return modelAndView;
	}

	@PostMapping("/cadastrar")
	public String cadastrar(@Validated @ModelAttribute("compra") Compra compra, BindingResult result, ModelMap model) {

        if (result.hasErrors()) {
            return "compra";
        }

        model.addAttribute("id_Compra", compra.getId_Compra());
        model.addAttribute("data_Compra", compra.getData_Compra());
        model.addAttribute("total_Compra", compra.getTotal_Compra());
        model.addAttribute("destino", compra.getDestino());
        model.addAttribute("cliente", compra.getCliente());

        compraRepository.save(compra);

		return "redirect:/compra";
	}

	@GetMapping("/{id_Compra}/excluir")
	public String excluir(@PathVariable Long id) {
		compraRepository.deleteById(id);

		return "redirect:/compra";
	}
}









