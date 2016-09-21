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
	<link rel="stylesheet" type="text/css" href="comm/js/Semantic-UI-master/dist/semantic.min.css">
	<link rel="stylesheet" type="text/css" href="comm/css/process/process.css">
	<link rel="stylesheet" type="text/css" href="comm/css/comm.css">
	<link rel="stylesheet" type="text/css" href="comm/css/business/business.css">
	<script type="text/javascript" src="comm/js/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/tweenmax/minified/TweenMax.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/Semantic-UI-master/jquery.address.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/Semantic-UI-master/dist/semantic.min.js" charset="utf-8"></script>
 	<script type="text/javascript" src="comm/js/home/home.js" charset="utf-8"></script>
 	<script type="text/javascript" src="comm/js/business/business.js" charset="utf-8"></script>
 	<script type="text/javascript">
      $(function(){
    	  $('.ui.form').form({
        	  name:{
        	    identifier:'name',
        	    rules:[
        	           {
            	           type:'empty',
            	           prompt:'姓名不能为空'
            	           }
               	    ]
        	  },
        	  mobile:{
            	  identifier:'mobile',
            	  rules:[
            	         {
                           type:'empty',
                           prompt:'联系电话不能为空'
                	         }
                   	  ]
              },
              companyName:{
            	  identifier:'companyName',
            	  rules:[
            	         {
                           type:'empty',
                           prompt:'公司名称不能为空'
                	         }
                   	  ]
              },
              projectName:{
            	  identifier:'projectName',
            	  rules:[
            	         {
                           type:'empty',
                           prompt:'项目名称不能为空'
                	         }
                   	  ]
              },
              filename:{
            	  identifier:'filename',
            	  rules:[
            	         {
                           type:'empty',
                           prompt:'请选择上传文件'
                	         }
                   	  ]
              }
          },{
              onValid:function(){
             },
              onSuccess:function(){
                  var form = $(this).serialize();
                  //save(form);
                  //$('#addForm').submit();
              }
            });
          $(".a-upload").on("change","input[type='file']",function(){
             var filePath = $(this).val();
             var arr = filePath.split('\\');
             var fileName = arr[arr.length - 1];
             $('.process_file_name').val(fileName);
          });
      });

      function save(form){
          $.ajax({
              cache:true,              
              url:"process/addCompany",
              method:'post',
              data:form,
              success:function(msg){  
                  
              }
          });
      }
      
    </script>
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
            <li><a class="ui-left-nav">业务流程</a></li>
            <li><a class="ui-content-left-haschild">发起流程</a></li>
            <li><a class="ui-content-left-haschild">查询流程</a></li>
          </ul>
       </div>
       <div class="ui-content-right">
         <ul class="ui-content-right-nav">
            <li><img src="comm/image/business/process.png" /></li>
            <li style="text-indent:0;">
              <form id="addForm" action="/baoding/process/addCompany" method="post" class="ui form segment" enctype="multipart/form-data">
                 <div class="two fields">
	              <div class="field">
	                 <label class="ui label">姓名</label>
	                 <input placeholder="姓名" name="name" type="text">
	              </div>
	              <div class="field">
	                 <label class="ui label">性别</label>
	                 <select name="sex" class="ui search dropdown">
	                    <option value="0">男</option>
	                    <option value="1">女</option>
	                 </select>
	              </div>
	           </div>
	           <div class="two fields">
	              <div class="field">
	                 <label class="ui label">联系电话</label>
	                 <input placeholder="联系电话" name="mobile" type="text">
	              </div>
	              <div class="field">
	                 <label class="ui label">公司名称</label>
	                 <input placeholder="公司名称" name="companyName" type="text">
	              </div>
	           </div>
	           <div class="field">
	               <label class="ui label">项目名称</label>
	               <input placeholder="项目名称" name="projectName" type="text">
	           </div>
	           <div class="process_file_up">
	              <div class="process_file_text">点击下载担保资料:</div>
	              <a href="./process/download" class="process_file_download_text">《委托担保申请表》.doc</a>
	           </div>
	           <div class="process_file_up">
	              <div class="process_file_text">提交担保资料:</div>
	              <input name="filename" type="text" readonly="readonly" class="process_file_name" style="width:200px;float:left;margin-right:20px;">
	              <a href="" class="a-upload">
	                <input type="file" name="file" id="">点击上传文件
	              </a>
	           </div>
	           <div class="ui blue submit button" style="margin-top:10px;">提交</div>
<%--	           <div class="ui error message"></div>--%>
              </form>
            </li>
            <li style="text-indent:0;"> 
              <div class="action">
                <form id="searchForm" class="ui grid form">
                   <div class="five wide column">
                     <div class="ui labeled action input">
                        <div style="float:left;" class="ui label">电话号码</div>
                        <input type="text" name="condition['mobile']" placeholder="号码"/>
                        <div class="ui icon button">
                           <i class="search icon"></i>
                        </div>
                     </div>
                   </div>
                </form>
              </div>
              <div class="ui divider"></div>
              <div class="result_list">
  				<table class="ui celled table">
	  				<thead>
	  					<tr id="mListHeader"><th>公司名称</th><th>联系人</th><th>联系电话</th><th>项目名称</th></tr>
	  				</thead>
  					<tbody id="listContainer">
  					    <tr><td>宝鼎金控</td><td>张三</td><td>130********</td><td>为***项目融资</td></tr>
  					    <tr><td>宝鼎金控</td><td>张三</td><td>130********</td><td>为***项目融资</td></tr>
  					    <tr><td>宝鼎金控</td><td>张三</td><td>130********</td><td>为***项目融资</td></tr>
  					</tbody>
  			    </table>
  			    <div id="pageItem" class="ui pagination menu"></div>
  		      </div>
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
<!-- 回到顶部 -->
   <div class="zhiding" onclick="zhiding()"><img src="comm/image/business/top.png" /></div>
   <!-- 背景 -->
   <div class="ui-layout-bg"><img src="comm/image/business/process-bg.jpg" /></div>
  </body>
</html>
