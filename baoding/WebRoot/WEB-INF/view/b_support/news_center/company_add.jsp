<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
.clear_fix{
	clear:both;
}
.float_left{
	float:left;
}
.hidden{
	display: none;
}
 .add_modify_panel{
	float:left;
	border-radius:3px;
	box-shadow:0 0 10px #aaa;
	position:absolute;
	background-color: #fff;
	padding:10px 20px;
	width:700px;
	visibility:hidden
}

 .m_header{
	line-height: 30px;
	border-bottom: 1px solid #DCDCDC;
	margin-bottom:10px;
}

 .m_header label{
	line-height: 50px;
	font-weight: bold;
}

 .m_header img{
	float:right;
	cursor:pointer;
	margin-top:9px;
}

 .m_form{
	margin-top:20px;
	font-family: 'Microsoft YaHei';
	color:#8A8A8A;
}

 .m_form input{
	border:1px solid #ccc;
	border-radius:4px;
	width:200px;
	height:30px;
	text-indent: 5px;
}

 .modify_action{
	text-align: center;
	padding:20px 0;
}

 .modify_action .yes-btn{
	width:auto;
	padding:7px 90px;
	border-radius:3px;
	margin-top:10px;
}

.input_wrapper{
	margin:20px 0;
	color:#9F9F9F;
}

.input_wrapper .input_label{
	margin-right:20px;
	text-align: right;
}

.input_wrapper .select{
	border:1px solid #D6D6D6;
}

.input_wrapper .text_input{
	height:25px;
	width:200px;
	border:1px solid #D6D6D6;
}


/*********************************/
 #addTeamImgFrame{
 	position:absolute;
 	z-index:90;
 	background-color: #DFDFDF;
 	border:1px solid #ccc;
 	opacity:0;
 	cursor:pointer;
 	filter:alpha(opacity=0)
 }
 
 #addTeamImgFrame .file{
 	 width:70px;
 	 background-color: #fff;
 }
 
.img_input,.img_wrapper{
	display: inline-block;
}
.img_wrapper{
	width:136px;
	height:98px;
	border:1px solid #D6D6D6;
	float:left;
}
.img_wrapper img{
	width:100%;
	height:100%;
}
.logo_label{
	margin-right:10px;
	height:98px;
	display: inline-block;
	float:left;
}
.up_btn{
	margin-top:69px;
	margin-left:10px;
	display: inline-block;
	padding:4px 5px;
	border:1px solid #D6D6D6;
	cursor:pointer;
}
#addT5Panel .ke-container{
	float:left;
}
.subtitle{
	border:1px solid #D6D6D6;	
}
#addT5Panel .text_input{
	width:300px;
}
.input_disabled{
	text-align: center;
	border:1px solid #ccc;
}
</style>
<div id="addT5Panel" class="add_modify_panel panel">
	<input type="hidden" id="formType" value="add">
	<div class="m_header">
		<label>添加新闻</label>
		<img id="addNewsClosePanel" class="close_btn" src="b_support/res/close.png" />
	</div>
	<form id="newsAddForm" class="result_list">
		
		<div class="input_wrapper">
			<label  class="input_label">新闻ID号&nbsp;&nbsp;&nbsp;</label>
			<input type="text" class="input_disabled" id="newsId" name="id" readonly="readonly"/>
			<span>(该新闻的图片将存放在该ID目录下)</span>
		</div>
		<div class="input_wrapper">
			<label  class="input_label">新闻标题&nbsp;&nbsp;&nbsp;</label>
			<input id="newsTitle" name="title" class="text_input"/>
			<span>不超过13字</span>
		</div>
<%--		<div class="input_wrapper">--%>
<%--			<label  class="input_label float_left">新闻副标题</label>--%>
<%--			<textarea id="newsSubTitle" rows="3" cols="50"  name="subTitle" class="subtitle float_left"></textarea>--%>
<%--			<span>不超过25字</span>--%>
<%--		</div>--%>
		<div class="clear_fix"></div>
