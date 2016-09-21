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
					<h3>业务介绍</h3>
				</div>
				<ul class="left-nav">
					<li><a title="融资担保" href="financial_guarantee"
						style="z-index: 2;">融资担保</a></li>
					<li><a title="诉讼保全" href="preservation_lawsuit"
						style="z-index: 2;">诉讼保全</a></li>
					<li><a title="履约担保" href="performance_guarantee"
						style="z-index: 2;">履约担保</a></li>
					<li><a title="融资咨询" class="current" href="financial_consult"
						style="z-index: 2;">融资咨询</a></li>
				</ul>
            <!--search input-->
	    	<%@ include file="../a_search/input.jsp" %>
	    	<!--search input End-->
			</div>
			<!--left End-->
			<!--right-->
			<div class="right fr">
				<div class="right-top">您当前的位置： 首页 &gt; 业务介绍 &gt; 融资咨询</div>
				<div class="right-cen">
					<table>
						<tbody>
							<tr class="firstRow">
								<td width="1269" valign="top" style="word-break: break-all;"><p
										style="text-indent: 2em;">
										与金融、投资相关的信息，包括经济走势、行业特点、项目情况、财务状况、资产评估、法律文书等内容。</p></td>
								<td width="375" valign="top" style="word-break: break-all;"><script
										id="web_mm" src="../comm/image/6356909993549562258167943.bmp"></script>&nbsp;&nbsp;<img
									src="../comm/image/6356754431623437509268128.jpg" title="" alt=""
									width="300" height="200" border="0" vspace="0"
									style="width: 300px; height: 200px;"></td>
							</tr>
						</tbody>
					</table>
					<p>
						<br>
					</p>
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