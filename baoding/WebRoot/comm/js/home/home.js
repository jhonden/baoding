var page;
var lunboCount = 3;
var startIndex = 1;
var tmplate = {};
$(function(){
	/**
	 * 初始化page
	 */
/*	page  = new Page({
		url : 'query/bDao',
		pageId : '1',
		pageSize : '10',
		containerId : 'business_list',
		mapRow : function(obj, rowid, pageid) {
			var iconUrl = "comm/image/business/"+obj.icon;
			var rowStr = "<li>";
			    rowStr += "<a><p>";
			    rowStr += "<span id=\"img_animation\" class=\"ui-business-icon\"><img src=\""+iconUrl+"\"></span>";
			    rowStr += "<strong class=\"ui-business-title\">"+obj.name+"</strong>";
			    rowStr += "<span class=\"ui-business-text\">"+obj.subName+"</span>";
			    rowStr += "</p></a>";
			    rowStr += "</li>";
			return rowStr;
          
		},
		before : function() {
		},
		after : function(page) {
			$('.ui-business ul li').hover(function(){
				var obj = $(this).find("#img_animation");
				obj.css("animation-name","buzz-out");
				obj.css("animation-duration",".4s");
				obj.css("animation-timing-function","liner");
				obj.css("animation-iteration-count","infinite");
			},function(){
				var obj = $(this).find("#img_animation");
				obj.css("animation-name","");
			});
			//加载导航栏下拉菜单
			$('.ui-nav li').hover(function(){
				var obj = $(this).find(".nav-top-box");
				obj.slideDown(500);
			},function(){
				var obj = $(this).find(".nav-top-box");
				obj.hide();
			});
			//设置轮播定时器
			//setInterval("lunbo()",3000);
			//设置轮播的高度
			setHeight();
		}
	}).init();*/
	$('.ui-business ul li').hover(function(){
		var obj = $(this).find("#img_animation");
		obj.css("animation-name","buzz-out");
		obj.css("animation-duration",".4s");
		obj.css("animation-timing-function","liner");
		obj.css("animation-iteration-count","infinite");
	},function(){
		var obj = $(this).find("#img_animation");
		obj.css("animation-name","");
	});
	//加载导航栏下拉菜单
	$('.ui-nav li').hover(function(){
		var obj = $(this).find(".nav-top-box");
		obj.slideDown(500);
	},function(){
		var obj = $(this).find(".nav-top-box");
		obj.hide();
	});
	//设置轮播定时器
	setInterval("lunbo()",3000);
	//设置轮播的高度
	setHeight();
});
function lunbo(){
	var index = (startIndex++)%lunboCount;
	$("#li_"+index).show();
	$("#li_"+index).siblings().hide();
	$("#cycle_"+index).removeClass("lunbo_cycle_unselected");
	$("#cycle_"+index).addClass("lunbo_cycle_selected");
	$("#cycle_"+index).siblings().removeClass("lunbo_cycle_selected");
	$("#cycle_"+index).siblings().addClass("lunbo_cycle_unselected");
}
function setHeight(){
	var height = (window.screen.width)*0.3;
	$('.ui-promo').css("height",height);
}