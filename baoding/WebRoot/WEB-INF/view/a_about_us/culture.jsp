<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>公司概况 - 陕西宝鼎融资担保有限公司</title>
    <link rel="stylesheet" href="../comm/css/common.css">
</head>
<body>
<div class="main">
    <!--top-->
   	<%@ include file="../header.jsp" %>
   	<!--top End-->
    <!--banner-->
    <%@ include file="../binner.jsp" %>
    <!--banner End-->
    <!--main-->
    <div class="ab-main clearfix">
        <!--left-->
        <div class="left fl">
            <div class="newsTit clearfix">
                <h3>关于我们</h3>
            </div>
            <ul class="left-nav" id="left-nav">
                <li>
                    <a title="公司概况" href="information" style="z-index:2;">公司概况</a>
                </li>
                <li>
                    <a title="企业文化" class="current" href="culture" style="z-index:2;">企业文化</a>
                </li>
                <li>
                    <a title="经营范围" href="run" style="z-index:2;">经营范围</a>
                </li>
                <li>
                    <a title="管理团队" href="team" style="z-index:2;">管理团队</a>
                </li>
                <li>
                    <a title="品牌优势" href="brand" style="z-index:2;">品牌优势</a>
                </li>
            </ul>
            <!--search input-->
	    	<%@ include file="../a_search/input.jsp" %>
	    	<!--search input End-->
        </div>
        <!--left End-->
        <!--right-->
        <div class="right fr">
            <div class="right-top">您当前的位置： 首页 &gt; 关于我们 &gt; 企业文化 </div>
            <div class="right-cen">
                <p><strong><span style="color: rgb(255, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;企业使命</span></strong>：以“服务中小企业，助推地方经济”为使命，建设覆盖全省的业务网络体系，积极推动我省多级支持发展战略的实施。</p><p><strong><span style="color: rgb(255, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;经营理念</span></strong>：构造健康的、可持续发展的优秀企业。</p><p><span style="color: rgb(255, 0, 0);"><strong>&nbsp;&nbsp;&nbsp;&nbsp;责任目标</strong></span>：争创“全国一流、省内前三”。</p><p><span style="color: rgb(255, 0, 0);"><strong>&nbsp;&nbsp;&nbsp;&nbsp;核心价值观</strong></span>：和谐、稳健、进取、服务。</p>
                <!--<script id="web_mm" src="image/6356909993549562258167943.bmp"></script>-->
                <p><br></p>
            </div>
        </div>
        <!--right End-->
    </div>
   <!--合作伙伴 End-->
    <%@ include file="../footer.jsp" %>
</div>
    <!--main End-->
	<%@ include file="../float_info.jsp" %>
    
    <script src="../comm/js/jquery-1.9.1.min.js"></script>
    <script src="../comm/js/jquery.SuperSlide.2.1.1.js"></script>
    <script src="../a_about_us/js/about.js"></script>
    <script src="../comm/js/common.js"></script>
</body>
</html>