package com.baoding.support.newsCenter.dao.impl;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.baoding.common.BaseDAO;
import com.baoding.common.Page;
import com.baoding.support.newsCenter.dao.NewsDAO;
import com.baoding.support.newsCenter.entity.CompanyNews;
import com.baoding.support.newsCenter.entity.News;

@Repository("nDao")
public class NewsDAOImpl extends BaseDAO implements NewsDAO {

	public void findByPage(Page page) {
		findByPage(page, getSqlFindByPage(page, "tbl_baoding_company_news ", "order by create_date", "id as id", "title as title","content as content","source as source","status as status","date_format(create_date,'%Y-%m-%d %T') as createDate","is_new as isNew") , 
				getSqlFindRows(page), 
				new BeanPropertyRowMapper<CompanyNews>(CompanyNews.class));
	}
	
	@Override
	protected String getSqlFindRows(Page page) {
		String sql = "";
		sql = page.parseCondition("tbl_baoding_company_news", "1=1");
		return sql;
	}

	public void add(News news) {
		String sql = "insert into tbl_baoding_company_news(title,sub_title,status,content,create_date,publish_date) values (:title,:subTitle,'0',:content,sysdate(),null)";
		update(news,sql);
	}

	public void addCompanyNews(CompanyNews cn) {
        String sql = "insert into tbl_baoding_company_news(id,title,content,source,status,create_date,publish_date,click_count,is_new) values (:id,:title,:content,:source,'0',sysdate(),null,0,null)";
        update(cn,sql);
	}

}
