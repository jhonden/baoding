<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>宝鼎融资</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="comm/css/comm.css">
	<link rel="stylesheet" type="text/css" href="comm/css/business/business.css">
	<script type="text/javascript" src="comm/js/jquery-1.9.1.min.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/page.js" charset="utf-8"></script>
 	<script type="text/javascript" src="comm/js/home/home.js" charset="utf-8"></script>
 	<script type="text/javascript" src="comm/js/business/business.js" charset="utf-8"></script>
  </head>
  
  <body>
<%--   <div class="ui-wrap">--%>
    <!-- 顶部导航 -->
    <div class="ui-header">
      <div class="ui-search">
      </div>
      <div class="ui-nav-box">
        <div class="ui-logo"><img src="comm/image/home/logo_03.png"/></div>
        <div class="ui-nav">
           <ul>
             <li><a href="view/home">网站首页</a></li>
             <li>
               <a>关于我们</a>
               <dl class="nav-top-box">
                 <dd><a href="view/introduce?index=0">公司简介</a></dd>
                 <dd><a href="view/introduce?index=1">企业文化</a></dd>
                 <dd><a href="view/introduce?index=2">企业相册</a></dd>
               </dl>
             </li>
             <li>
               <a>业务介绍</a>
               <dl class="nav-top-box">
                 <dd><a href="view/business?index=0">金融产品担保</a></dd>
                 <dd><a href="view/business?index=1">物流金融担保</a></dd>
                 <dd><a href="view/business?index=2">工程建设类担保</a></dd>
                 <dd><a href="view/business?index=3">政府采购担保</a></dd>
                 <dd><a href="view/business?index=4">诉讼保全担保</a></dd>
                 <dd><a href="view/business?index=5">受托担保</a></dd>
               </dl>
             </li>
             <li>
               <a>业务流程</a>
               <dl class="nav-top-box">
                 <dd><a href="view/process?index=0">业务流程</a></dd>
                 <dd><a href="view/process?index=1">发起流程</a></dd>
                 <dd><a href="view/process?index=2">查询流程</a></dd>
               </dl>
             </li>
             <li>
               <a>新闻动态</a>
               <dl class="nav-top-box">
                 <dd><a href="view/news?index=0">公司新闻</a></dd>
                 <dd><a href="view/news?index=1">行业动态</a></dd>
                 <dd><a href="view/news?index=2">常见问题</a></dd>
               </dl>
             </li>
             <li>
               <a>联系我们</a>
               <dl class="nav-top-box">
                 <dd><a href="view/contact?index=0">联系我们</a></dd>
               </dl>
             </li>
           </ul>
        </div>
      </div>
    </div>
    <!-- 内容 -->
    <div class="ui-content">
       <div class="ui-content-left">
          <ul class="ui-content-left-nav">
            <li><a class="ui-left-nav">公司新闻</a></li>
            <li><a class="ui-left-nav">行业动态</a></li>
            <li><a class="ui-left-nav">常见问题</a></li>
          </ul>
       </div>
       <div class="ui-content-right">
         <ul class="ui-content-right-nav">
           <li>
			   <p>暂无</p>
			 </li>
			 <li>
			   <p>暂无</p>
			 </li>
			 <li>
			   <p>暂无</p>
			 </li>
         </ul>
       </div>
    </div>
    
    <!-- 底部声明 -->
<%--    <div class="ui-business-bottom">--%>
<%--    	<div class="ui-bottom" style="margin-top:20px;">Copyright © 2016 baoding All Right Reserved 陕西宝鼎融资担保有限公司 版权所有 陕ICP备16001295号</div>--%>
<%--    	<div class="ui-bottom">地址：陕西省西安市碑林区长安北路21号 联系电话：15109112319 技术支持：动力无限</div>--%>
<%--    </div>--%>
<%--   </div>--%>
   <!-- 背景 -->
   <div class="ui-layout-bg"><img src="comm/image/business/news-bg.jpg" /></div>
  </body>
</html>
