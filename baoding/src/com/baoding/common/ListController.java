package com.baoding.common;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baoding.util.C;





import net.sf.json.JSONArray;



/**
 * @description 分页查询action,以json形式返回数据，值为一个json串，{info:{rows:?,pageCount:?},data:[?]} <br/>
 * 在前台通过eval函数处理后, var page = eval("("+jsonData+")");, <br/>
 *  通过page.info.rows获得记录数，<br/>
 *  通过page.info.pageCount获得总页数<br/>
 *  通过page.data获得数据，一个数组<br/>
 * @version  1.0
 * @modifiedBy  clj
 * @modifiedTime 2014/09/05
 *
 */
@Controller
@Scope("prototype")
public class ListController extends BaseController {
	
	@RequestMapping("/query/{fpName}")
	public @ResponseBody String query(@PathVariable String fpName, Page page){
		String jsonData = "";
		try {
			FindPage fp = (FindPage)C.wac.getBean(fpName);
			fp.findByPage(page);
			JSONArray array = JSONArray.fromObject(page.items);
			jsonData = "{info:{rows:"+page.rows+",pageCount:"+page.pageCount+"},data:"+array+"}";
		} catch (Exception e) {
			jsonData= "{info:{rows:0,pageCount:0},data:[]}";
			e.printStackTrace();
		}
		return  jsonData;
	}
}
