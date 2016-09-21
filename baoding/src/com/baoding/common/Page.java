package com.baoding.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.baoding.util.StringUtil;



public class Page {
	public int pageId=1;
	public int pageSize=10;
	public int pageCount;//总页数
	public int rows;//总行数
	public int startIndex;
	public int endIndex;
	public Map<String,String> condition = new HashMap<String,String>();
	public List<?> items;

	
	public Page clone(){
		Page page = new Page();
		page.setPageId(pageId);
		page.setPageSize(pageSize);
		page.setRows(rows);
		page.setPageCount(pageCount);
		page.setStartIndex(startIndex);
		page.setEndIndex(endIndex);
		page.setCondition(condition);
		page.setItems(items);
		return page;
	}
	
	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPageId() {
		return pageId;
	}
	
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getStartIndex() {
		//return (pageId - 1) * pageSize + 1;
		return (pageId - 1) * pageSize ;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getEndIndex() {
		//return pageId * pageSize ;
		return  pageSize ;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public  void toPageCount( int rows){
		if(pageSize != 0){
			if (rows % pageSize == 0) {
				this.pageCount = rows / pageSize;
			} else {
				this.pageCount = rows / pageSize + 1;
			}
		}
	}
	
	public String get(String key){
		return condition.get(key);
	}
	
	public void put(String key, String value){
		condition.put(key, value);
	}
	
	public void putLike(String key){
		 put("like"+key, "%"+get(key)+"%");
	}
	
	public boolean isEmpty(String key){
		String val = get(key);
		return null == val || "".equals(val.trim())|| "null".equals(val.trim())|| "nl".equals(val.trim());
	}
	
	/**
	 * colum1@type1@key1 & colum2@type2@key2 & colum3@type3@key3....
	 * @param req
	 * @return
	 */
	public String parseCondition(String table , String req){
		StringBuilder buf = new StringBuilder(" select count(1) from "+table+" where 1=1 ");
		if(req == null )
			return buf.toString();
		
		String[] conds = req.split("&");
		for(String con : conds){
			if(con.indexOf("@") == -1){
				buf.append(" and  ").append(con);
				continue;
			}
			String[] colKeyType = con.split("@");
			String col = colKeyType[0];
			String type = colKeyType[1];
			String key = colKeyType[2].trim();
			if(!isEmpty(key)){
				if("like".equals(type)){
						putLike(key);
						buf.append(" and  ").append(col).append(" like  :like").append(key);
				}else{
						buf.append(" and  ").append(col).append(type).append("  :").append(key);
				}
			}
		}
		return buf.toString();
	}
	
	/**
	 * colum1:type1:f({#key1}) & colum2:type2:f({#key2}) ....
	 * @param req
	 * @return
	 */
	public String parseConditionS(String table , String req){
		StringBuilder buf = new StringBuilder(" select count(1) from "+table+" where 1=1 ");
		if(req == null )
			return buf.toString();
		
		String[] conds = req.split("&");
		for(String con : conds){
			if(con.indexOf("@") == -1){
				buf.append(" and  ").append(con);
				continue;
			}
			String[] colKeyType = con.trim().split("@");
			String col = colKeyType[0];
			String type = colKeyType[1];
			String keyExpress = colKeyType[2];
			String keyReg = StringUtil.findFirstSubstr(keyExpress, "\\{#[\\w]+\\}");
			String key = keyReg.substring(2, keyReg.length()-1);
			if(keyReg != null){
				if(!isEmpty(key)){
					if("like".equals(type)){
						putLike(key);
						keyExpress = keyExpress.replaceAll("\\{#[\\w]+\\}", " :like"+key);
					}else{
						keyExpress = keyExpress.replaceAll("\\{#[\\w]+\\}", " :"+key);
					}
					buf.append(" and  ").append(col).append(" "+type+" ").append(keyExpress);
				}
			}else{
				buf.append(" and  ").append(col).append(" "+type+" ").append(keyExpress);
			}
		}
		return buf.toString();
	}
	
	public List<?> getItems() {
		return items;
	}

	public void setItems(List<?> items) {
		this.items = items;
	}

	public Map<String, String> getCondition() {
		return condition;
	}

	public void setCondition(Map<String, String> condition) {
		this.condition = condition;
	}
}
