<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>NIIT </title>
<link type="text/css" rel="stylesheet" href="./hot/style.css">
<link type="text/css" rel="stylesheet" href="./hot/mylib.css">
<link type="text/css" rel="stylesheet" href="./hot/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="./hot/font-awesome.css">
<link type="text/css" rel="stylesheet" href="./hot/bootstrap.css">
<link type="text/css" rel="stylesheet" href="./hot/reader-info.css">
<link rel="stylesheet" data-ignore="true" href="../library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="../library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="../library/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="../library/Popup.css">
<script type="text/javascript" src="./hot/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="./hot/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="./hot/highlighter.js.下载"></script>

<script type="text/javascript" src="./hot/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="./hot/justgage.js.下载"></script>

</head>
<body>
<div class="share-img">
    <img src="./library/share.0.4.png" width="300" height="300">
</div>

<div class="wrap">
    <div class="top-nav" data-l1="1"></div>
</div>



<div class="logo-wrap box-center" data-l1="2">
    <div class="box-center cf">
        <div class="book-shelf fr">
            <a href="http://me.qidian.com/bookCase/bookCase.aspx?caseId=-2" target="_blank" data-eid="qd_A14"><em class="iconfont shelf"></em><i>shelf</i>
            </a>
        </div>
        <div class="logo fl">
        	<img alt="" src="../static/333.jpg" width="58" height="58">
        	<font size="5">&nbsp;&nbsp;NIIT Library</font>
        </div>
        <div class="search-wrap fl">
            <form id="formUrl" action="${pageContext.request.contextPath }/BookServlet" method="get" target="_blank">
                <p>
                <input type="hidden" name="method" value="appSearch"/>
                <input class="search-box" id="s-box" name="keyWord" type="text" placeholder="java" autocomplete="off"></p>
                <input class="submit-input" type="submit" id="searchSubmit" data-eid="qd_A13">
                <label id="search-btn" class="search-btn" for="searchSubmit"><em class="iconfont" data-eid="qd_A13">
                    </em></label>
            </form>
        </div>
    </div>
</div>

<div class="main-nav-wrap" data-l1="3">
    <div class="main-nav box-center cf" id="type-hover">
        <div class="classify-list fl so-awesome" id="classify-list" data-l1="3">
</div>

        <ul>
            <li class="first"><b><strong></strong></b><span><em>
                <i></i>
                <i></i>
                <i></i>
            </em>作品分类</span>
            </li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/library.jsp" data-eid="qd_A15" >categories</a></li>
            <li class="nav-li"><a href="http://r.qidian.com/" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="http://fin.qidian.com/" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="http://f.qidian.com/" data-eid="qd_A18" class="act">Reader recommendation</a></li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/search.jsp" data-eid="qd_A19" >My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>
