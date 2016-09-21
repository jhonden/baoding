function Page(o){
	var moreType = o.moreType?o.moreType:'replace';
	var pageId = o.pageId?parseInt(o.pageId):1;
	var pageSize = o.pageSize ? o.pageSize : 10;
	var containerId = o.containerId;
	var url = o.url;
	var conditions = o.conditions?o.conditions:'';
	var mapRow = o.mapRow?o.mapRow:function(){};
	var before = o.before?o.before:function(){};
	var checkR = o.checkR?o.checkR:function(result){return true};
	var after = o.after?o.after:function(){};
	var page = {};
	this.minPage = 1;
	this.maxPage = 1;
	var context = this;
	
	/**
	 * 内部请求数据的核心方法
	 */
	function getData(){
		//执行before
		before();
		//发送ajax请求数据
		$.ajax({
			url:url,
			type:'post',
			data:"pageId="+pageId+"&pageSize="+pageSize+conditions,
			success:function(msg){
				if(!checkR(msg))return;
				page = eval("("+msg+")");
				var rows = "";
				for(var i=0, len=page.data.length; i<len; i++){
					var rowid = (pageId-1)*pageSize+i;
					rows+=mapRow(page.data[i],rowid,i);
				}
				if(moreType == "append"){
					$("#"+containerId).append(rows);
				}else{
					$("#"+containerId).html(rows);
				}
				after(context);
			},
			error:function(){
				//alert("系统繁忙");
			}
		});
	};
	
	/**
	 * 初始化数据
	 */
	this.init = function(){
		getData();
		return this;
	};
	
	/**
	 * 获得页码
	 */
	this.getPageId = function(){
		return pageId;
	};
	
	this.setPageId = function(id){
		pageId = id;
	};
	
	this.setPageSize = function(size){
		pageSize = size;
	};
	
	/**
	 * 获得总页数
	 */
	this.getPageCount = function(){
		return page.info.pageCount;
	};
	
	/**
	 * 设置分页查询条件
	 */
	this.setConditions = function(c){
		conditions = c;
		return this;
	};
	
	/**
	 * 获得总行数
	 */
	this.getRows = function(){
		return page.info.rows;
	};
	
	/**
	 * 获得该页数据
	 */
	this.getDatas = function(){
		return page.data;
	};
	
	/**
	 * 获得该页的第i条记录数据
	 */
	this.getDataByIndex = function(i){
		return page.data[i];
	};
	
	/**
	 * 跳页
	 */
	this.goPage = function(go){
		if(go == 1){
			pageId = go;
			getData();
		}else if(go > 1 && go <= page.info.pageCount){
			pageId = go;
			getData();
		}
		return this;
	};
	
	/**
	 * 下一页
	 */
	this.nextPage = function(){
		if(pageId+1 <= page.info.pageCount){
			pageId = pageId+1;
			getData();
		}
		return this;
	};
	
	/**
	 * 上一页
	 */
	this.prePage = function(){
		if(pageId - 1 >= 1){
			pageId = pageId-1;
			getData();
		}
		return this;
	};
	
	/**
	 * 刷新当前页
	 */
	this.refreshPage = function(){
		getData();
		return this;
	};
	
	/**
	 * 首页
	 */
	this.firstPage = function(flag){
		if(flag==true || pageId != 1){
			pageId = 1;
			getData();
		}
		return this;
	};
	
	/**
	 * 末页
	 */
	this.lastPage = function(flag){
		if(flag==true || pageId != page.info.pageCount){
			pageId=page.info.pageCount;
			getData();
		}
		return this;
	};
};
	
