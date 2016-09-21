package com.baoding.support.newsCenter.controller;

import java.io.File;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baoding.common.BaseController;
import com.baoding.support.newsCenter.dao.NewsDAO;
import com.baoding.support.newsCenter.entity.CompanyNews;
import com.baoding.support.newsCenter.entity.News;
import com.baoding.util.C;
import com.baoding.util.StringUtil;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController {
	
	private static Logger logger = Logger.getLogger(NewsController.class);
	
	@Resource
	private NewsDAO nDao;
	
	public NewsController() {
		VIEW_PATH = "/b_support/news_center/";
	}
	
	
	@RequestMapping("toAdd")
	public @ResponseBody String add(News news){
		//nDao.add(news);
		String id = StringUtil.dateToString("yyyyMMddHHmmss")+StringUtil.randomCode(4);
		String path = C.resource_company_news_path+id;
		File file = new File(path);
		String flag = "";
		if(file.mkdirs()){
			flag = "0";
		}else{
			flag = "1";
		}
		return ("{'code':'"+flag+"','id':'"+id+"'}");
	}
	
	@RequestMapping("addCompanyNews")
	public @ResponseBody String addCompanyNews(CompanyNews cn){
		cn.setSource(C.news_source);
		nDao.addCompanyNews(cn);
		return SUCCESS;
	}

}
