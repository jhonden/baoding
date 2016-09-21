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
					<li><a title="公司新闻" href="company" style="z-index: 2;">公司新闻</a>
					</li>
					<li><a title="行业动态" href="trend" style="z-index: 2;">行业动态</a>
					</li>
					<li><a title="员工风采" class="current" href="staff"
						style="z-index: 2;">员工风采</a></li>
				</ul>
				<!--search input-->
				<%@ include file="../a_search/input.jsp"%>
				<!--search input End-->
			</div>
			<!--left End-->
			<!--right-->
			<div class="right fr">
				<div class="right-top">您当前的位置： 首页 &gt; 新闻中心 &gt; 员工风采</div>
				<div class="right-cen">

					<div class="com_text">

						<ul class="cont1_ul_news">
							<li><strong>[2016-07-13]</strong><a target="_blank"
								href="staff_detail">四川发展担保举办融资担保法律实务讲座</a></li>
						</ul>

						<span id="ctl00_ContentPlaceHolder1_Pager1_pagelab">
							<div class="SplitPage" align="center">
								<span class="pagecount"> 总共8条记录 </span><span class="allpage">
									第1/1页 </span> <a href="index.html">首页</a> <a href="javascript:;">上一页</a>
								<span class="nowpage"> 1 </span> <a href="javascript:;">下一页</a>
								<a href="javascript:;">尾页</a>
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

	<script src="../comm/js/jquery-1.9.1.min.js"></script>
	<script src="../comm/js/jquery.SuperSlide.2.1.1.js"></script>
	<script src="../a_about_us/js/about.js"></script>
	<script src="../comm/js/common.js"></script>
</body>
</html>