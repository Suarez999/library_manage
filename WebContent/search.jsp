<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>NIIT图书管理系统 </title>
<link type="text/css" rel="stylesheet" href="./search/style.css">
<link type="text/css" rel="stylesheet" href="./search/mylib.css">
<link type="text/css" rel="stylesheet" href="./search/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="./search/font-awesome.css">
<link type="text/css" rel="stylesheet" href="./search/bootstrap.css">
<link type="text/css" rel="stylesheet" href="./search/reader-info.css">



    
<link rel="stylesheet" data-ignore="true" href="./library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="./library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="./library/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="./library/Popup.css">
<script type="text/javascript" src="./search/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="./search/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="./search/highlighter.js.下载"></script>

<script type="text/javascript" src="./search/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="./search/justgage.js.下载"></script>

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
        	<img alt="" src="static/333.jpg" width="58" height="58">
        	<font size="5">&nbsp;&nbsp;NIIT Library</font>
        </div>
        <div class="search-wrap fl">
            <form id="formUrl" action="http://se.qidian.com/" method="get" target="_blank">
                <p><input class="search-box" id="s-box" name="kw" type="text" placeholder="java" autocomplete="off"></p>
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
            <li class="nav-li"><a href="" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/app/hot.jsp" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="" target="_blank" data-eid="qd_A19" class="act">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>

		<div id="mainbox">
   <div id="container">
  <div id="navsidebar">
     <ul id="nav_mylib">
     	<li><a href="http://localhost:8080/library_manage/app/info.jsp">Credential information</a></li><li><a href="http://210.28.182.152:8080/reader/book_lst.php">Current borrowing</a></li><li id="nav_mylibhome"><a href="http://210.28.182.152:8080/reader/book_hist.php">Borrowing history</a></li><li><a href="http://210.28.182.152:8080/reader/asord_lst.php">Recommended history</a></li><li><a href="http://210.28.182.152:8080/reader/preg.php">reservation information</a></li>
     	<li><a href="http://210.28.182.152:8080/reader/relegate.php">Entrusted information</a></li><li><a href="http://210.28.182.152:8080/reader/book_shelf.php">my bookshelf</a></li><li><a href="http://210.28.182.152:8080/reader/book_loss.php">lost books</a></li><li><a href="http://210.28.182.152:8080/reader/redr_lost.php">The loss of readers</a></li><li><a href="http://210.28.182.152:8080/reader/account.php">list of accounts</a></li><li><a href="http://210.28.182.152:8080/reader/fine_pec.php">Illegal payment</a></li><li><a href="http://210.28.182.152:8080/reader/book_rv.php">My book review</a></li><li><a href="http://210.28.182.152:8080/reader/search_hist.php">Search History</a></li><li><a href="http://210.28.182.152:8080/reader/reader_curriculum.php"> my course</a></li><li><a href="http://210.28.182.152:8080/reader/credit_detail.php">My points</a></li>
     </ul>
  </div>
  
  <div id="mylib_content">
  		<h2>Borrowing history</h2>
      			
      <form action="http://210.28.182.152:8080/reader/book_hist.php?page=1" method="post" name="frm_hist" id="f">
      	<p style=" margin:10px auto;">
       		&nbsp;&nbsp;&nbsp; last page <b><font color="red">1</font> / <font color="black">2</font></b> &nbsp;<a class="blue" href="http://210.28.182.152:8080/reader/book_hist.php?page=2">next page</a> To <select name="topage" size="1" onchange="window.location=&quot;/reader/book_hist.php?page=&quot;+this.value">
<option value="1" selected="">1</option>
<option value="2">2</option>
</select>page</p>
     </form>  
			<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
				<tbody><tr>
					<td bgcolor="#d8d8d8" class="greytext"></td> 
					<td bgcolor="#d8d8d8" class="greytext">ISBN</td>
					<td bgcolor="#d8d8d8" class="greytext">name</td>
					<td bgcolor="#d8d8d8" class="greytext">author</td>
					<td bgcolor="#d8d8d8" class="greytext">borrow date</td>
					<td bgcolor="#d8d8d8" class="greytext">return date</td>
					<td bgcolor="#d8d8d8" class="greytext">collection sites</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">1</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21243129</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000730432">ASP.NET网络开发指南</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">王岩编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-03</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">2</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21005185</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000389973">ASP+Access网站开发实例精讲</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">龙马工作室编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-03</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">3</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21437618</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000879882">ASP.NET MVC项目开发教程</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">朱勇主编</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-03</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-05-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">老馆教育计算机专业库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">4</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21497163</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000911674">让你爱不释手的超有趣希腊神话</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">夏若生著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-12-22</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-01-11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">老馆语言文学专业库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">5</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21540745</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000922286">挪威的森林</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">村上春树著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-12-22</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-01-11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">老馆语言文学专业库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">6</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21206263</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000755971">芒果街上的小屋.第2版</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">桑德拉·希斯内罗丝</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-12-22</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2017-01-11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">7</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21236281</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000812140">编程大师访谈录:interviews with 19 programmers who shaped the computer industry</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">(美) Susan Lammers著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-12-06</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-12-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">新馆二楼借阅处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">8</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21158502</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000717842">悲喜边缘的旅馆</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">(美) 杰米·福特著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-24</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-06-17</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">9</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21403822</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000873839">Java Web案例教程</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">主编孙利</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-06-17</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">老馆教育计算机专业库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">10</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21224807</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000733595">实战突击.Java Web项目整合开发</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">陈丹丹, 王国辉, 朱晓等编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-06-17</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">11</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21286558</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000815688">Android游戏开发案例与关键技术</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">郑萌等编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-04-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-10</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21287140</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000815779">Java EE核心技术与应用</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">郝玉龙, 周旋著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-04-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-10</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">13</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">20858500</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000329045">JavaScript高级程序设计</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">Nicholas C. Zakas著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-01-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-05-10</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合借书处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">14</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">20913418</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000390105">即用即查XML数据标记语言参考手册</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">左伟明编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-01-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-04-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合借书处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">15</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">20974280</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000566791">Ajax模式与最佳实践</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">(美) Christian Gross著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-01-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2016-04-12</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">新馆四楼借阅处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">16</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21317637</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000828766">Java编程兵书</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">桂颖, 任昱衡编著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-11-24</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-12-18</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">17</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">20805258</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000292606">大清十五疑案</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">阚红柳编</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-11-24</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-12-18</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合借书处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">18</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21308048</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000818345">跟我说爱我</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">刘文华著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-10-30</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-11-06</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">19</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21222165</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000787312">假如没有遇见你</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">云思遥著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-10-30</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-11-06</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">新馆二楼借阅处</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF" class="whitetext" width="5%">20</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="10%">21322271</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000785042">雾都孤儿</a></td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">(英)查尔斯·狄更斯著</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-10-24</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="12%">2014-11-06</td>
					<td bgcolor="#FFFFFF" class="whitetext" width="15%">综合楼书库</td>
				</tr>
			</tbody></table>
  </div>
  
  <div class="clear"></div>
  
</div><div id="footer"><div id="copy"><p> NIIT&nbsp;&nbsp; &nbsp;&nbsp;</p><p>© 1999-2015 <a target="_blank" href="http://www.libsys.com.cn/">NIIT</a></p></div></div></div></body></html>