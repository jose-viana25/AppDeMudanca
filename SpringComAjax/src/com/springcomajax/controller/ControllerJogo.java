package com.springcomajax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcomajax.dao.DaoJogo;
import com.springcomajax.entity.Jogo;

@Controller
@RequestMapping(value="/jogo")
public class ControllerJogo {
//SpringComAjax/
	
	@RequestMapping(value= {"","/"}, method=RequestMethod.POST)
	public void criarJogo(@RequestBody Jogo jogo) {
		
		BoAjax name = new BoAjax();
		
		BoAjax.criarJogo()
		
	}
	
	@RequestMapping(value= {"","/","/{id}"}, method=RequestMethod.GET)
	public Jogo pesquisarJogo(Jogo jogo) {
		
		DaoJogo daoJogo = new DaoJogo();
		
		return daoJogo.pesquisar(jogo);
		
	}
	
	@RequestMapping(value= {"/{id}"}, method=RequestMethod.GET)
	public Jogo pesquisarJogo(int id) {
		
		DaoJogo daoJogo = new DaoJogo();
		
		return daoJogo.pesquisar(jogo);
		
	}
	
}
