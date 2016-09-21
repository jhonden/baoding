package com.baoding.abusiApply.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/busi_apply/")
public class BusiApplyController  extends BaseController{
	
	public BusiApplyController() {
		VIEW_PATH = "a_busi_apply/";
	}
}
