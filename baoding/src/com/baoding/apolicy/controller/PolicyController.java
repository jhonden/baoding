package com.baoding.apolicy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/policy/")
public class PolicyController  extends BaseController{
	
	public PolicyController() {
		VIEW_PATH = "a_policy/";
	}
	
}
