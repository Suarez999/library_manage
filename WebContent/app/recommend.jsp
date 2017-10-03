<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>NIIT Library </title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/currentbooks/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/currentbooks/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/currentbooks/jquery-ui-1.8.13.custom.css">
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath }/app/library/Button.0.79.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Popup.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/app/currentbooks/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/currentbooks/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/currentbooks/highlighter.js.下载"></script>
</head>
<body>
<div class="share-img">
    <img src="./library/share.0.4.png" width="300" height="300">
</div>

<div class="wrap">
     <div  data-l1="1" style="float:right;text-size:6">
    	<font size="4">hello,<font color="red">${sessionScope.userName }</font></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<a href="${pageContext.request.contextPath }/BookServlet?method=logout"><font size="3">logout</font></a>
    </div>
</div>



<div class="logo-wrap box-center" data-l1="2">
    <div class="box-center cf">
        <div class="book-shelf fr">
            <a href="${pageContext.request.contextPath }/ReservationServlet?method=list" target="_blank" data-eid="qd_A14"><em class="iconfont shelf"></em><i>shelf</i>
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
            </em></span>
            </li>
             <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=list" data-eid="qd_A15">categories</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=findNew" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot" data-eid="qd_A17" >Hot books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/RecommendServlet?method=getAll">Reader recommendation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername" target="_blank" data-eid="qd_A19"  class="act">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>


		<script language="JavaScript" type="text/javascript">
	$(function(){
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	});
</script>

<div id="mainbox">
   <div id="container">
  <div id="navsidebar">
     <ul id="nav_mylib">
     	<li><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername">Credential information</a></li><li><a href="${pageContext.request.contextPath }/StudentServlet?method=findCurrentBorrow">Current borrowing</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findHistoryBorrow">Borrowing history</a></li><li id="nav_mylibhome"><a href="javascript:void(0)">Recommended history</a></li>
     	<li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findOverdue">Overdue books</a></li>
     	<li><a href="${pageContext.request.contextPath }/ReservationServlet?method=listshelf2">my reservation</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findLost">lost books</a></li>
     </ul>
  </div>
  
  <div id="mylib_content">
       <!--  <div class="alert">
          <strong>超期！不得renew！</strong>
        </div>
         -->
  		<p style="text-align:center; font-size:14px; color:#F00;"></p>
  		<h2>recommend history</h2>
       <p style="margin:10px auto;">&nbsp;&nbsp;my recommendation</p>
       
			<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
				<tbody>
				<tr>
					<td class="greytext">isbn</td>
					<td class="greytext">book name</td>
					<td class="greytext">author</td>
					<td class="greytext">product</td>
					
					
				</tr>
				<c:forEach items="${requestScope.list }" var="book" varStatus="vs">
					<tr>
						<td class="whitetext" width="13%">${book.isbn }</td>
						<td class="whitetext" width="13%"><a class="blue" href="${pageContext.request.contextPath }/BookServlet?method=findById&&id=${book.book_id }">${book.book_name }</a></td>
						<td class="whitetext" width="13%">${book.author }</td>
						<td class="whitetext" width="13%">${book.product }</td>
					
					</tr>
				</c:forEach>
			</tbody>
			</table>
			
  </div>


  <div class="clear"></div>
</div>

<script type="text/javascript">

function getInLib(){ 
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			modal: true,
			buttons: {
	        "确定": function() {
	          $(this).dialog("close");
	          $("#" + num).load('ajax_renew.php?bar_code=' + barcode + "&check=" + check + "&captcha=" + $("#captcha").val() + "&time=" + new Date().getTime());
	        }
	      } 
		});
		$("#dialog-form").dialog("open");
		
}

</script>
<div id="footer"><div id="copy"><p>NIIT Library</p></div></div></div></body></html>