<%--		<div class="input_wrapper">--%>
<%--			<label class="logo_label float_left">时讯LOGO&nbsp;&nbsp;</label>--%>
<%--			<div id="imgInput" class="img_input">--%>
<%--				<div id="imgWrapper" class="img_wrapper"></div>--%>
<%--				<a class="up_btn" id="upImg">上传图片</a>--%>
<%--				<span >建议上传 200 x 144, 大小100kb以内</span>--%>
<%--				<input id="newsLogo" name="news.icon" type="hidden"/>--%>
<%--			</div>--%>
<%--		</div>--%>
		<div class="input_wrapper">
			<label class="input_label float_left">新闻内容&nbsp;&nbsp;&nbsp;</label>
			<textarea id="t5Content" class="float_left"  style="width:80%;height:200px;" name="content"></textarea>
		</div>
  	</form>
  	<div class="modify_action">
		<a class="yes-btn" id="saveBtn" href="javascript:;">保存</a>
	</div>
</div>
<div id="addTeamImgFrame" >
 	<iframe id="addImgFrame" name="addImgFrame" class="hidden-frame"></iframe>
 	<form id="addImgForm" action="fileUpload.action?constPath=comm/images/t5/" target="addImgFrame"  enctype="multipart/form-data" method="post">
		<input class="file" type="file" name="imgFile" id="modelFileId"/>
	 </form>
</div>
<script>
	var addPannel = new Panel("addT5Panel");
	var editor;
	$(function(){
		//调整面板位置
		$("#addT5Panel").css({left:$("body").eq(0).width()/2-$("#addT5Panel").width()/2,
								top:$("body").eq(0).height()*0.4/2});
									
		//添加关闭事件						
		$("#addNewsClosePanel").click(function(){addPannel.hide();});
		//图片上传 
		$("#addTeamImgFrame").hide();
		$("#imgInput").hover(function(){
			$("#addTeamImgFrame").css({top:$("#upImg").offset().top,left:$("#upImg").offset().left});
			$("#addTeamImgFrame").show();
		},function(){$("#addTeamImgFrame").hide();});
		$("#addTeamImgFrame").hover(function(){
			$("#addTeamImgFrame").show();
		},function(){$("#addTeamImgFrame").hide();});
		
		//上传图片
		$("#modelFileId").change(function(e){
			if(this.value != ""){
				var action = "fileUpload.action?constPath=isports/t5/images/&dynamicDir="+$("#newsId").val();
				$("#addImgForm").attr("action",action).submit();
			}
				
		});
				
		$("#addTeamImgFrame iframe").load(function(){
			 var uploadResultJson = $(this).contents().find("*").first().text();
   			 var uploadResult = $.parseJSON(uploadResultJson);
   			 if(uploadResult.error == "1"){
				util.alert(uploadResult.message);
				return;
			}
			$("#imgWrapper").html("<img src='"+uploadResult.url+"'/>");
			$("#newsLogo").val(uploadResult.url);
		});
	});
	
KindEditor.ready(function(K) {
	var id;
			var options = {
				items : [ 'undo', 'redo', '|', 'preview', 'cut', 'copy',
						'paste', '|', 'justifyleft', 'justifycenter',
						'justifyright', 'justifyfull', 'insertorderedlist',
						'insertunorderedlist', 'indent', 'outdent',
						'subscript', 'superscript', '|', 'fullscreen', '/',
						'formatblock', 'fontname', 'fontsize', '|',
						'forecolor', 'hilitecolor', 'bold', 'italic',
						'underline', 'strikethrough', 'lineheight', '|',
						'image', 'hr', 'emoticons', 'pagebreak',
						'link' ],
        
				cssPath : '../comm/js/kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload/main?constPath='+id,
				//fileManagerJson : 'manager/main?constPath=isports/t5/images/',
				allowFileManager : false,
				urlType:'absolute',//relative, absolute,domain
				afterCreate: function () { 
					$("#saveBtn").click(function(e){
						var newsTitle = $('#newsTitle').val();
						//var newsSubTitle = $('#newsSubTitle').val();
						if(newsTitle.length > 15){
							util.alert("标题不要超过15个字");
							return;
						}
<%--						if(newsSubTitle.length > 25){--%>
<%--							util.alert("副标题不要超过25个字");--%>
<%--							return;--%>
<%--						}--%>
						e.preventDefault();
						//同步内容
						editor.sync();
						//提交表单
						save();
					});
				}
			};
			editor = K.create('#t5Content', options);
			prettyPrint();
		});	
</script>