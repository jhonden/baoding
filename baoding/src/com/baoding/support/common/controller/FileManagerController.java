package com.baoding.support.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manager")
public class FileManagerController {
	
	@RequestMapping("main")
	public String FileManagerMain(){
		System.out.println("manager");
		return "";
	}

}
