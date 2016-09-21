var newsPage;
var pageGap = 8;
var actionKey = {isDel:false,isAdd:false};

$(function(){
	/**
	 * 初始化page
	 */
	newsPage  = new Page({
		url : 'query/nDao',
		pageId : '1',
		pageSize : '3',
		conditions : "",
		containerId : 'newsListContainer',
		mapRow : function(obj, rowid, pageid) {
			var html = $("#newsListTmp").html();
			html = html.replace(/\{title\}/g,obj.title)
			           .replace(/\{createTimeStr\}/g,obj.createDate)
			           .replace(/\{publishStatus\}/g,{0:"待发布",1:"已发布",2:"已下线"}[obj.status])
			           .replace(/\{statusMsg\}/g,{0:"发布",1:"下线",2:"上线"}[obj.status])
			           ;
			return html;
		},
		before : function() {
			//开启加载动画
			preloader.active(true);
		},
		after : function(page) {
			//关闭加载动画
			preloader.active(false);
			//初始化分页页脚
			util.initPageFoot(page,pageGap,"newsPage",$("#pageItem"));
		}
	}).init();
	//
	function parsePublishStatus(publishStatus,order){
		switch(publishStatus){
		case '0':
			if(parseInt(order) == 0)
				return "待发布";
			else
				return "待发布<span style='color:#FF7425;'>【置顶】<span>";
		case '1':
			if(parseInt(order) == 0)
				return "已上线";
			else
				return "已上线<span style='color:#FF7425;'>【置顶】<span>";
		case '2':
			return "已下线";
		}
	}
	//
	function parseComment(ccount){
		if(parseInt(ccount) == 0)
			return "评论";
		var msg = ccount > 99?'99':ccount<10?'0'+ccount:ccount;
		
		return "评论<sup><span class='circle'>"+msg+"</span></sup>";
	}
	//
	function parseOrderMsg(order){
		if(parseInt(order) == 0)
			return "置顶";
		return "取消置顶";
	}
	function parseOrderImg(order){
		if(parseInt(order) == 0)
			return "up.png";
		return "down.png";
	}
});





/**
 * 查询
 */
function search(){
	newsPage.setConditions('&'+$("#newsListForm").serialize()).goPage(1);
}


function topNews(id,order){
	var url = "newsModify.action?action=unTop";
	var msg = "取消置顶";
	if(order == '0'){
		url = "newsModify.action?action=top";
		msg = "置顶";
	}
	util.confirm("确认要"+msg+"该新闻时讯吗?",function(){
		$.ajax({
			url:url,
			method:'post',
			data:'news.id='+id,
			success:function(msg){
				if(msg == '0'){
					newsPage.refreshPage();
				}
			},
			error:function(msg){
				util.alert("置顶失败");
			}
		});
	});
	
}


/**
 * 删除
 */

function del(id,status){
	if(status == '1'){
		util.alert("新闻已发布上线，无法删除");
		return;
	}
	util.confirm("确认要删除该新闻时讯吗",function(){
		if(actionKey.isDel == true)
			return;
		actionKey.isDel = true;
		//提交表单
		$.ajax({
			url:'newsModify!delete.action',
			method:'post',
			data:'news.id='+id,
			success:function(msg){
				if(msg == '0'){
					newsPage.refreshPage();
				}
				actionKey.isDel = false;
			},
			error:function(msg){
				actionKey.isDel = false;
				util.alert("删除失败");
			}
		});
	});
}

/**
 * 添加
 */
function toAdd(){
	$.ajax({
		url:'news/toAdd',
		method:'POST',
		success:function(r){
		    var result = eval('('+r+')');
		    if(result.code == '0'){
		    	$("#newsId").val(result.id);
		    	addPannel.show();
		    }
		},
		error:function(msg){
			util.alert("新闻编号申请失败,请联系管理员或稍后再试");
		}
	});
}

/**
 * 保存编辑或添加
 */
function save(){
	if(actionKey.isAdd == true)
		return;
	actionKey.isAdd = true;
	if($.trim($('#newsTitle').val()) == ''){
		util.alert("时讯标题不能为空");
		actionKey.isAdd = false;
		return;
	}
	if($.trim($('#t5Content').val()) == ''){
		util.alert("时讯内容不能为空");
		actionKey.isAdd = false;
		return;
	}
	if($("#formType").val() == 'add'){
		$.ajax({
			url:'news/addCompanyNews',
			method:'POST',
			data:$("#newsAddForm").serialize(),
			success:function(msg){
				if(msg == '0'){
					$("#addNewsClosePanel").click();
					newsPage.refreshPage();
				}else{
					util.alert("添加失败");
				}
				actionKey.isAdd = false;
			},
			error:function(msg){
				util.alert("添加失败");
				actionKey.isAdd = false;
			}
		});
	}else{
		$.ajax({
			url:'newsModify!update.action',
			method:'post',
			data:$("#newsAddForm").serialize(),
			success:function(msg){
				if(msg == '0'){
					$("#addNewsClosePanel").click();
					newsPage.refreshPage();
				}else{
					util.alert("修改失败");
				}
				actionKey.isAdd = false;
			},
			error:function(msg){
				util.alert("修改失败");
				actionKey.isAdd = false;
			}
		});
	}
}

/**
 * 初始化球赛编辑
 */
function toEdit(id,status){
	if(status == '1'){
		util.alert("新闻已发布上线，无法编辑");
		return;
	}
	$("#formType").val("edit");
	$.ajax({
		url:'newsModify!toEdit.action',
		method:'post',
		data:'news.id='+id,
		success:function(news){
			var t = eval('('+news+')');
			editor.uploadJson = "fileUpload.action?constPath=isports/t5/images/&dynamicDir="+t.id;
			$("#newsId").val(t.id);
			$("#newsTitle").val(t.title);
			$("#newsSubTitle").val(t.subTitle);
			$("#newsLogo").val(t.icon);
			$("#imgWrapper").html("<img src='"+t.icon+"' />");
			editor.html(t.content);
			addPannel.show();
		},
		error:function(msg){
			util.alert("数据加载失败");
		}
	});
};

function publish(id,status){
	var url = "newsModify.action?action=publish";
	var msg = "发布";
	if(status == '1'){
		url = "newsModify.action?action=unPublish";
		msg = "下线";
	}
	util.confirm("确认要"+msg+"该新闻时讯吗?",function(){
		$.ajax({
			url:url,
			method:'post',
			data:'news.id='+id,
			success:function(msg){
				if(msg == '0'){
					newsPage.refreshPage();
				}
			},
			error:function(msg){
				util.alert("置顶失败");
			}
		});
	});
}

/**
 * 审核评论
 * @param id
 */
function comments(id){
	$.ajax({
		url:'newsModify!toEdit.action',
		method:'post',
		data:'news.id='+id,
		success:function(news){
			var t = eval('('+news+')');
			$("#commentsNewsTitle").text(t.title);
			commentPage.setConditions("&page.condition['newsId']="+t.id);
			commentPage.goPage(1);
			commentsPanel.show();
		},
		error:function(msg){
			util.alert("数据加载失败");
		}
	});
	
}

