<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>陕西宝鼎金融</title>
    <link rel="stylesheet" href="<%=basePath %>comm/css/common.css">
</head>
<body>
    <div class="main">
    	<!--top-->
    	<%@ include file="header.jsp" %>
    	<!--top End-->
        <!--banner-->
        <%@ include file="binner.jsp" %>
        <!--banner End-->
        <!--contA-->
        <div class="contA clearfix">
            <div class="contA-lt  clearfix fl">
                <!--图片新闻-->
                <div class="contA-lt-a fl">
                    <div class="newsTit clearfix">
                        <h3>图片新闻</h3>
                        <a href="../news_center/company">更多&gt;&gt;</a> </div>
                    <div class="newsImg">
                        <dl>
                            <div class="newsImg-dot">
                                <i class="">1</i>
                                <i class="">2</i>
                                <i class="">3</i>
                                <i class="active">4</i>
                                <i class="">5</i>
                            </div>
                            <dt> </dt>
                            <dd style="display: none;">
								<a href="../news_center/company_detail"> <img
									src="../comm/image/6134844375.jpg">
								</a>
								<p>
                                    <a href="../news_center/company_detail">公司组织学习许大勇同志先进事迹</a>
                                </p>
                            </dd>
                            <dd class="newsImg-item" style="display: none;">
                                <a href="../news_center/company_detail"><img src="../comm/image/1615339812.jpg"></a>
                                <p>
                                    <a href="../news_center/company_detail">广州市融资担保中心有限责任公司总经理江日华一行莅临四川发展担保</a>
                                </p>
                            </dd>
                            <dd class="newsImg-item" style="display: none;">
                                <a href="../news_center/company_detail"><img src="../comm/image/6174841651.jpg"></a>
                                <p>
                                    <a href="../news_center/company_detail">四川发展担保召开专项建设基金试点工作培训会</a>
                                </p>
                            </dd>
                            <dd class="newsImg-item" style="display: block;">
                                <a href="../news_center/company_detail"><img src="../comm/image/2717171538.jpg"></a>
                                <p>
                                    <a href="../news_center/company_detail">四川省担保行业转型发展研讨会在四川发展担保举行</a>
                                </p>
                            </dd>
                            <dd class="newsImg-item" style="display: none;">
                                <a href="../news_center/company_detail">
                                    <img src="../comm/image/6359201053925033004028183.jpg">
                                </a>
                                <p>
                                    <a href="../news_center/company_detail">四川发展2016年新春年会</a>
                                </p>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!--图片新闻 End-->
                <!--最新咨询-->
                <div class="contA-lt-b fl">
                    <div class="newsTit clearfix">
                        <h3>最新资讯</h3>
                        <a href="../news_center/trend">更多&gt;&gt;</a>
                    </div>
                    <div class="newsInfo">
                        <div class="tit clearfix">
                            <a href="news_firm_01.html">关于四川发展融资担保股份有限公司公证机构入围比选公告</a>
                            <span>2016/08/29</span>
                        </div>
                        <p class="txt">四川发展融资担保股份有限公司是经四川省人民政府批准成立的国有公司。现由于公司发展需要，拟通过竞争谈判比选聘用2016年－2017...</p>
                    </div>
                    <ul class="newsList">
                        <li>
                            <span>2016/08/29</span>
                            <a href="news_firm_02.html">关于四川发展融资担保股份有限公司保险机构（诉讼保全保险业务）入围比选公告</a>
                        </li>
                        <li>
                            <span>2016/08/08</span>
                            <a href="news_firm_03.html">四川发展融资担保股份有限公司召开2016年半年工作会议</a>
                        </li>
                        <li>
                            <span>2016/07/13</span>
                            <a href="news_staff_01.html">陕西宝鼎融资担保举办融资担保法律实务讲座</a>
                        </li>
                        <li>
                            <span>2016/07/06</span>
                            <a href="news_staff_02.html">陕西宝鼎融资担保召开担保业务制度培训会</a>
                        </li>
                        <li>
                            <span>2016/07/06</span>
                            <a href="news_staff_03.html">陕西宝鼎融资担保召开债券担保业务培训会</a>
                        </li>
                        <li>
                            <span>2016/06/28</span>
                            <a href="news_firm_04.html">公司组织学习许大勇同志先进事迹</a>
                        </li>
                    </ul>
                </div>
                <!--最新咨询 End-->
                <!--公司新闻-->
                <div class="contA-lt-c fl">
                    <div class="newsTit clearfix">
                        <h3>公司新闻</h3>
                        <a href="../news_center/company">更多&gt;&gt;</a> </div>
                    <ul class="newsList">
                        <li>
                            <span>2016/08/29</span>
                            <a href="news_firm_01.html">关于四川发展融资担保股份有限公司公证机构入围比选公告</a>
                        </li>
                        <li>
                            <span>2016/08/29</span>
                            <a href="news_firm_02.html">关于四川发展融资担保股份有限公司保险机构（诉讼保全保险业务）入围比选公告</a>
                        </li>
                        <li>
                            <span>2016/08/08</span>
                            <a href="news_firm_03.html">四川发展融资担保股份有限公司召开2016年半年工作会议</a>
                        </li>
                        <li>
                            <span>2016/06/03</span>
                            <a href="news_firm_04.html">公司组织学习许大勇同志先进事迹</a>
                        </li>
                        <li>
                            <span>2016/05/26</span>
                            <a href="news_firm_05.html">广州市融资担保中心有限责任公司总经理江日华一行莅临四川发展担保</a>
                        </li>
                        <li>
                            <span>2016/05/25</span>
                            <a href="news_firm_06.html">四川发展担保召开专项建设基金试点工作培训会</a>
                        </li>
                        <li>
                            <span>2016/05/18</span>
                            <a href="news_firm_07.html">四川发展担保招聘简章</a>
                        </li>
                        <li>
                            <span>2016/04/22</span>
                            <a href="news_firm_08.html">四川省担保行业转型发展研讨会在四川发展担保举行</a>
                        </li>
                    </ul>
                </div>
                <!--公司新闻 End-->
                <!--行业动态-->
                <div class="contA-lt-d fl">
                    <div class="newsTit clearfix">
                        <h3>行业动态</h3>
                        <a href="../news_center/trend">更多&gt;&gt;</a> </div>
                    <ul class="newsList">
                        <li>
                            <span>2016/01/21</span>
                            <a href="news_trend_01.html">25省份地方债图谱：宁夏增长最快 贵州债务率最高</a>
                        </li>
                        <li>
                            <span>2016/01/18</span>
                            <a href="news_trend_02.html">成都地产现冰火两重天：商业地产库存高企，物流地产需求旺盛</a>
                        </li>
                        <li>
                            <span>2015/12/29</span>
                            <a href="news_trend_03.html">P2P大佬解读监管细则：比预想中更猛烈</a>
                        </li>
                        <li>
                            <span>2015/12/28</span>
                            <a href="news_trend_04.html">阳光私募这一年：风控是硬伤 监管渐从严</a>
                        </li>
                        <li>
                            <span>2015/12/22</span>
                            <a href="news_trend_05.html">中国担保业航母登陆新三板 中投保挂牌敲钟仪式拟18日举行</a>
                        </li>
                        <li>
                            <span>2015/12/17</span>
                            <a href="news_trend_06.html">财政部PPP示范项目明年最高奖800万</a>
                        </li>
                        <li>
                            <span>2015/12/16</span>
                            <a href="news_trend_07.html">天津小微企业贷款增速为什么能比全国高30个百分点</a>
                        </li>
                        <li>
                            <span>2015/12/07</span>
                            <a href="news_trend_08.html">熔断机制增固A股“安全阀” 将降低市场异动风险</a>
                        </li>
                    </ul>
                </div>
                <!--行业动态 End-->
            </div>
            <!--公司概况-->
            <div class="contA-rt fr">
                <div class="newsTit clearfix">
                    <h3>公司概况</h3>
                    <a href="../about_us/information">更多&gt;&gt;</a> </div>
                <div class="about">
                    <img src="../comm/image/6114210957.jpg" width="278" height="103">
                    <p class="txt">四川发展融资担保股份有限公司（以下简称发展担保）成立于2010年，由四川发展（控股）有限公司、四川发展投资有限责任公司出资成立，注册资金10亿元，是一家专业从事融资担保服务的大型国有企业。...<a href="about_information.html">查看详细&gt;&gt;</a></p>
                </div>
                <div class="honor">
                    <div class="honor-Tit">
                        <h4 class="cn">公示公告</h4>
                        <span class="en">陕西宝鼎融资担保经过不断发展，取得了许多行业资质及荣誉，</span> </div>
                    <ul class="honor-ul">
                        <li><a href="gsgg_01.html">1、关于公证机构入围比选公告</a></li>

                        <li><a href="gsgg_02.html">2、关于保险机构（诉讼保全保险业务）入围比选公告</a></li>
                    </ul>
                    <a href="../pub_announcement/announcement" class="honor-More">查看更多</a> </div>
            </div>
            <!--公司概况 End-->
        </div>
        <!--contA End-->
        <!--contB-->
        <div class="contB clearfix">
            <div class="contB-img fl"> <img src="../comm/image/adverImg.jpg" width="706" height="120"> </div>
            <div class="search fr">
                <div class="searchTit">网站搜索</div>
                <div class="searchBox clearfix">
                    <form method="post" class="searchForm" action="sslb.html">
                        <input type="text" placeholder="输入关键字进行搜索" name="keyword" class="s-inp fl">
                        <input type="submit" value="搜索" name="submit" class="s-btn fl">
                    </form>
                </div>
            </div>
        </div>
        <!--contB End-->
        <!--contC-->
        <div class="contC clearfix">
            <!--政策法规-->
            <div class="contC-lt fl">
                <div class="newsTit clearfix">
                    <h3>政策法规</h3>
                    <a href="../policy/policy">更多&gt;&gt;</a> </div>
                <ul class="newsList">
                    <li><span>2015/09/06</span><a href="policy_01.html">最高法发布民间借贷案司法解释 9月1日起施行</a></li>
                    <li><span>2015/06/04</span><a href="policy_02.html">担保法司法解释及高院批复</a></li>
                    <li><span>2015/06/04</span><a href="policy_03.html">中华人民共和国担保法</a></li>
                    <li><span>2015/06/04</span><a href="policy_04.html">城市房地产抵押管理办法</a></li>
                    <li><span>2015/06/04</span><a href="policy_05.html">不动产登记暂行条例</a></li>
                    <li><span>2015/05/22</span><a href="policy_06.html">关于印发《融资性担保公司接入征信系统管理暂行规定》的通知（银发 (2010) 365号）</a></li>
                    <li><span>2015/05/22</span><a href="policy_07.html">《融资性担保公司管理暂行办法》（2010年第3号）</a></li>
                    <li><span>2015/05/18</span><a href="policy_08.html">关于调整住房供应结构稳定住房价格的意见</a></li>
                </ul>
            </div>
            <!--政策法规 End-->
            <!--员工风采-->
            <div class="contC-md fl">
                <div class="newsTit clearfix">
                    <h3>员工风采</h3>
                    <a href="../news_center/staff">更多&gt;&gt;</a> </div>
                <ul class="newsList">
                    <li><span>2016/07/13</span><a href="news_staff_01.html">陕西宝鼎融资担保举办融资担保法律实务讲座</a></li>
                    <li><span>2016/07/06</span><a href="news_staff_02.html">陕西宝鼎融资担保召开担保业务制度培训会</a></li>
                    <li><span>2016/07/06</span><a href="news_staff_03.html">陕西宝鼎融资担保召开债券担保业务培训会</a></li>
                    <li><span>2016/06/02</span><a href="news_staff_04.html">公司组织反腐倡廉知识竞赛活动</a></li>
                    <li><span>2016/02/24</span><a href="news_staff_05.html">四川发展2016年新春年会</a></li>
                    <li><span>2015/11/19</span><a href="news_staff_06.html">点燃梦想 奋力前行——四川发展举行“转型发展、二次创业”演讲比赛</a></li>
                    <li><span>2015/06/09</span><a href="news_staff_07.html">我公司与中行成都武侯支行进行足球友谊赛</a></li>
                    <li><span>2015/05/06</span><a href="news_staff_08.html">四川发展2015迎新年诗歌朗诵会</a></li>
                </ul>
            </div>
            <!--员工风采 End-->
            <!--友情链接-->
            <div class="link fr">
                <div class="linkimg">
                    <a href="javascript:;" title="陕西宝鼎融资担保有限公司 ">
                        <i></i>
                        <b>陕西宝鼎融资担保</b>
                        <em>SHANXIBAODINGRONGZIDANBAO</em>
                    </a>
                </div>
                <dl>
                    <dt>|-----------政府机关网站-----------|</dt>
                    <dd class="dd0" style="display: none;top:84px;">
                        <a href="http://www.shaanxi.gov.cn/">陕西省人民政府</a>
                        <a href="http://www.cbrc.gov.cn/index.html">中国银行业监督管理委员会</a>
                        <a href="http://www.sndrc.gov.cn/">陕西省发展和改革委员会</a>
                        <a href="http://www.qinfeng.gov.cn/">陕西省监察厅</a>
                    </dd>
                </dl>
                <dl>
                    <dt>|-----------行业协会网站-----------|</dt>
                    <dd class="dd1" style="display: none; top:128px;">
                        <a href="http://www.chinafga.org/">中国融资担保业协会</a>
                        <a href="http://gsxt.saic.gov.cn/">全国企业信用信息公示系统</a>
                    </dd>
                </dl>
                <dl>
                    <dt>|-----------担保公司网站-----------|</dt>
                    <dd class="dd2" style="display: none;top:172px;">
                        <a href="http://182.150.28.32:10011/">陕西宝鼎融资担保OA系统</a>
                        <a href="http://182.150.28.32:10021/">陕西宝鼎融资担保业务系统</a>
                        <a href="javascript:;">陕西宝鼎融资担保有限公司</a>
                        <a href="http://www.sxcgc.cn/">陕西中小企业融资担保有限责任公司</a>
                    </dd>
                </dl>
                <dl>
                    <dt>|-----------新闻媒体网站-----------|</dt>
                    <dd class="dd3" style="display: none; top:216px;">
                        <a href="http://www.insigmagroup.com.cn/">网新集团</a>
                        <a href="http://www.sei.gov.cn/">陕西经济信息网</a>
                        <a href="http://shixin.court.gov.cn/">中国执行信息公开网</a>
                    </dd>
                </dl>
                <dl>
                    <dt>|-------------其他网站-------------|</dt>
                    <dd class="dd4" style="display: none;top:260px;">
                    </dd>
                </dl>
            </div>
            <!--友情链接 End-->
        </div>
        <!--contC End-->
        <div style="clear:both;"></div>
        <!--合作伙伴-->
        <div class="partner">
            <h3 class="partner-tit">合作伙伴</h3>
            <div class="partner-ul">
                <div id="demo">
                    <div id="indemo">
                        <ul id="demo1" class="clearfix">
                            <li><a href="http://www.bocd.com.cn/"><img src="../comm/image/611253484.jpg"></a></li>
                            <li><a href="http://www.cmbchina.com/"><img src="../comm/image/18114025171.jpg"></a></li>
                            <li><a href="http://www.icbc.com.cn/icbc/"><img src="../comm/image/18114510484.jpg"></a></li>
                            <li><a href="http://www.boc.cn/"><img src="../comm/image/1811471278.jpg"></a></li>
                            <li><a href="http://bank.ecitic.com/"><img src="../comm/image/18114859250.jpg"></a></li>
                            <li><a href="http://www.bankcomm.com/"><img src="../comm/image/18115215203.jpg"></a></li>
                            <li><a href="http://www.ccb.com/"><img src="../comm/image/18115438718.jpg"></a></li>
                            <li><a href="http://www.abchina.com/cn/"><img src="../comm/image/18115751140.jpg"></a></li>
                            <li><a href="http://www.cmbc.com.cn/"><img src="../comm/image/1811590312.jpg"></a></li>
                        </ul>
                        <ul id="demo2" class="clearfix">
                            <li><a href="http://www.bocd.com.cn/"><img src="../comm/image/611253484.jpg"></a></li>
                            <li><a href="http://www.cmbchina.com/"><img src="../comm/image/18114025171.jpg"></a></li>
                            <li><a href="http://www.icbc.com.cn/icbc/"><img src="../comm/image/18114510484.jpg"></a></li>
                            <li><a href="http://www.boc.cn/"><img src="../comm/image/1811471278.jpg"></a></li>
                            <li><a href="http://bank.ecitic.com/"><img src="../comm/image/18114859250.jpg"></a></li>
                            <li><a href="http://www.bankcomm.com/"><img src="../comm/image/18115215203.jpg"></a></li>
                            <li><a href="http://www.ccb.com/"><img src="../comm/image/18115438718.jpg"></a></li>
                            <li><a href="http://www.abchina.com/cn/"><img src="../comm/image/18115751140.jpg"></a></li>
                            <li><a href="http://www.cmbc.com.cn/"><img src="../comm/image/1811590312.jpg"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--合作伙伴 End-->
       <%@ include file="footer.jsp" %>
    </div>
    <%@ include file="float_info.jsp" %>
    
    
    <script src="<%=basePath %>/comm/js/jquery.SuperSlide.2.1.1.js"></script>
    <script src="<%=basePath %>/comm/js/common.js"></script>
    <script type="text/javascript">
		  //合作伙伴
		    $(function(){
		        var speed=20; //数字越大速度越慢
		        var tab=document.getElementById("demo");
		        var tab1=document.getElementById("demo1");
		       var tab2=document.getElementById("demo2");
		       tab2.innerHTML=tab1.innerHTML;
		        function Marquee(){
		            if(tab2.offsetWidth-tab.scrollLeft<=0)
		                tab.scrollLeft-=tab1.offsetWidth;
		            else{
		                tab.scrollLeft++;
		            }
		        }
		        var MyMar=setInterval(Marquee,speed);
		        tab.onmouseover=function() {clearInterval(MyMar)};
		        tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
		    });
    </script>
</body>
</html>
