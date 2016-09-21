package com.baoding.aspecialFund.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/special_fund/")
public class SpecialFundController  extends BaseController{
	public SpecialFundController() {
		VIEW_PATH = "a_special_fund/";
	}
	
}
