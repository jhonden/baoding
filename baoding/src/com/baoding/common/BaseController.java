package com.baoding.common;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class BaseController {
	public static final  String SUCCESS = "0";
	public static final  String ERROR = "-1"; 
	protected String VIEW_PATH = "";
	
	@RequestMapping("/{viewId}")
	public String execute(@PathVariable String viewId){
		if(viewId.contains("@")){
			return VIEW_PATH+viewId.replaceAll("@", "/");
		}
		return VIEW_PATH+viewId;
	}
}
