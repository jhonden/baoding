function _onfocus(obj, value) {
	var val = obj.value;
	if (val == value) {
		obj.value = "";
	}
}

function logout() {
	if ($(".jt-navBoxUser-login").text().indexOf("��¼") != -1 && usessionid != "") {
		window.location.href = changeURLPar(window.location.href,"usessionid","");
		usessionid = "";
	}
}

// ����url����ֵ��ref������,value�µĲ���ֵ
function changeURLPar(url, ref, value) {
	var str = "";
	if (url.indexOf('?') != -1)
		str = url.substr(url.indexOf('?') + 1);
	else
		return url + "?" + ref + "=" + value;
	var returnurl = "";
	var setparam = "";
	var arr;
	var modify = "0";

	if (str.indexOf('&') != -1) {
		arr = str.split('&');

		for (i in arr) {
			if (arr[i].split('=')[0] == ref) {
				setparam = value;
				modify = "1";
			} else {
				setparam = arr[i].split('=')[1];
			}
			returnurl = returnurl + arr[i].split('=')[0] + "=" + setparam + "&";
		}

		returnurl = returnurl.substr(0, returnurl.length - 1);

		if (modify == "0")
			if (returnurl == str)
				returnurl = returnurl + "&" + ref + "=" + value;
	} else {
		if (str.indexOf('=') != -1) {
			arr = str.split('=');

			if (arr[0] == ref) {
				setparam = value;
				modify = "1";
			} else {
				setparam = arr[1];
			}
			returnurl = arr[0] + "=" + setparam;
			if (modify == "0")
				if (returnurl == str)
					returnurl = returnurl + "&" + ref + "=" + value;
		} else
			returnurl = ref + "=" + value;
	}
	return url.substr(0, url.indexOf('?')) + "?" + returnurl;
}

//工具类-----------------------------------------------------------/
function util(){};
//---------------------------------------------------------------/
util.confirm = function(msg,yesCallBack,noCallBack) {
	var html = "<div class='conform-dialog'><div class='confirm-title'>"+msg+"</div><div class='confirm-action'><span class='yes-btn'>是</span><span class='no-btn'>否</span></div></div>";    
	$("body").append(html); 
	$(".conform-dialog").css({left:$(window).width()/2-$(".conform-dialog").width()/2,top:$("body").height()/3-$(".conform-dialog").height()});
	TweenMax.fromTo($(".conform-dialog"),0.3,{scale:0.1,visibility:"hidden"},{scale:1.0,visibility:"visible"});
	$(".conform-dialog .yes-btn").bind("click",function(){
		TweenMax.fromTo($(".conform-dialog"),0.3,{scale:1},{scale:0.1,onComplete:function(){$(this.target).remove();}});
		if(yesCallBack instanceof Function)
			yesCallBack();
	});
	$(".conform-dialog .no-btn").bind("click",function(){
		TweenMax.fromTo($(".conform-dialog"),0.3,{scale:1},{scale:0.1,onComplete:function(){$(this.target).remove();}});
		if(noCallBack instanceof Function)
			noCallBack();
	});
};
//---------------------------------------------------------------/
util.confirmSub = function(msg,yesCallBack){
	var html = "<div class='conform-dialog'><div class='confirm-title'>"+msg+"</div><div class='confirm-action'><span class='yes-btn'>确定</span></div></div>"; 
	$("body").append(html); 
	$(".conform-dialog").css({left:$(window).width()/2-$(".conform-dialog").width()/2,top:$("body").height()/2-$(".conform-dialog").height()});
	$(".conform-dialog .yes-btn").bind("click",function(){
		$(".conform-dialog").remove();
		if(yesCallBack instanceof Function)
			yesCallBack();
	});
};
//---------------------------------------------------------------/
util.alert = function(msg,afterCall) {
	var html = "<div class='alert-dialog'><div class='alert-action'><img class='close-btn' src='comm/surpport/res/close.png'/></div><div class='alert-title'>"+msg+"</div></div>";    
	$("body").append(html); 
	$(".alert-dialog").css({left:$(window).width()/2-$(".alert-dialog").width()/2,top:$("body").height()/2-$(".alert-dialog").height()});
	TweenMax.fromTo($(".alert-dialog"),0.3,{scale:0.1,visibility:"hidden"},{scale:1.0,visibility:"visible"});
	$(".alert-dialog .close-btn").bind("click",function(){
		TweenMax.fromTo($(".alert-dialog"),0.3,{scale:1},{scale:0.1,onComplete:function(){$(this.target).remove();}});
	});
	if(afterCall instanceof Function)
		afterCall();
};
//---------------------------------------------------------------/
util.selector = function(id,ops,name,selected,selectCallBack){
	 //存储id
	 var idstr = "#"+id;
	 var html = null;
	 //初始化ul和select
	 if(ops instanceof Array && ops.length>0){
		 var sIndex = 0;
		 html = "";
		 var lis = "";
		 var options = "";
		 for(var i=0; i< ops.length; i++){
			if(i == ops.length -1){
				lis += "<li class='option option-last'>"+ops[i].value+"</li>";				
			}else{
				lis += "<li class='option'>"+ops[i].value+"</li>";
			}
		 	
		 	if(i == selected){
		 		sIndex = i;
		 		options += "<option value='"+ops[i].key+"' checked='checked'>"+ops[i].value+"</option>";
		 	}else{
		 		options += "<option value='"+ops[i].key+"'>"+ops[i].value+"</option>";
		 	};
		 }
		 html += lis + " </ul> <select name=\""+name+"\">";
		 html += options + "</select>";
		 html = "<span datarole='"+sIndex+"'  class='value'>"+ops[sIndex].value+"</span><ul>" + html;
	 };
	 //单击出现选项
	 $(idstr).html(html).click(function(){
		$(idstr+" ul").slideDown(400);
	 }).mouseleave(function(event){//鼠标移开，收起选项列表
		event.stopPropagation();
		$(idstr+" ul").slideUp(400);
	 });
	 //单击选项，收起选项列表，并给select赋值
	$(idstr+" .option").click(function(event){
		event.stopPropagation();
		$(this).parent().hide();
		$(idstr+ " .value").text($(this).text());
		var oldVal = $(idstr+" select").val();
		var index = 0;
		for(var i=0; i<$(idstr+" .option").size(); i++){
			if($(idstr+" .option")[i]==this){
				index = i;
				break;
			}
		}
		var newVal = $(idstr+" select option").eq(index).val();
		$(idstr+" select").val(newVal);//赋值
		if(selectCallBack instanceof Function){
			selectCallBack({oldVal:oldVal,newVal:newVal,index:index});
		}
	}).eq(selected).click();
	//鼠标滑过
	$(".option").hover(function(){
		$(this).addClass("option-hover");
	},function(){
		$(this).removeClass("option-hover");
	});
};
//-------------------------------------------------------------------------------
util.redirect= function(url){
  	if(url)
  		window.location.href = url;
  };

  
