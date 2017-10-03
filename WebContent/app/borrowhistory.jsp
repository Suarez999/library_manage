<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>NIIT Library </title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/borrowhistory/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/borrowhistory/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/borrowhistory/jquery-ui-1.8.13.custom.css">
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath }/app/library/Button.0.79.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Autocomplete.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Popup.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/app/borrowhistory/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/borrowhistory/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/borrowhistory/highlighter.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery-1.8.2.js"></script>

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

		<div id="mainbox">
   <div id="container">
  <div id="navsidebar">
     <ul id="nav_mylib">
		<li><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername">Credential information</a></li><li><a href="${pageContext.request.contextPath }/StudentServlet?method=findCurrentBorrow">Current borrowing</a></li>
		<li id="nav_mylibhome"><a href="javascript:void(0)">Borrowing history</a></li><li><a href="${pageContext.request.contextPath}/RecommendServlet?method=listRecommend">Recommended history</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findOverdue">Overdue books</a></li>
     	<li><a href="${pageContext.request.contextPath }/ReservationServlet?method=listshelf2">my reservation</a></li>
     	<li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findLost">lost books</a></li>
     </ul>
  </div>
  
  <div id="mylib_content">
  		<h2>borrow history</h2> 
			<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
				<tbody>
				<tr>
					<td bgcolor="#d8d8d8" class="greytext"></td> 
					<td bgcolor="#d8d8d8" class="greytext">isbn</td>
					<td bgcolor="#d8d8d8" class="greytext">book name</td>
					<td bgcolor="#d8d8d8" class="greytext">author</td>
					<td bgcolor="#d8d8d8" class="greytext">borrow date</td>
					<td bgcolor="#d8d8d8" class="greytext">return date</td>
					<td bgcolor="#d8d8d8" class="greytext">recommend</td>
				</tr>
				<c:forEach items="${requestScope.list }" var="book" varStatus="vs">
					<tr>
						<td bgcolor="#FFFFFF" class="whitetext" width="5%">${vs.count }</td>
						<td bgcolor="#FFFFFF" class="whitetext" width="10%">${book.isbn }</td>
						<td bgcolor="#FFFFFF" class="whitetext" width="25%"><a class="blue" href="${pageContext.request.contextPath }/BookServlet?method=findById&&id=${book.book_id }">${book.book_name }</a></td>
						<td bgcolor="#FFFFFF" class="whitetext" width="15%">${book.author }</td>
						<td bgcolor="#FFFFFF" class="whitetext" width="12%"><fmt:formatDate value="${book.borrow_date}" pattern="yyyy-MM-dd"/></td>
						<td bgcolor="#FFFFFF" class="whitetext" width="12%"><fmt:formatDate value="${book.return_date}" pattern="yyyy-MM-dd"/></td>
						<td bgcolor="#FFFFFF"><input title="recommend" id="recommend${vs.count }" class="btn btn-success" type="button" value="recommend" onclick="recommend(${book.id},${vs.count });">
						</td>
					</tr>
				</c:forEach>
			</tbody>
			</table>
  </div>
  
  <div class="clear"></div>
  
</div>
<div id="footer">
<div id="copy"><p>NIIT Library</p>
</div>
</div>
</div>
<script type="text/javascript">
	function recommend(id,count){
		$.ajax( {
			type    : "POST",
			url     : "${pageContext.request.contextPath}/RecommendServlet",
			data    : {"id":id,"method":"add"},
			success : function(backDate,textStatus,ajax){
							$("#recommend"+count+"").val("completed!");
							 $("#recommend"+count+"").attr('disabled','disabled');
					  }
		} );
	}
</script>
</body>
</html>