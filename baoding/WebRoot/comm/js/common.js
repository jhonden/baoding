
//导航
$(function() {
    var time = null;
    var list = $("#navlist");
    var box = $("#navbox");
    var lista = list.find("a");

    for (var i = 0,
             j = lista.length; i < j; i++) {
        if (lista[i].className == "now") {
            var olda = i;
        }
    }

    var box_show = function(hei) {
        box.stop().animate({
                height: hei,
                opacity: .5
            },
            400);
    }

    var box_hide = function() {
        box.stop().animate({
                height: 0,
                opacity: .5
            },
            400);
    }

    lista.hover(function() {
            lista.removeClass("now");
            $(this).addClass("now");
            clearTimeout(time);
            var index = list.find("a").index($(this));
            box.find(".cont").hide().eq(index).show();
            var _height = box.find(".cont").eq(index).height() + 0;
            box_show(_height)
        },
        function() {
            time = setTimeout(function() {
                    box.find(".cont").hide();
                    box_hide();
                },
                50);
            lista.removeClass("now");
            lista.eq(olda).addClass("now");
        });

    box.find(".cont").hover(function() {
            var _index = box.find(".cont").index($(this));
            lista.removeClass("now");
            lista.eq(_index).addClass("now");
            clearTimeout(time);
            $(this).show();
            var _height = $(this).height() + 0;
            box_show(_height);
        },
        function() {
            time = setTimeout(function() {
                    $(this).hide();
                    box_hide();
                },
                50);
            lista.removeClass("now");
            lista.eq(olda).addClass("now");
        });

});

//banner
$(function () {
    $(".banner").slide({ mainCell: ".bd ul", autoPage: 0, effect: "fold", autoPlay: true });
});


//新闻焦点图
$(function() {
    var len_1  = jQuery(".newsImg-dot i").length;
    var index_1 = 1;
    if(len_1!=0){
        jQuery(".newsImg-dot i").click(function(){
            index_1  =   jQuery(".newsImg-dot i").index(this);
            showImg(index_1);
        });
        jQuery('.newsImg').hover(function(){
            if(MyTime){
                clearInterval(MyTime);
            }
        },function(){
            MyTime = setInterval(function(){
                showImg(index_1)
                index_1++;
                if(index_1==len_1){index_1=0;}
            } , 4000);
        });
        var MyTime = setInterval(function(){
            showImg(index_1)
            index_1++;
            if(index_1==len_1){index_1=0;}
        }, 4000);
    }
    function showImg(i){
        jQuery(".newsImg  dd").hide();
        jQuery(".newsImg dd").stop(true,true).eq(i).fadeIn(500);
        jQuery(".newsImg-dot i").removeClass("active");
        jQuery(".newsImg-dot i").eq(i).addClass("active")
    };
});

//友情链接
$(function () {
    $(".link dt").click(function () {
        var index = $(".link dt").index(this);

        if ($(".link .dd" + index).css("display")== "block") {
            $(".link .dd" + index).hide();
        } else {
            $(".link dd").not(index).hide();
            $(".link .dd" + index).toggle();
        }
        //        alert(index);
        //        $(".link dd:not(" + index + ")").hide();
        //        $(this).next("dd").toggle();
        //        $(".link dd").toggle();
    });
});

//返回顶部
$(function(){
    showScroll();
    function showScroll(){
        $(window).scroll( function() {
            var scrollValue=$(window).scrollTop();
            scrollValue > 100 ? $('div[class=scroll]').fadeIn():$('div[class=scroll]').fadeOut();
        } );
        $('#scroll').click(function(){
            $("html,body").animate({scrollTop:0},200);
        });
    }
});
$(function(){
    var tips2; var theTop2 = 100/*这是默认高度,越大越往下*/; var old2 = theTop2;
    function initFloattips2() {
        tips2 = document.getElementById('QQFloat2');
        movetips2();
    };
    function movetips2() {
        var tt=50;
        if (window.innerHeight) {
            pos = window.pageYOffset
        }
        else if (document.documentElement && document.documentElement.scrollTop) {
            pos = document.documentElement.scrollTop
        }
        else if (document.body) {
            pos = document.body.scrollTop;
        }
        pos=pos-tips2.offsetTop+theTop2;
        pos=tips2.offsetTop+pos/10;

        if (pos < theTop2) pos = theTop2;
        if (pos != old2) {
            tips2.style.top = pos+"px";
            tt=10;
            //alert(tips2.style.top);
        }

        old2 = pos;
        setTimeout(movetips2,tt);
    }
//!]]>
    initFloattips2();
});


