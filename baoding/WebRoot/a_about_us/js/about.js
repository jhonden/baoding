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
