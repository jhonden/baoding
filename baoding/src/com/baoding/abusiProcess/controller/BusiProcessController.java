package com.baoding.abusiProcess.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/busi_process/")
public class BusiProcessController  extends BaseController{

	public BusiProcessController() {
		VIEW_PATH = "a_busi_process/";
	}
}
