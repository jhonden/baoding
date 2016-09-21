<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base id="basePath" href="<%=basePath%>">
    <title>宝鼎金融后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8;IE=EmulateIE9;IE=EmulateIE10;IE=EmulateIE11">
	<link rel="stylesheet" type="text/css" href="b_support/css/comm.css">
	<link rel="stylesheet" type="text/css" href="b_support/css/selector.css">
	<link rel="stylesheet" type="text/css" href="b_support/css/match_list.css">
	<link rel="stylesheet" href="comm/js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="comm/js/kindeditor/plugins/code/prettify.css" />
	<link rel="stylesheet" type="text/css" href="comm/js/Semantic-UI-master/dist/semantic.min.css">
<!-- 	<link rel="stylesheet" media="screen and (max-width:1245px)" type="text/css" href="web/applications/favorable/css/960/index.css"> -->
	<script type="text/javascript" src="comm/js/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/tweenmax/minified/TweenMax.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/comm.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/page.js" charset="utf-8"></script>
<!-- 	<script type="text/javascript" src="comm/js/fileUpload.js" charset="utf-8"></script> -->
    <script src="comm/js/Semantic-UI-master/dist/semantic.min.js"></script>
    <script src="comm/js/Semantic-UI-master/jquery.address.min.js"></script>
	<script charset="utf-8" src="comm/js/kindeditor/kindeditor-min.js"></script>
	<script charset="utf-8" src="comm/js/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="comm/js/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript" src="b_support/js/news_list.js" charset="utf-8"></script>
	
	<style type="text/css">
		.input_group{
			height:37px;
			margin-left:10px;
		}
		.input_group .select{
			border-color:transparent;
			display: inline-block;
		}
		
		.input_group .select .option{
			width:198px;
		}
		
		.input_group .select .option-last{
			border-bottom:1px solid #D9E1EE;
		}
		
		.input_group input{
			height:35px;
			width:200px;
		}
		#newsListContainer td{
			width:14%;
		}
		#newsListContainer td:first-child{
			width:8%;
		}
/* 		#newsListContainer td:nth-child(4){ */
/* 			text-align: left; */
/* 			padding-left:30px; */
/* 		} */
		#newsListContainer td:last-child{
			width:30%;
			text-align: center;
		}
		.circle{
			border-radius:16px;width:16px;height:16px;background-color:red;display: inline-block;
			color:#fff;
			font-size:10px;
			line-height: 16px;
			text-align: center;
		}
		#newsListContainer .action_btn{
			display:inline-block;
			width:85px;
			margin-left:0px;
			margin-right:0px;
			text-align: left;
		}
		.news_logo{
			height:40px;
		}
	</style>
    <!--[if lt IE 9]>
      <link rel="stylesheet"  type="text/css" href="web/applications/favorable/css/960/index.css">
 	<![endif]-->
  </head>
  <body>
  		<div class="header">
  			<label>当前位置</label><label>:</label><span>新闻管理</span><label>></label><span>公司新闻</span>
  		</div>
  		<div class="action">
<%--  			<form id="newsListForm" class="search_form">--%>
<%--  					<label>创建时间 </label>--%>
<%--		  			<div class="input_group">--%>
<%--		  				<label>从 </label>--%>
<%--		  				<input name="page.condition['begin']" onfocus="WdatePicker({skin:'ext',readOnly:false,dateFmt:'yyyy-MM-dd HH:mm'});"/>--%>
<%--		  			</div>--%>
<%--		  			<div class="input_group">--%>
<%--		  				<label>至</label>--%>
<%--		  				<input name="page.condition['end']"  onfocus="WdatePicker({skin:'ext',readOnly:false,dateFmt:'yyyy-MM-dd HH:mm'});"/>--%>
<%--		  			</div>--%>
<%--	  			<a class="search_button" href="javascript:search();">搜索</a>--%>
<%--  			</form>--%>
  			<a class="add_action" href="javascript:toAdd();"><img src="b_support/res/add.png"> 添加时讯</a>
  		</div>
  		<div class="result_list">
  			<table class="list_table" cellpadding="0" cellspacing="0">
  				<thead>
  					<tr id="newsListHeader">
  						<td>时讯标题</td><td>创建时间</td><td>时讯状态</td><td>操作</td>
  					</tr>
  				</thead>
  				<tbody id="newsListContainer">
  				</tbody>
  			</table>
<%--  			<ul id="pageItem" class="ui pagination menu page">--%>
<%--  			</ul>--%>
  		</div>
<!--   		编辑添加面板 -->
<%@ include file="company_add.jsp" %>
<!--   		评论列表 -->
<%-- <%@ include file="comment_list.jsp" %> --%>
<!-- 模板 -->
  		<div style="display:none">
  			<table >
	  			<tbody id="newsListTmp">
	  				<tr>
						<td>{title}</td>
	  					<td>{createTimeStr}</td>
	  					<td>{publishStatus}</td>
	  					<td>
	  						<a class="action_btn" onclick="toEdit('{id}','{status}')"><img src="b_support/res/edit.png">编辑</a>
	  						<a class="action_btn" onclick="publish('{id}','{status}')"><img src="b_support/res/publish.png">{statusMsg}</a>
	  						<a class="action_btn" onclick="del('{id}','{status}')"><img src="b_support/res/del.png">删除</a>
	  					</td>
		  			</tr>
	  			</tbody>
	  		</table>
  		</div>
  </body>
  <script type="text/javascript" src="comm/js/GSPreloader.js" charset="utf-8"></script>
</html>
