package com.baoding.abusiIntroduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/busi_introduction/")
public class BusiIntroductionController  extends BaseController{
	public BusiIntroductionController() {
		VIEW_PATH = "a_busi_introduction/";
	}
	
	
}