<div id="mainbox">
	<div id="container">
	<h5 class="box_bgcolor"><strong>hot</strong></h5>
    <p class="note">统计范围：<strong>2</strong> 个月　统计方式：<strong>借阅次数</strong>  分类：<strong>总体排行</strong></p>        
        <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
              <tbody><tr>
                <td class="greytext" width="3%" align="left"></td>
                <td class="greytext" width="25%">题名</td>
                <td class="greytext" width="20%">责任者</td>
                <td class="greytext" width="22%">出版信息</td>
                <td class="greytext" width="10%">索书号</td>
                <td class="greytext" width="5%">馆藏</td>
                <td class="greytext" width="8%">借阅册次</td>
                <td class="greytext" width="6%">借阅比</td>
              </tr>
                        <tr>
                    <td class="whitetext">1</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000642714">了不起的盖茨比</a></td>
                    <td class="whitetext">（美）费茨格拉德著</td>
                    <td class="whitetext">内蒙古人民出版社 2010-03</td>
                    <td class="whitetext">I712/2</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.6</td>
                </tr>
                        <tr>
                    <td class="whitetext">2</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000651346">幻夜</a></td>
                    <td class="whitetext">(日) 东野圭吾著</td>
                    <td class="whitetext">南海出版公司 2009</td>
                    <td class="whitetext">I313.45/203</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.6</td>
                </tr>
                        <tr>
                    <td class="whitetext">3</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895099">欧·亨利短篇小说精选</a></td>
                    <td class="whitetext">(美) 欧·亨利著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I712.44/121</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.5</td>
                </tr>
                        <tr>
                    <td class="whitetext">4</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000651507">放学后</a></td>
                    <td class="whitetext">(日)东野圭吾著</td>
                    <td class="whitetext">南海出版公司 2010</td>
                    <td class="whitetext">I313.45/196</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.6</td>
                </tr>
                        <tr>
                    <td class="whitetext">5</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000785047">苔丝</a></td>
                    <td class="whitetext">(英) 托马斯·哈代(Thomas Hardy)著</td>
                    <td class="whitetext">译林出版社 2010.09</td>
                    <td class="whitetext">I561.44/258</td>
                    <td class="whitetext">7</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.43</td>
                </tr>
                        <tr>
                    <td class="whitetext">6</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923335">中国文学史</a></td>
                    <td class="whitetext">钱基博著</td>
                    <td class="whitetext">上海古籍出版社 2011</td>
                    <td class="whitetext">I209/156</td>
                    <td class="whitetext">9</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">7</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000925770">绝世风华</a></td>
                    <td class="whitetext">雪山小小鹿著</td>
                    <td class="whitetext">新世界出版社 2016</td>
                    <td class="whitetext">I247.57/1755</td>
                    <td class="whitetext">9</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">8</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000918076">浮生六记:精装典藏本</a></td>
                    <td class="whitetext">(清) 沈复著</td>
                    <td class="whitetext">万卷出版公司 2015</td>
                    <td class="whitetext">I264.9/25</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">1</td>
                </tr>
                        <tr>
                    <td class="whitetext">9</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000925829">是非疲劳</a></td>
                    <td class="whitetext">林夕著</td>
                    <td class="whitetext">中华书局 2015</td>
                    <td class="whitetext">I267.1/1057</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">1</td>
                </tr>
                        <tr>
                    <td class="whitetext">10</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000822772">热力学·统计物理 (第五版) 学习辅导书</a></td>
                    <td class="whitetext">汪志诚</td>
                    <td class="whitetext">高等教育出版社 2013.03</td>
                    <td class="whitetext">O414/10</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">1</td>
                </tr>
                        <tr>
                    <td class="whitetext">11</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000627493">物理化学核心教程-第2版</a></td>
                    <td class="whitetext">沈文霞编</td>
                    <td class="whitetext">科学出版社 2009.08</td>
                    <td class="whitetext">O64/80</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.6</td>
                </tr>
                        <tr>
                    <td class="whitetext">12</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000091700">量子力学习题精选与剖析.上册-第2版</a></td>
                    <td class="whitetext">钱伯初，曾谨言著</td>
                    <td class="whitetext">科学出版社 1999</td>
                    <td class="whitetext">O413.1-44/1</td>
                    <td class="whitetext">19</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.16</td>
                </tr>
                        <tr>
                    <td class="whitetext">13</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000295848">药物分析学习指导</a></td>
                    <td class="whitetext">主编牛彦辉</td>
                    <td class="whitetext">人民卫生出版社 2003</td>
                    <td class="whitetext">R917/5</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.5</td>
                </tr>
                        <tr>
                    <td class="whitetext">14</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000912865">古希腊神话与传说</a></td>
                    <td class="whitetext">(德) 古斯塔夫·施瓦布著</td>
                    <td class="whitetext">北京理工大学出版社 2016.04</td>
                    <td class="whitetext">I545.73/16</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">0.5</td>
                </tr>
                        <tr>
                    <td class="whitetext">15</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000829417">傲慢与偏见</a></td>
                    <td class="whitetext">(英) 简·奥斯丁著</td>
                    <td class="whitetext">译林出版社 2010.6</td>
                    <td class="whitetext">I561.44/268</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">1</td>
                </tr>
                        <tr>
                    <td class="whitetext">16</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000604387">女权主义简史</a></td>
                    <td class="whitetext">Margaret Walters著</td>
                    <td class="whitetext">外语教学与研究出版社 2008</td>
                    <td class="whitetext">H319.4:D/7</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">17</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000277591">卡拉马佐夫兄弟</a></td>
                    <td class="whitetext">(俄)费·陀思妥耶夫斯基著</td>
                    <td class="whitetext">译林出版社 2001</td>
                    <td class="whitetext">I512.44/71</td>
                    <td class="whitetext">8</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.25</td>
                </tr>
                        <tr>
                    <td class="whitetext">18</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000620721">文学理论教程教学参考书-4版</a></td>
                    <td class="whitetext">童庆炳主编</td>
                    <td class="whitetext">高等教育出版社 2008</td>
                    <td class="whitetext">I0/97</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">19</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000785090">发条橙</a></td>
                    <td class="whitetext">(英国) 安东尼·伯吉斯著</td>
                    <td class="whitetext">译林出版社 2011.06</td>
                    <td class="whitetext">I561.45/332</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">20</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000775559">正直女孩职场受宠记</a></td>
                    <td class="whitetext">庞芳著</td>
                    <td class="whitetext">吉林出版集团有限责任公司 2012.01</td>
                    <td class="whitetext">I247.5/3530</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">21</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000729837">红楼梦</a></td>
                    <td class="whitetext">曹雪芹, 高鄂著</td>
                    <td class="whitetext">人民文学出版社 2000</td>
                    <td class="whitetext">I242.4/142</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">22</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000839990">春风十里不如你:在民国遇见最好的爱情</a></td>
                    <td class="whitetext">李清秋著</td>
                    <td class="whitetext">中国华侨出版社 2014.5</td>
                    <td class="whitetext">I25/583</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">23</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000844198">等待香港:永远的香港人:once a Hongkonger, always a Hongkonger</a></td>
                    <td class="whitetext">林奕华著</td>
                    <td class="whitetext">浙江大学出版社 2014</td>
                    <td class="whitetext">I267.1/961</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">24</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000874829">异乡人</a></td>
                    <td class="whitetext">(法) 加缪著</td>
                    <td class="whitetext">北京大学出版社 2015</td>
                    <td class="whitetext">I565.45/188</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">25</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000879311">荷马史诗·伊利亚特</a></td>
                    <td class="whitetext">(古希腊) 荷马著</td>
                    <td class="whitetext">人民文学出版社 1994</td>
                    <td class="whitetext">I545.22/12</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">26</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000886421">蛙</a></td>
                    <td class="whitetext">莫言著</td>
                    <td class="whitetext">人民文学出版社 2015</td>
                    <td class="whitetext">I247.5/4033</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">27</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000654456">撕裂:那年月，阳光灿烂</a></td>
                    <td class="whitetext">洪放著</td>
                    <td class="whitetext">文化艺术出版社 2010</td>
                    <td class="whitetext">I247.5/2155</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">28</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000667870">绑架游戏</a></td>
                    <td class="whitetext">(日) 东野圭吾著</td>
                    <td class="whitetext">上海译文出版社 2010</td>
                    <td class="whitetext">I313.45/81</td>
                    <td class="whitetext">7</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.29</td>
                </tr>
                        <tr>
                    <td class="whitetext">29</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000672749">国境以南 太阳以西</a></td>
                    <td class="whitetext">村上春树著</td>
                    <td class="whitetext">上海译文出版社 2007</td>
                    <td class="whitetext">I313.45/138</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">30</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000721853">心理罪之暗河</a></td>
                    <td class="whitetext">雷米作品</td>
                    <td class="whitetext">重庆出版社 2011</td>
                    <td class="whitetext">I247.5/2681</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">31</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000890806">生物化学复习指南暨习题解析.第8版</a></td>
                    <td class="whitetext">刘国琴, 杨海莲编著</td>
                    <td class="whitetext">中国农业大学出版社 2015</td>
                    <td class="whitetext">Q5/193</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">32</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000877814">让你的PPT制作更高效</a></td>
                    <td class="whitetext">PPT工坊编著</td>
                    <td class="whitetext">清华大学出版社 2015</td>
                    <td class="whitetext">TP391.41/2101</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">33</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000566673">计算机等级考试考点分析、题解与模拟.二级Visual Basic语言</a></td>
                    <td class="whitetext">刘志成, 刘洋波主编</td>
                    <td class="whitetext">电子工业出版社 2007</td>
                    <td class="whitetext">TP3/487</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">34</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000916456">古希腊神话与传说</a></td>
                    <td class="whitetext">(德) 施瓦布著</td>
                    <td class="whitetext">中国文联出版社 2015</td>
                    <td class="whitetext">I545.73/20</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">35</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923096">古希腊神话与传说.上</a></td>
                    <td class="whitetext">(德) 斯瓦布著</td>
                    <td class="whitetext">西安交通大学出版社 2015</td>
                    <td class="whitetext">I545.73/18</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">36</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923099">古希腊神话与传说.下</a></td>
                    <td class="whitetext">(德) 斯瓦布著</td>
                    <td class="whitetext">西安交通大学出版社 2015</td>
                    <td class="whitetext">I545.73/17</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">37</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923357">伊利亚特</a></td>
                    <td class="whitetext">(古希腊) 荷马著</td>
                    <td class="whitetext">西安交通大学出版社 2015</td>
                    <td class="whitetext">I545.22/14</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">38</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923696">千年烟月在:从唐诗走近大唐</a></td>
                    <td class="whitetext">月满天心著</td>
                    <td class="whitetext">九州出版社 2015</td>
                    <td class="whitetext">I222.742/121</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">39</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000924926">鲁迅小说集</a></td>
                    <td class="whitetext">鲁迅著</td>
                    <td class="whitetext">中州古籍出版社 2015</td>
                    <td class="whitetext">I210.6/61</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">40</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000925475">悲伤是成长的恋人</a></td>
                    <td class="whitetext">(法) 莫泊桑, 缪塞等著</td>
                    <td class="whitetext">百花洲文艺出版社 2016</td>
                    <td class="whitetext">I565.44/413</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">41</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000929569">迟桂花</a></td>
                    <td class="whitetext">郁达夫著</td>
                    <td class="whitetext">同心出版社 2013</td>
                    <td class="whitetext">I216.2/208</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">42</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000930398">田德望译神曲</a></td>
                    <td class="whitetext">(意大利) 但丁著</td>
                    <td class="whitetext">人民文学出版社 2002</td>
                    <td class="whitetext">I546.23/7</td>
                    <td class="whitetext">9</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.22</td>
                </tr>
                        <tr>
                    <td class="whitetext">43</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000917507">我与地坛</a></td>
                    <td class="whitetext">史铁生</td>
                    <td class="whitetext">人民文学出版社 2013</td>
                    <td class="whitetext">I217.62/97</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">44</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000917512">官场现形记</a></td>
                    <td class="whitetext">李宝嘉著</td>
                    <td class="whitetext">人民文学出版社 1957</td>
                    <td class="whitetext">I242.47/68</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">45</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000919161">荒淫无道隋炀帝传</a></td>
                    <td class="whitetext">宋璐璐编著</td>
                    <td class="whitetext">团结出版社 2016</td>
                    <td class="whitetext">I247.53/225</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">46</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000919620">一个人的遭遇</a></td>
                    <td class="whitetext">(苏联) 肖洛霍夫著</td>
                    <td class="whitetext">人民文学出版社 2001</td>
                    <td class="whitetext">I512.45/154</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">47</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000920362">西游记</a></td>
                    <td class="whitetext">(明) 原著吴承恩</td>
                    <td class="whitetext">机械工业出版社 2012</td>
                    <td class="whitetext">I242.4/189</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">48</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000922286">挪威的森林</a></td>
                    <td class="whitetext">村上春树著</td>
                    <td class="whitetext">上海译文出版社 2007</td>
                    <td class="whitetext">I313.45/391</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">49</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000922932">苔丝</a></td>
                    <td class="whitetext">(英) 哈代著</td>
                    <td class="whitetext">西安交通大学出版社 2015</td>
                    <td class="whitetext">I561.44/306</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">50</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000922949">雾都孤儿</a></td>
                    <td class="whitetext">(英) 狄更斯著</td>
                    <td class="whitetext">西安交通大学出版社 2015</td>
                    <td class="whitetext">I561.44/309</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">51</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000923033">红楼梦:注评本</a></td>
                    <td class="whitetext">(清) 曹雪芹, 高鹗著</td>
                    <td class="whitetext">上海古籍出版社 2014</td>
                    <td class="whitetext">I242.47/69</td>
                    <td class="whitetext">12</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.17</td>
                </tr>
                        <tr>
                    <td class="whitetext">52</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000802271">神探伽利略</a></td>
                    <td class="whitetext">(日) 东野圭吾著</td>
                    <td class="whitetext">化学工业出版社 2013</td>
                    <td class="whitetext">I313.45/338</td>
                    <td class="whitetext">4</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.5</td>
                </tr>
                        <tr>
                    <td class="whitetext">53</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000812471">内在的从容</a></td>
                    <td class="whitetext">周国平著</td>
                    <td class="whitetext">作家出版社 2013.05</td>
                    <td class="whitetext">I267/1584</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">54</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000815415">你是人间四月天</a></td>
                    <td class="whitetext">林徽因</td>
                    <td class="whitetext">电子工业出版社 2013.4</td>
                    <td class="whitetext">I216.2/178</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">55</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000835404">长恨歌</a></td>
                    <td class="whitetext">王安忆著</td>
                    <td class="whitetext">人民文学出版社 2014.05</td>
                    <td class="whitetext">I247.57/1620</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">56</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000912140">张宇考研数学题源探析经典1000题,数学二</a></td>
                    <td class="whitetext">主编张宇</td>
                    <td class="whitetext">北京理工大学出版社 2016.01</td>
                    <td class="whitetext">O13-44/358</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">57</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000731262">热学第二版习题分析与解答.第2版</a></td>
                    <td class="whitetext">宋峰, 常树人</td>
                    <td class="whitetext">高等教育出版社 2010</td>
                    <td class="whitetext">O551/14</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">58</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000604739">概率论与数理统计附册:学习辅导与习题选解</a></td>
                    <td class="whitetext">盛骤, 谢式千, 潘承毅编</td>
                    <td class="whitetext">高等教育出版社 2008</td>
                    <td class="whitetext">O21/147</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">59</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000623208">物理化学:多媒体版</a></td>
                    <td class="whitetext">葛华才，袁高清，彭程编</td>
                    <td class="whitetext">高等教育出版社 2008</td>
                    <td class="whitetext">O64/78</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">60</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000715474">大学物理学习指导</a></td>
                    <td class="whitetext">康山林, 刘华, 梁宝社主编</td>
                    <td class="whitetext">北京理工大学出版社 2011</td>
                    <td class="whitetext">O4/420</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">61</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000604631">大学物理学.电磁学-第3版</a></td>
                    <td class="whitetext">张三慧编著</td>
                    <td class="whitetext">清华大学出版社 2008</td>
                    <td class="whitetext">O4/312</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">62</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000208901">量子物理</a></td>
                    <td class="whitetext">赵凯华、罗蔚茵编</td>
                    <td class="whitetext">高等教育出版社 2001.07</td>
                    <td class="whitetext">O413/3</td>
                    <td class="whitetext">12</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.17</td>
                </tr>
                        <tr>
                    <td class="whitetext">63</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000669098">药物化学</a></td>
                    <td class="whitetext">周淑琴，李端主编</td>
                    <td class="whitetext">科学出版社 2009.12</td>
                    <td class="whitetext">R914/39</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">64</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000653223">药物化学笔记</a></td>
                    <td class="whitetext">主编张万金</td>
                    <td class="whitetext">科学出版社 2010</td>
                    <td class="whitetext">R914/33</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">65</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895104">悲惨世界</a></td>
                    <td class="whitetext">(法) 维克多·雨果著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I565.44/400</td>
                    <td class="whitetext">12</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.17</td>
                </tr>
                        <tr>
                    <td class="whitetext">66</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895106">小妇人</a></td>
                    <td class="whitetext">(美) 奥尔科特著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I712.44/122</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">67</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895112">幻灭</a></td>
                    <td class="whitetext">(法) 巴尔扎克著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I565.44/398</td>
                    <td class="whitetext">9</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.22</td>
                </tr>
                        <tr>
                    <td class="whitetext">68</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895115">福尔摩斯探案集</a></td>
                    <td class="whitetext">(英) 柯南·道尔著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I561.45/408</td>
                    <td class="whitetext">15</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.13</td>
                </tr>
                        <tr>
                    <td class="whitetext">69</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000901062">雾都孤儿</a></td>
                    <td class="whitetext">(英) 查尔斯·狄更斯著</td>
                    <td class="whitetext">商务印书馆 2015</td>
                    <td class="whitetext">I561.44/295</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">70</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000901309">城南旧事</a></td>
                    <td class="whitetext">林海音著</td>
                    <td class="whitetext">人民文学出版社 2015</td>
                    <td class="whitetext">I247.7/583</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">71</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000910985">世上所有的事与愿违，原来都是另有安排</a></td>
                    <td class="whitetext">徐琳媛主编</td>
                    <td class="whitetext">化学工业出版社 2016</td>
                    <td class="whitetext">I267/2051</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">72</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000911674">让你爱不释手的超有趣希腊神话</a></td>
                    <td class="whitetext">夏若生著</td>
                    <td class="whitetext">中国法制出版社 2016</td>
                    <td class="whitetext">I545.73/15</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">73</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000912509">我是猫</a></td>
                    <td class="whitetext">(日) 夏目漱石著</td>
                    <td class="whitetext">中国法制出版社 2016.05</td>
                    <td class="whitetext">I313.44/11</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">74</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000918834">理想国</a></td>
                    <td class="whitetext">(古希腊) 柏拉图著</td>
                    <td class="whitetext">上海译文出版社 2016</td>
                    <td class="whitetext">B502.232/61</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">75</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000899480">2017年管理类专业学位联考综合能力考试逻辑习题归类精编</a></td>
                    <td class="whitetext">周建武主编</td>
                    <td class="whitetext">中国人民大学出版社 2016</td>
                    <td class="whitetext">B81/188</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">76</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000899478">2017年管理类专业学位联考综合能力考试逻辑精选600题:20套全真试卷及详解</a></td>
                    <td class="whitetext">周建武主编</td>
                    <td class="whitetext">中国人民大学出版社 2016</td>
                    <td class="whitetext">B81/189</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">77</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000886767">形而上学</a></td>
                    <td class="whitetext">(古希腊) 亚里士多德著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">B081.1/14</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">78</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000879732">共产党宣言</a></td>
                    <td class="whitetext">马克思, 恩格斯</td>
                    <td class="whitetext">人民出版社 2014</td>
                    <td class="whitetext">A1/26</td>
                    <td class="whitetext">4</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.5</td>
                </tr>
                        <tr>
                    <td class="whitetext">79</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000715461">资本论</a></td>
                    <td class="whitetext">(德) 马克思著</td>
                    <td class="whitetext">北京理工大学出版社 2011</td>
                    <td class="whitetext">A1/21</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">80</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000565791">资本论:选读和简论</a></td>
                    <td class="whitetext">刘炳瑛选论</td>
                    <td class="whitetext">华夏出版社 2007</td>
                    <td class="whitetext">A811.23/20</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">81</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000889533">商法</a></td>
                    <td class="whitetext">杜忠连主编</td>
                    <td class="whitetext">电子工业出版社 2015</td>
                    <td class="whitetext">D923.991/21</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">82</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000931118">管理学:原理与方法(第六版)习题与案例指南</a></td>
                    <td class="whitetext">周三多，贾良定著</td>
                    <td class="whitetext">复旦大学出版社 2016</td>
                    <td class="whitetext">C93/687</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">83</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000846844">审计.第5版</a></td>
                    <td class="whitetext">刘明辉, 史德刚主编</td>
                    <td class="whitetext">东北财经大学出版社 2015</td>
                    <td class="whitetext">F239.0/93</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">84</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000929329">申论</a></td>
                    <td class="whitetext">李永新主编</td>
                    <td class="whitetext">人民日报出版社 2016</td>
                    <td class="whitetext">D630.3/405</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">85</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000910806">鄢梦萱讲商经之理论卷</a></td>
                    <td class="whitetext">鄢梦萱编著</td>
                    <td class="whitetext">中国法制出版社 2016</td>
                    <td class="whitetext">D923.99/38</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">86</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000264266">人类的艺术-2版</a></td>
                    <td class="whitetext">房龙 H.W著</td>
                    <td class="whitetext">河北教育出版社 2004.01</td>
                    <td class="whitetext">J110.9/42</td>
                    <td class="whitetext">12</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.17</td>
                </tr>
                        <tr>
                    <td class="whitetext">87</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000293395">王小波经典作品.杂文卷</a></td>
                    <td class="whitetext">王小波著</td>
                    <td class="whitetext">当代世界出版社 2005</td>
                    <td class="whitetext">I217.2/96</td>
                    <td class="whitetext">12</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.17</td>
                </tr>
                        <tr>
                    <td class="whitetext">88</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895052">动物农场</a></td>
                    <td class="whitetext">(英) 乔治·奥威尔著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I561.45/407</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">89</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895053">了不起的盖茨比</a></td>
                    <td class="whitetext">(美) 弗·司各特·菲茨杰拉德著</td>
                    <td class="whitetext">北京理工大学出版社有限责任公司 2015</td>
                    <td class="whitetext">I712.45/967</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">90</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895058">呼啸山庄</a></td>
                    <td class="whitetext">(英) 艾米莉·勃朗特著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I561.44/287</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">91</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895059">简·爱</a></td>
                    <td class="whitetext">(英) 夏洛蒂·勃朗特著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I561.44/288</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">92</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000895095">傲慢与偏见</a></td>
                    <td class="whitetext">(英) 简·奥斯丁著</td>
                    <td class="whitetext">北京理工大学出版社 2015</td>
                    <td class="whitetext">I561.44/290</td>
                    <td class="whitetext">6</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.33</td>
                </tr>
                        <tr>
                    <td class="whitetext">93</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000914443">一九八四</a></td>
                    <td class="whitetext">(英)乔治·奥威尔著</td>
                    <td class="whitetext">中国法制出版社 2016</td>
                    <td class="whitetext">I561.45/411</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">94</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000894877">苏东坡传</a></td>
                    <td class="whitetext">林语堂著</td>
                    <td class="whitetext">新世界出版社 2015</td>
                    <td class="whitetext">K825.6=441/13</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">95</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000639883">东京梦华录全译(修订版)</a></td>
                    <td class="whitetext">孟元老原著 姜汉椿译注</td>
                    <td class="whitetext">贵州人民出版社 2009-03</td>
                    <td class="whitetext">K296.13/1</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">96</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000625943">王永兴说隋唐</a></td>
                    <td class="whitetext">王永兴著</td>
                    <td class="whitetext">上海科学技术文献出版社 2009</td>
                    <td class="whitetext">K241.07/1</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">97</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000397684">陈寅恪魏晋南北朝史讲演录</a></td>
                    <td class="whitetext">万绳楠整理</td>
                    <td class="whitetext">贵州人民出版社 2007</td>
                    <td class="whitetext">K235.07/4</td>
                    <td class="whitetext">5</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.4</td>
                </tr>
                        <tr>
                    <td class="whitetext">98</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000792183">普通物理学.上册.第6版</a></td>
                    <td class="whitetext">程守洙，江之永主编</td>
                    <td class="whitetext">高等教育出版社 2012</td>
                    <td class="whitetext">O4/464</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">99</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000842828">光学教程（第五版）学习指导书</a></td>
                    <td class="whitetext">宣桂鑫编著</td>
                    <td class="whitetext">高等教育出版社 2014</td>
                    <td class="whitetext">O43/64</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                        <tr>
                    <td class="whitetext">100</td>
                    <td class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000911688">电动力学</a></td>
                    <td class="whitetext">罗春荣,丁昌林,段利兵编著</td>
                    <td class="whitetext">电子工业出版社 2016</td>
                    <td class="whitetext">O442/15</td>
                    <td class="whitetext">3</td>
                    <td class="whitetext">2</td>
                    <td class="whitetext">0.67</td>
                </tr>
                </tbody></table>	
	<div class="clear"></div><br>
<br>
<br>

    </div>
</div><div id="footer"><div id="copy"><p> NIIT Library&nbsp;&nbsp;   &nbsp;&nbsp;</p><p>© 1999-2015 <a target="_blank" href="">NIIT</a></p></div></div></body></html>