<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
  <head>
    <base id="basePath" href="<%=basePath%>">
    <title>保定金融后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8;IE=EmulateIE9;IE=EmulateIE10;IE=EmulateIE11">
	<link rel="stylesheet" type="text/css" href="b_support/css/index.css">
	<script type="text/javascript" src="comm/js/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/tweenmax/minified/TweenMax.min.js" charset="utf-8"></script>
	<style type="text/css">
		.container{width:100%;height:100%;margin:auto;}
		/*left*/
		.leftsidebar_box{width:auto;height:auto !important;overflow:visible !important;height:100% !important;background-color:#3992d0;}//1C67A8  3992d0 317eb4
		.line{height:2px;width:100%;background-image:url(b_support/images/left/line_bg.png);background-repeat:repeat-x;}
		.leftsidebar_box dt{padding-left:40px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;
							color:#f5f5f5;font-size:16px;position:relative;line-height:48px;cursor:pointer;transition:all 0.4s ease-in;}
		.leftsidebar_box dd{background-color:#1C67A8;}
		.leftsidebar_box dd a{color:#f5f5f5;line-height:35px; display: block; width:100%;padding-left:40px;transition:all 0.2s ease-in;}
		.leftsidebar_box dd a:not(.menu_active):hover{
			background-color: #2176BF;
		}
		.menu_active{
			background-color: #1C5D95;
		}	
		.leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
		.t5news dt{background-image:url(b_support/res/left/t5news.png)}
		.leftsidebar_box dl dd:last-child{padding-bottom:10px;}	
		.leftsidebar_box dt:hover{
			color:#ddd;
		}
	</style>
  </head>
  <body>
  		<div id="menu" class="menu">
<%--  			<img src="web/support/images/logo.png">--%>
			<div class="container">
				<div class="leftsidebar_box">
					<dl class="t5news">
						<dt>新闻录入<img src="b_support/res/left/select_xl01.png"></dt>
						<dd id="defaultItem" class="first_dd"><a href="javascript:;"onclick="linkTo('news/company_list');">公司新闻</a></dd>
						<dd><a href="javascript:linkTo('');">行业动态</a></dd>
						<dd><a href="javascript:linkTo('');">政策法规</a></dd>
						<dd><a href="javascript:linkTo('');">员工风采</a></dd>
					</dl>
				</div>
			</div>
  		</div>	
  		<div id ="content" class="content">
<%--  			<%@ include  file="index_header.jsp" %>--%>
  			<div style="clear:both;"></div>
  			<div style="margin-top:10px;padding:5px; background-color: #fff;">
  				<iframe id="contentFrame"  width="100%" height="780px" frameborder="0" style="background-color: #fff; padding:0px;"></iframe>
  			</div>
  		</div>
  </body>
  <script type="text/javascript">
  		window.onresize = function(e){
  			$("#content").width($(window).width()-$("#menu").width()-21);
  			$("#contentFrame").width($("#content").width()-10);
  		};
  	    $(function(){
  	    	window.onresize();
  	    	$(".leftsidebar_box dd").hide();
			$(".leftsidebar_box dt").click(function(){
				$(".leftsidebar_box dt").css({"background-color":"#3992d0"});
				$(this).css({"background-color": "#317eb4"});
				$(this).parent().find('dd').removeClass("menu_chioce");
				var img = $(this).parent().find('img').eq(0);
				var src = img.attr("src");
				$(".leftsidebar_box dt img").attr("src","b_support/res/left/select_xl01.png");
				if(src != 'b_support/images/left/select_xl.png'){
					img.attr("src","b_support/res/left/select_xl.png");
				}
				$(".menu_chioce").slideUp(); 
				$(this).parent().find('dd').slideToggle();
				$(this).parent().find('dd').addClass("menu_chioce");
			});
			$(".leftsidebar_box dd a").click(function(){
				$(".leftsidebar_box dd a").removeClass("menu_active");
				$(this).addClass("menu_active");
			});
			$("#defaultItem").find('a').click().end().prev().click();
  	    });
  	    
  	    function linkTo(url){
  	    	$("#contentFrame").attr("src",url);
  	    }
  	    
   </script>
</html>
