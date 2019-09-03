package com.springcomajax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerPrincipal {

	@RequestMapping(value="/")
	public String chamarIndex() {
		
		return "index";
		
	}
	
}
