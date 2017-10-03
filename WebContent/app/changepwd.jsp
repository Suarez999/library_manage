<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>NIIT Library </title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/changepwd/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/changepwd/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/app/changepwd/jquery-ui-1.8.13.custom.css">
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath }/app/library/Button.0.79.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/app/changepwd/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/changepwd/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/changepwd/highlighter.js.下载"></script>
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
            </em>作品分类</span>
            </li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=list" data-eid="qd_A15">categories</a></li>
            <li class="nav-li"><a href="http://r.qidian.com/" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="http://fin.qidian.com/" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/RecommendServlet?method=getAll" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="http://write.qq.com/public/login.html" target="_blank" data-eid="qd_A19" class="act">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>


		<script language="JavaScript">

function checkfrm()
{
	if (frm_pwd.old_passwd.value==""){
		alert ("请输入旧密码！");
		return false;
	}
	if (frm_pwd.new_passwd.value==""){
		alert ("please enter old password！");
		return false;
	}
	if (frm_pwd.chk_passwd.value==""){
		alert ("please enter new password！");
		return false;
	}
 
	if (frm_pwd.chk_passwd.value!=frm_pwd.new_passwd.value){
		alert ("new password is not same as new password！");
		return false;
	}
	return true;
}	

</script>


<div id="mainbox">
   <div id="container">
    <div id="navsidebar">
     <ul id="nav_mylib">
		<li id="nav_mylibhome"><a href="javascript:void(0)">Credential information</a></li><li><a href="${pageContext.request.contextPath }/StudentServlet?method=findCurrentBorrow">Current borrowing</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findHistoryBorrow">Borrowing history</a></li><li><a href="${pageContext.request.contextPath}/RecommendServlet?method=listRecommend">Recommended history</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findOverdue">Overdue books</a></li>
     	<li><a href="${pageContext.request.contextPath }/ReservationServlet?method=listshelf2">my reservation</a></li><li><a href="${pageContext.request.contextPath }/BorrowbookServlet?method=findLost">lost books</a></li>
     </ul>
  </div>
 
  <div id="mylib_content">
  		<h2>修改密码</h2>
  	  	<div style="float:left; width:300px;">
		<form action="${pageContext.request.contextPath }/StudentServlet?method=changePwd" method="POST" name="frm_pwd" onsubmit="return checkfrm()">
				<table width="290" border="0" cellpadding="3" cellspacing="2">
				  <tbody>
				  <tr>
				    <td align="right">new password：</td>
				    <td align="left"><input class="input" name="new_passwd" type="password" size="20" value=""></td>
				  </tr>
				  <tr>
				    <td align="right">confirm password：</td>
				    <td align="left"><input class="input" name="chk_passwd" type="password" size="20" value=""></td>
				  </tr>
				  <tr>
				  	<td></td>
				    <td height="26" colspan="2"><input type="submit" name="submit1" class="btn btn-success" value="sure"> <input type="reset" value="reset" class="btn"></td>
				    </tr>
				    <tr>
				    	<td colspan="2"><font color="red">${requestScope.tip }</font></td>
				    </tr>
				</tbody></table>
		</form>				
	</div>
	
  
  </div>    
  <div class="clear"></div>
</div>
<div id="footer"><div id="footer"><div id="copy"><p> NIIT Library&nbsp;&nbsp;  &nbsp;&nbsp;</p><p>© 1999-2015 <a target="_blank" href="">NIIT</a></p></div></div></div></body></html>