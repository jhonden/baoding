package com.baoding.anewsCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.anewsCenter.dao.CompanyNewsDAO;
import com.baoding.anewsCenter.entity.CompanyNews;
import com.baoding.common.BaseController;


@Controller
@RequestMapping("/news_center/")
public class NewsCenterController  extends BaseController{
	@Autowired
	private CompanyNewsDAO acompanyNewsDao;

	public NewsCenterController() {
		VIEW_PATH = "a_news_center/";
	}
	
	@RequestMapping("/company_detail/{newsId}")
	public String load(@PathVariable String newsId, Model model){
		CompanyNews cnews = acompanyNewsDao.load(new CompanyNews(newsId));
		model.addAttribute("news", cnews);
		return VIEW_PATH+"company_detail";
	}
}
