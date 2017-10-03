<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>fine </title>
<link type="text/css" rel="stylesheet" href="./fine/style.css">
<link type="text/css" rel="stylesheet" href="./fine/mylib.css">
<link type="text/css" rel="stylesheet" href="./fine/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="./fine/font-awesome.css">
<link type="text/css" rel="stylesheet" href="./fine/bootstrap.css">
<link type="text/css" rel="stylesheet" href="./fine/reader-info.css">
<link rel="stylesheet" data-ignore="true" href="../library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="../library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="../library/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="../library/Popup.css">
<script type="text/javascript" src="./fine/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="./fine/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="./fine/highlighter.js.下载"></script>

<script type="text/javascript" src="./fine/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="./fine/justgage.js.下载"></script>

</head>
<body>
<div class="share-img">
    <img src="./library/share.0.4.png" width="300" height="300">
</div>

<div class="wrap">
    <div class="top-nav" data-l1="1">
    <div class="box-center cf">
    </div>
</div>


<div class="logo-wrap box-center" data-l1="2">
    <div class="box-center cf">
        <div class="book-shelf fr">
            <a href="http://me.qidian.com/bookCase/bookCase.aspx?caseId=-2" target="_blank" data-eid="qd_A14"><em class="iconfont shelf"></em><i>shelf</i>
            </a>
        </div>
        <div class="logo fl">
        	<img alt="" src="${pageContext.request.contextPath }/static/333.jpg" width="58" height="58">
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
            <li class="nav-li"><a href="" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A18" class="act">Reader recommendation</a></li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/search.jsp" data-eid="qd_A19" >My library</a>
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
     	<li><a href="http://210.28.182.152:8080/reader/redr_info.php">my home</a></li><li><a href="http://210.28.182.152:8080/reader/redr_info_rule.php">Credential information</a></li><li><a href="http://210.28.182.152:8080/reader/book_lst.php">Current borrowing</a></li><li><a href="http://210.28.182.152:8080/reader/book_hist.php">Borrowing history</a></li><li><a href="http://210.28.182.152:8080/reader/asord_lst.php">Recommended history</a></li><li><a href="http://210.28.182.152:8080/reader/preg.php">reservation information</a></li>
     	<li><a href="http://210.28.182.152:8080/reader/relegate.php">Entrusted information</a></li><li><a href="http://210.28.182.152:8080/reader/book_shelf.php">my bookshelf</a></li><li><a href="http://210.28.182.152:8080/reader/book_loss.php">lost books</a></li><li><a href="http://210.28.182.152:8080/reader/redr_lost.php">The loss of readers</a></li><li><a href="http://210.28.182.152:8080/reader/account.php">list of accounts</a></li><li id="nav_mylibhome"><a href="http://210.28.182.152:8080/reader/fine_pec.php">Illegal payment</a></li><li><a href="http://210.28.182.152:8080/reader/book_rv.php">My book review</a></li><li><a href="http://210.28.182.152:8080/reader/search_hist.php">Search History</a></li><li><a href="http://210.28.182.152:8080/reader/reader_curriculum.php"> my course</a></li><li><a href="http://210.28.182.152:8080/reader/credit_detail.php">My points</a></li>
     </ul>
  </div>
  
  <div id="mylib_content">
  		<h2>违章缴款</h2>
        <p>
 			</p><p style="margin:50px auto; text-align:center;"><span><img src="./fine/icon_err.jpg"></span>
 			<strong class="iconerr">您的违章记录为空！</strong></p>
            <p>
                              </p><h2>欠款信息</h2>
                <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
                            <tbody><tr>
                                <td bgcolor="#d8d8d8" class="greytext" width="50">条码号</td>
                              <td bgcolor="#d8d8d8" class="greytext" width="10%">索书号</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="20%">题名</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="10%">责任者</td>
                              	<td bgcolor="#d8d8d8" class="greytext" width="100">借阅日</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="100">应还日</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="10%">馆藏地</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="5%" align="right">应缴</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="5%" align="right">实缴</td>
                                <td bgcolor="#d8d8d8" class="greytext" width="80">状态</td>
                            </tr>
                                            <tr>
                                <td bgcolor="#FFFFFF" class="whitetext">20858500</td>
                                <td bgcolor="#FFFFFF" class="whitetext">TP312JA/219</td> 
                                <td bgcolor="#FFFFFF" class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000329045">JavaScript高级程序设计</a></td>   
                                <td bgcolor="#FFFFFF" class="whitetext">Nicholas C. Zakas著</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-01-12</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-03-21        </td>
                                <td bgcolor="#FFFFFF" class="whitetext">综合借书处</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">5.00</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">0.00</td>
                                <td bgcolor="#FFFFFF" class="whitetext">未处理</td>
                            </tr>
                                            <tr>
                                <td bgcolor="#FFFFFF" class="whitetext">20913418</td>
                                <td bgcolor="#FFFFFF" class="whitetext">TP312XM/10</td> 
                                <td bgcolor="#FFFFFF" class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000390105">即用即查XML数据标记语言参考手册</a></td>   
                                <td bgcolor="#FFFFFF" class="whitetext">左伟明编著</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-01-12</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-03-21        </td>
                                <td bgcolor="#FFFFFF" class="whitetext">综合借书处</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">2.20</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">0.00</td>
                                <td bgcolor="#FFFFFF" class="whitetext">未处理</td>
                            </tr>
                                            <tr>
                                <td bgcolor="#FFFFFF" class="whitetext">20974280</td>
                                <td bgcolor="#FFFFFF" class="whitetext">TP393.09/42</td> 
                                <td bgcolor="#FFFFFF" class="whitetext"><a class="blue" href="http://210.28.182.152:8080/opac/item.php?marc_no=0000566791">Ajax模式与最佳实践</a></td>   
                                <td bgcolor="#FFFFFF" class="whitetext">(美) Christian Gross著</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-01-12</td>
                                <td bgcolor="#FFFFFF" class="whitetext">2016-03-21        </td>
                                <td bgcolor="#FFFFFF" class="whitetext">新馆四楼借阅处</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">2.20</td>
                                <td bgcolor="#FFFFFF" class="whitetext" align="right">0.00</td>
                                <td bgcolor="#FFFFFF" class="whitetext">未处理</td>
                            </tr>
                                        </tbody></table><p></p>
                        

</div>
  <div class="clear"></div>
</div>
<div id="footer"><div id="copy"><p> NIIT Library&nbsp;&nbsp;  &nbsp;&nbsp;</p><p>© 1999-2015 <a target="_blank" href="">NIIT</a></p></div></div></div></body></html>