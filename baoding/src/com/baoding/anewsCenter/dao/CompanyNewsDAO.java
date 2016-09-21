package com.baoding.anewsCenter.dao;

import com.baoding.anewsCenter.entity.CompanyNews;
import com.baoding.common.FindPage;

public interface CompanyNewsDAO extends FindPage {
	
	/**
	 * 根据ID查询信息明细
	 * @param cnews
	 * @return
	 */
	public CompanyNews load(CompanyNews cnews);

}
