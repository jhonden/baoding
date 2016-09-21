<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>公司概况 - 陕西宝鼎融资担保有限公司</title>
<link rel="stylesheet" href="../comm/css/common.css">
</head>
<body>
	<div class="main">
		<!--top-->
		<%@ include file="../header.jsp"%>
		<!--top End-->
		<!--banner-->
		<%@ include file="../binner.jsp"%>
		<!--banner End-->
		<!--main-->
		<div class="ab-main clearfix">
			<!--left-->
			<div class="left fl">
				<div class="newsTit clearfix">
					<h3>新闻中心</h3>
				</div>
				<ul class="left-nav">
					<li><a title="公司新闻" class="current" href="company"
						style="z-index: 2;">公司新闻</a></li>
					<li><a title="行业动态" href="trend" style="z-index: 2;">行业动态</a>
					</li>
					<li><a title="员工风采" href="staff" style="z-index: 2;">员工风采</a>
					</li>
				</ul>
				<!--search input-->
				<%@ include file="../a_search/input.jsp"%>
				<!--search input End-->
			</div>
			<!--left End-->
			<!--right-->
			<div class="right fr">
				<div class="right-top">您当前的位置： 首页 &gt; 新闻中心 &gt; 公司新闻</div>
				<div class="right-cen">

					<div class="com_text">

						<ul class="cont1_ul_news" id="newsListContainer">
							<li>
								<strong>[2016-08-29]</strong>
								<a target="_blank" href="company_detail">关于四川发展融资担保股份有限公司公证机构入围比选公告</a>
							</li>
						</ul>
						<span id="ctl00_ContentPlaceHolder1_Pager1_pagelab">
							<div id="pageLabelContainer" class="SplitPage" align="center">
								<span class="pagecount"> 总共60条记录 </span><span class="allpage">
									第1/6页 </span> <a href="index.html">首页</a> <a href="javascript:;">上一页</a>
								<span class="nowpage"> 1 </span> <a href="javascript:;"> 2 </a>
								<a href="javascript:;"> 3 </a> <a href="javascript:;"> 4 </a> <a
									href="javascript:;"> 5 </a> <a href="javascript:;"> 6 </a> <a
									href="javascript:;">下一页</a> <a href="javascript:;">尾页</a>
							</div> 
						</span>
					</div>
				</div>
			</div>
			<!--right End-->
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
	<!--main End-->
	<%@ include file="../float_info.jsp"%>
	<div style="display:none">
		<ul id="newsItermTmp">
			<li>
				<strong>[{publishDate}]</strong>
				<a target="_blank" href="company_detail/{id}">{title}</a>
			</li>
		</ul>
		<div id="pageLabelTmp">
			<span class="pagecount"> 总共{rows}条记录 </span>
			<span class="allpage">第{pageId}/{pageCount}页 </span> 
			<a href="javascript:newsPage.firstPage();">首页</a> 
			<a href="javascript:newsPage.prePage();">上一页</a>
			{pageLabels}
			<a href="javascript:newsPage.nextPage();">下一页</a> 
			<a href="javascript:newsPage.lastPage();">尾页</a>
		</div> 
	</div>
	<script src="../comm/js/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script src="../comm/js/jquery.SuperSlide.2.1.1.js" charset="utf-8"></script>
	<script src="../a_about_us/js/about.js" charset="utf-8"></script>
	<script src="../comm/js/common.js" charset="utf-8"></script>
	<script type="text/javascript" src="../comm/js/page.js" charset="utf-8"></script>
	<script type="text/javascript" charset="utf-8">
		var template = {};
		$(function(){
			template.newsItermTmp = $("#newsItermTmp").html();
			template.pageLabelTmp = $("#pageLabelTmp").html();
			
			/**
			 * 初始化page
			 */
			window.newsPage  = new Page({
				url : '../query/acompanyNewsDao',
				pageId : '1',
				pageSize : '3',
				conditions : "",
				containerId : 'newsListContainer',
				mapRow : function(obj, rowid, pageid) {
					html = template.newsItermTmp
					           .replace(/\{id\}/g,obj.id)
							   .replace(/\{title\}/g,obj.title)
					           .replace(/\{publishDate\}/g,obj.publishDate)
					           ;
					return html;
				},
				after : function(page) {
					var html = [];
					for(var i=1; i<=page.getPageCount(); i++){
						if(i==page.getPageId()){
							html.push("<span class='nowpage'> "+i+" </span>");
						}else{
							html.push("<a href='javascript:newsPage.goPage("+i+");'> "+i+"</a>");
						}
					}
					var result = template.pageLabelTmp
									     .replace(/\{rows\}/g,page.getRows())
									     .replace(/\{pageId\}/g,page.getPageId())
									     .replace(/\{pageCount\}/g,page.getPageCount())
									     .replace(/\{pageLabels\}/g,html.join(""))
									     ;
					$("#pageLabelContainer").html(result);
					
				}
			}).init();
		});
	</script>
</body>
</html>