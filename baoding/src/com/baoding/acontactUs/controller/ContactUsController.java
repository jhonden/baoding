package com.baoding.acontactUs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/contact_us/")
public class ContactUsController  extends BaseController{
	public ContactUsController() {
		VIEW_PATH = "a_contact_us/";
	}
	
}
