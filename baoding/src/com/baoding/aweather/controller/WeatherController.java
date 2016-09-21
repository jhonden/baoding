package com.baoding.aweather.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/weather")
public class WeatherController {
	
	@RequestMapping("getWeather")
	public @ResponseBody String getWeather111() throws IOException, DocumentException{
		String cityCode = URLEncoder.encode("西安", "GB2312");
		URL url = new URL("http://php.weather.sina.com.cn/xml.php?city="+cityCode+"&password=DJOYnieT8234jlsK&day=0");
		URLConnection cData = url.openConnection();
		cData.setConnectTimeout(1000);
		try{
			BufferedReader br = new BufferedReader(new InputStreamReader(cData.getInputStream(), "utf-8"));
			StringBuilder sb = new StringBuilder();
			String line = null;
			while((line = br.readLine())!=null)
				sb.append(line);
			String datas = sb.toString();
			
			Document document = DocumentHelper.parseText(datas);
			Element rootNode = document.getRootElement();
			Element weatherNode = rootNode.element("Weather");
			Element pngNode = weatherNode.element("figure1");
			Element dNode = weatherNode.element("direction1");
			Element powerNode = weatherNode.element("power1");
			Element t1Node = weatherNode.element("temperature1");
			Element t2Node = weatherNode.element("temperature2");
			return ("{'png':'"+pngNode.getText().trim()+"','direction':'"+dNode.getText().trim()+"','power':'"+powerNode.getText().trim()+"','temperature1':'"+t1Node.getText().trim()+"','temperature2':'"+t2Node.getText().trim()+"'}");
			
		}catch(SocketTimeoutException e){
			System.out.println("连接超时 ");
		}
		return "";
	}
	
	public static void main(String[] args) throws Exception {
		String cityCode = URLEncoder.encode("西安", "GB2312");
		URL url = new URL("http://php.weather.sina.com.cn/xml.php?city="+cityCode+"&password=DJOYnieT8234jlsK&day=0");
		System.out.println(url);
	}

}
