package com.baoding.aaboutUs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/about_us/")
public class AboutUsController extends BaseController{
	public AboutUsController() {
		VIEW_PATH = "a_about_us/";
	}
	
	
}
