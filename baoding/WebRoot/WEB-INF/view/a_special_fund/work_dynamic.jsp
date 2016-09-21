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
					<h3>专项基金</h3>
				</div>
				<ul class="left-nav">
					<li><a title="业务概要" href="busi_overview" style="z-index: 2;">业务概要</a></li>
					<li><a title="工作动态" class="current" href="work_dynamic"
						style="z-index: 2;">工作动态</a></li>
					<li><a title="联系方式" href="contact_way" style="z-index: 2;">联系方式</a></li>
					<li><a title="项目申请" href="apply" style="z-index: 2;">项目申请</a></li>
				</ul>
            <!--search input-->
	    	<%@ include file="../a_search/input.jsp" %>
	    	<!--search input End-->
			</div>
			<!--left End-->
			<!--right-->
			<div class="right fr">
				<div class="right-top">您当前的位置： 首页 &gt; 专项基金 &gt; 工作动态</div>
				<div class="right-cen">

					<div class="com_text">

						<ul class="cont1_ul_news">
							<li>
								<strong>[2016-05-19]</strong>
								<a target="_blank" href="work_dynamic_detail">省发改委关于开展省级担保机构专项建设基金项目担保试点工作的通知</a>
							</li>
						</ul>

						<span id="ctl00_ContentPlaceHolder1_Pager1_pagelab"><div
								class="SplitPage" align="center">
								<span class="pagecount"> 总共1条记录 </span><span class="allpage">
									第1/1页 </span> <a href="index.html">首页</a> <a href="javascript:;">上一页</a>
								<span class="nowpage"> 1 </span> <a href="javascript:;">下一页</a>
								<a href="javascript:;">尾页</a>
							</div> </span>
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