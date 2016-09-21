package com.baoding.listener;


import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.baoding.util.C;



@Component
public class InitListener implements ApplicationListener<ContextRefreshedEvent>{
	public void onApplicationEvent(ContextRefreshedEvent e) {
		WebApplicationContext wac = (WebApplicationContext)e.getApplicationContext();
		//存储spring容器引用
		C.wac = wac;
		System.out.println(C.wac);
		//存储配置文件路径
		C.CONF_PATH = wac.getServletContext().getRealPath("/WEB-INF/conf");
		System.out.println("path:"+C.CONF_PATH);
		//初始化log4j路径
		System.setProperty("WORKDIR", wac.getServletContext().getRealPath("/WEB-INF"));
		System.out.println("log4jPath:"+System.getProperty("WORKDIR"));

	}
}
