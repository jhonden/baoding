package com.baoding.anewsCenter.dao.impl;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.baoding.anewsCenter.dao.CompanyNewsDAO;
import com.baoding.anewsCenter.entity.CompanyNews;
import com.baoding.common.BaseDAO;
import com.baoding.common.Page;

@Repository("acompanyNewsDao")
public class CompanyNewsDAOImpl extends BaseDAO implements CompanyNewsDAO {

	public void findByPage(Page page) {
		findByPage(page, getSqlFindByPage(page, "tbl_baoding_company_news ", "order by create_date", "id as id", "title as title","date_format(publish_date,'%Y-%m-%d %T') as publishDate") , 
				getSqlFindRows(page), 
				new BeanPropertyRowMapper<CompanyNews>(CompanyNews.class));
	}
	
	@Override
	protected String getSqlFindRows(Page page) {
		return page.parseCondition("tbl_baoding_company_news", null);
	}

	public CompanyNews load(CompanyNews cnews) {
		String sql = "select id as id,title as title,content as content,source as source,status as status,date_format(publish_date,'%Y-%m-%d %T') as publishDate,is_new as isNew,click_count as clickCount from tbl_baoding_company_news where id = :id";
		return load(cnews, sql);
	}


}
