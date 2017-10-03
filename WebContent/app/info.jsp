<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>info </title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/font-awesome.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/info/reader-info.css">
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath }/app/library/Button.0.79.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Autocomplete.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/app/library/Popup.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/app/info/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/info/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/info/highlighter.js.下载"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/app/info/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/info/justgage.js.下载"></script>
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
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot" data-eid="qd_A17">Hot books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/RecommendServlet?method=getAll" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername" target="_blank" data-eid="qd_A19" class="act">My library</a>
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
		<li id="nav_mylibhome"><a href="javascript:void(0)">Credential information</a></li><li><a href="${pageContext.request.contextPath }/StudentServlet?method=findCurrentBorrow">Current borrowing</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findHistoryBorrow">Borrowing history</a></li><li><a href="${pageContext.request.contextPath}/RecommendServlet?method=listRecommend">Recommended history</a></li>
		<li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findOverdue">Overdue books</a></li>
     	<li><a href="${pageContext.request.contextPath }/ReservationServlet?method=listshelf2">my reservation</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findLost">lost books</a></li>
     </ul>
  </div>
  
  <div id="mylib_content">
  	<h2>Credential information</h2><br><br>
	<div class="mylib_msg">
		<a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findOverdue">Overdue books[<strong style="color:#F00;">${requestScope.overdue }</strong>]</a>
     	<br><br> 
   	</div>
    <div id="mylib_info">
	<table width="100%" border="0" cellpadding="5" cellspacing="1" style="padding:8px">
				  <tbody>
				  <c:choose>
				  	<c:when test="${requestScope.student!=null }">
				  		<tr>
						  <td rowspan="6">
                          <span style="padding-left:20px;"><img src="${pageContext.request.contextPath }/app/info/libimg.png" border="0"></span><br>
						   	<input type="button" class="btn btn-success" value="change password" onclick="changepwd()">
				
						  </td>
						  <td><span class="bluetext">name：</span>${student.name }</td>
						  <td><span class="bluetext">sex：</span>${student.sex }</td>
						  <td><span class="bluetext">username： </span>${student.username }</td>
				  		</tr>
	                    <tr>
		                  <td><span class="bluetext">class：</span>${student.stu_class }</td>
		                  <td><span class="bluetext">phone：</span>${student.phone }</td>
		                  <td>
		                  	<span class="bluetext">
		                  		<c:choose>
		                  			<c:when test="${requestScope.overdue==0 }">
		                  				state：available
		                  			</c:when>
		                  			<c:otherwise>
		                  				state:unavailable
		                  			</c:otherwise>
		                  		</c:choose>
		                  	</span>
		                  </td>
	                    </tr>
                        <tr>
		                  <td><span class="bluetext">current book：</span>${bookCount }</td>
		            
		                  <td><span class="bluetext">address：</span>${student.address }</td>
                  		</tr>
			      		<tr>
			      		  <td><span class="bluetext">max book：</span>${student.max_book }</td>
			      		  <td><span class="bluetext">email：</span>${student.email }</td>
				  		</tr>
				  </c:when>
				  <c:otherwise>
				  	 <tr>
					<td rowspan="6">
			        <span style="padding-left:20px;"><img src="${pageContext.request.contextPath }/app/info/libimg.png" border="0"></span><br>
						
			        </td>
						<td><span class="bluetext">name：</span>${teacher.name }</td>
						<td><span class="bluetext">sex：</span>${teacher.sex }</td>
						<td><span class="bluetext">username： </span>${teacher.username }</td>
				  </tr>
                  <tr>
	                  <td><span class="bluetext">class：</span>${teacher.teacher_class }</td>
	                  <td><span class="bluetext">phone：</span>${teacher.phone }</td>
	                  <td>
		                  	<span class="bluetext">
		                  		<c:choose>
		                  			<c:when test="${requestScope.overdue==0 }">
		                  				state：available
		                  			</c:when>
		                  			<c:otherwise>
		                  				state:unavailable
		                  			</c:otherwise>
		                  		</c:choose>
		                  	</span>
		                  </td>
                  </tr>
                  <tr>
	                  <td><span class="bluetext">current book：</span>${bookCount }</td>
	                
	                  <td><span class="bluetext">address：</span>${teacher.address }</td>
                  </tr>
			      <tr>
			      		<td><span class="bluetext">max book：</span>${teacher.max_book }</td>
			      		<td><span class="bluetext">email：</span>${teacher.email }</td>
				  </tr>
				  </c:otherwise>
				  </c:choose>
				 </tbody>
				 </table>
    </div>
	<h2><span id="ruleSpan" title="点击展开详细规则信息" onclick="toggle()" style="height:66px;cursor:hand;">Lending rules</span><img src="${pageContext.request.contextPath }/app/info/arrow_down.gif"></span></h2>
    <table id="rule" width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line" style="display: table;">
		<tbody><tr>
        <td width="125" class="greytext">User</td>
    

        <td width="78" align="center" class="greytext">max borrow</td>
        <td width="31" align="center" class="greytext">book time</td>
        <td width="43" align="center" class="greytext">reservation</td>
        <td width="43" align="center" class="greytext">renew</td>
        <td width="43" align="center" class="greytext">pay for lost</td>
      </tr>
				<tr>
			<td class="whitetext" width="125">student</td>

		  <td align="center" class="whitetext" width="31">5</td>
		  <td align="center" class="whitetext" width="31">3 months</td>
		  <td align="center" class="whitetext" width="43">allow</td>
		  <td align="center" class="whitetext" width="43">allow</td>
		  <td align="center" class="whitetext" width="43">price*3</td>
		</tr>
				<tr>
			<td class="whitetext" width="125">teacher</td>
		
		  <td align="center" class="whitetext" width="31">10</td>
		  <td align="center" class="whitetext" width="31">3 months</td>
		  <td align="center" class="whitetext" width="43">allow</td>
		  <td align="center" class="whitetext" width="43">allow</td>
		  <td align="center" class="whitetext" width="43">price*2</td>
		</tr>
		    </tbody></table>
  </div>
  <div class="clear"></div>
</div>
<script type="text/javascript">

$("#rule").hide();
function toggle(){ 
	$("#rule").toggle();
}
function changepwd(){
	window.location.href="${pageContext.request.contextPath}/app/changepwd.jsp";
}

</script>
<div id="footer"><div id="copy"><p> NIIT Library&nbsp;&nbsp;  &nbsp;&nbsp;</p><p>© 1999-2015 <a target="_blank" href="">NIIT</a></p></div></div></div></body></html>