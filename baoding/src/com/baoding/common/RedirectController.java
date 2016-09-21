package com.baoding.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectController {
	
	@RequestMapping("/view/{viewId}")
	public String execute(@PathVariable String viewId){
		if(viewId.contains("@")){
			return viewId.replaceAll("@", "/");
		}
		return viewId;
	}

}
 