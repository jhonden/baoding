<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>公司概况 - 陕西宝鼎融资担保有限公司</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/comm/css/common.css">
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
					<li><a title="公司新闻" class="current" href="../company"
						style="z-index: 2;">公司新闻</a></li>
					<li><a title="行业动态" href="../trend" style="z-index: 2;">行业动态</a>
					</li>
					<li><a title="员工风采" href="../staff" style="z-index: 2;">员工风采</a>
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
					<div class="myContent">
						<center>
							<div id="ctl00_ContentPlaceHolder1_about_ctl00_proTit">
								<div
									style="width: 96%; margin-top: 20px; height: 40px; padding-top: 20px; color: Blue; font-size: 18px;">
									<h3>${news.title}</h3>
								</div>
								<br>
							</div>
							<div id="ctl00_ContentPlaceHolder1_about_ctl00_proInfo">
								<span>来源：</span>${news.source}&nbsp; &nbsp; &nbsp; 
								<span>发布时间:</span>${news.publishDate}&nbsp; &nbsp; &nbsp;
								<span>点击率:</span><span id="CCdiv">${news.clickCount}</span>
							</div>
						</center>
						<br>
						<div style="word-break: break-all;">
							${news.content}
						</div>
						<div align="right" style="margin-top: 20px;">
							[<a href="javascript:window.close();">关闭本页</a>]&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>
			<!--right End-->
		</div>
     <%@ include file="../footer.jsp" %>
</div>
    <!--main End-->
	<%@ include file="../float_info.jsp" %>
    
    <script src="<%=request.getContextPath()%>/comm/js/jquery-1.9.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/comm/js/jquery.SuperSlide.2.1.1.js"></script>
    <script src="<%=request.getContextPath()%>/a_about_us/js/about.js"></script>
    <script src="<%=request.getContextPath()%>/comm/js/common.js"></script>
</body>
</html>