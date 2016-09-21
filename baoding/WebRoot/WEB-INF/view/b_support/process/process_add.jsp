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
	<link rel="stylesheet" type="text/css" href="comm/js/Semantic-UI-master/dist/semantic.min.css">
	<link rel="stylesheet" type="text/css" href="comm/css/process/process.css">
	<script type="text/javascript" src="comm/js/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/tweenmax/minified/TweenMax.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/Semantic-UI-master/jquery.address.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="comm/js/Semantic-UI-master/dist/semantic.min.js" charset="utf-8"></script>
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
                  save(form);
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
     <div class="process_wrap">
	     <!-- 顶部 -->
	     <div class="process_header_bg">
	        <div class="process_header_title">宝鼎投资担保流程</div>
	        <div class="process_header_btn btn_selected">流程查询</div>
	     </div>
	     <!-- 左侧 -->
	     <div class="process_left">
	       <ul>
	          <li class="process_link_selected process_link_first">担保申请</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">担保受理</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">担保业务部实地考察，完成评估报告</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">上报负责人审核</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">出具担保意向函</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">贷款申请审批</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">复审、归档资料</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">到银行签订《保证合同》</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">出具《担保承诺函》</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">领取公证书、发放贷款</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">贷后检查</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">担保到期</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected">担保责任自动解除</li>
	          <li class="process_link_arrow"></li>
	          <li class="process_link_unselected process_link_last">担保公司代偿后制定追偿计划</li>
	       </ul>
	     </div>
	     <!-- 右侧 -->
	     <div class="process_right">
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
	              <div class="process_file_text">提交担保资料:</div>
	              <input name="filename" type="text" readonly="readonly" class="process_file_name" style="width:200px;float:left;margin-right:20px;">
	              <a href="" class="a-upload">
	                <input type="file" name="file" id="">点击上传文件
	              </a>
	           </div>
	           <div class="ui blue submit button" style="margin-top:10px;">提交</div>
	           <div class="ui error message"></div>
	        </form>     
	     </div>
     </div>
  </body>
</html>
