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
					<h3>联系我们</h3>
				</div>
				<ul class="left-nav">
					<li><a title="联系方式" href="way" style="z-index: 2;">联系方式</a></li>
					<li><a title="举报信箱" class="current" href="mailbox"
						style="z-index: 2;">举报信箱</a></li>
				</ul>



            <!--search input-->
	    	<%@ include file="../a_search/input.jsp" %>
	    	<!--search input End-->
			</div>
			<!--left End-->
			<!--right-->
			<div class="right fr">
				<div class="right-top">您当前的位置： 首页 &gt; 联系我们 &gt; 举报信箱</div>
				<div class="right-cen">
					<p>举报电话：028-83168979</p>
					<p>举报信箱：jubao@scfzdb.com.cn</p>
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