//--------------------------------------------------------------------------------
  function Panel(panelId){
		var panel = document.getElementById(panelId);
		this.show = function(){
					TweenMax.fromTo(panel,0.2,{scale:0.1,opacity:0,visibility:"hidden"},{scale:1,opacity:1,visibility:"visible"});
					};	
		this.hide = function(){
			TweenMax.fromTo(panel,0.2,{scale:1,opacity:1},{scale:0.1,opacity:0,onComplete:function(){TweenMax.set(panel,{visibility:"hidden"});}});
		};	
	}
  //-------------------------------------------------------------------------------
  util.initPageFoot = function(page,pageGap,pageName,$pageFoot){
	  	var prePage = "<a onclick='"+pageName+".prePage()' class='icon item'> <i class='left arrow icon'></i></a>";
	  	var nextPage = "<a onclick='"+pageName+".nextPage()' class='icon item'> <i class='right arrow icon'></i></a>";
	  	var refreshPage = "<a onclick='"+pageName+".refreshPage()' class='icon item'> <i class='spinner icon'></i></a>";
	  	//如果没有数据
		if(page.getPageCount()<10){//如果小于10页,全部显示
			var html = [];
			html.push(prePage);
			for(var i=1; i<=page.getPageCount(); i++){
				if(i==page.getPageId()){
					html.push("<a onclick='"+pageName+".goPage("+i+")' class='item active'>"+i+"</a>");
				}else{
					html.push("<a onclick='"+pageName+".goPage("+i+")' class='item'>"+i+"</a>");
				}
			}
			html.push(nextPage);
			html.push(refreshPage);
			$pageFoot.html(html.join(''));
		}else{
			var html = [];
			//记录分页上下界
			var minPage;
			var maxPage;
			//计算分页下界
			var mod = page.getPageId() % pageGap;
			if(mod!=0){//当前页能被pageGap整除
				minPage = page.getPageId() - mod +1;
			}else{
				minPage = page.getPageId() - pageGap + 1;
			}
			//计算分页上界
			maxPage = minPage + pageGap - 1;
			//如果已经达到最后一批分页,需重新计算上下界
			if(page.getPageCount() >= minPage && page.getPageCount() <= maxPage){
				minPage= page.getPageCount()-pageGap;
				maxPage = page.getPageCount();
			}
			//生成中心分页块,从minPage到maxPage
			for(var i=minPage; i<=maxPage; i++){
				if(i<=page.getPageCount()){//maxPage有可能超过最大页数,需在此进行限定
					if(i==page.getPageId()){
						html.push("<a onclick='"+pageName+".goPage("+i+")' class='item active'>"+i+"</a>");
					}else{
						html.push("<a onclick='"+pageName+".goPage("+i+")' class='item'>"+i+"</a>");
					}
				}
			}
			//如果不是第一批分页，需显示第一页和其后的...
			if(page.getPageId()>pageGap){
				html.unshift("<a  class='item disabled'>...</a>");
				html.unshift("<a onclick='"+pageName+".goPage("+1+")' class='item'>1</a>");
			}
			//如果不是最后一批分页，需显示最后一页和其前的..., 但是如果最后一批只有一页时就不显示...
			if(page.getPageCount() > maxPage){
				if(page.getPageCount() != maxPage+1){
					html.push("<a  class='item disabled'>...</a>");
				}
				html.push("<a onclick='"+pageName+".goPage("+page.getPageCount()+")' class='item'>"+page.getPageCount()+"</a>");
			}
			//添加上一页和下一页
			html.unshift(prePage);
			html.push(nextPage);
			html.push(refreshPage);
			$pageFoot.html(html.join(''));
		}
  };