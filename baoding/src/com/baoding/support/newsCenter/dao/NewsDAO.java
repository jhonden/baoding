package com.baoding.support.newsCenter.dao;

import com.baoding.common.FindPage;
import com.baoding.support.newsCenter.entity.CompanyNews;
import com.baoding.support.newsCenter.entity.News;

public interface NewsDAO extends FindPage {
	
	//�����������
	public void add(News news);
	
	//��ӹ�˾����
	public void addCompanyNews(CompanyNews cn);

}
