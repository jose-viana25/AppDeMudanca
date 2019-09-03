package com.springcomajax.dao;

import java.util.ArrayList;
import java.util.List;

import com.springcomajax.entity.Jogo;

public class DaoJogo {
	
	List<Jogo> bdJogo;
	
	public DaoJogo() {
		this.bdJogo = new ArrayList<>();
	}
	
	public void criar(Jogo jogo) {
		
		bdJogo.add(jogo);
		System.out.println(jogo.getNome() + "adicionado" );
		
	}
	
	public Jogo pesquisar(Jogo jogo) {
		
		for (Jogo auxJogo : bdJogo) {
			if (auxJogo.getNome().equals(jogo.getNome())) {
				
				return auxJogo;
				
			}
		}
		
		return null;
		
	}

}
