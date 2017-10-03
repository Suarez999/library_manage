<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<!-- 包含公共的JSP代码片段 -->
	
<title>NIIT图书馆管理平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/sys/detail/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/sys/detail/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath}/sys/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/sys/detail/style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="${pageContext.request.contextPath}/sys/detail/style/images/title_arrow.gif"/> fine list
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<div style="width:600px;float:left;">
			<form action="${pageContext.request.contextPath }/BorrowbookServlet" method="get">
				<input type="hidden" name="method" value="payFine">
				<c:choose>
					<c:when test="${pb.keyWord!=null }">
						<input type="text" name="keyWord" value="${pb.keyWord }">
					</c:when>
					<c:otherwise>
						<input type="text" name="keyWord" title="enter book name">
					</c:otherwise>
				</c:choose>
				<input type="submit" value="search">
			</form>
		</div>
		<div style="width:200px;float:right;">
			<c:choose>
				<c:when test="${requestScope.pb.keyWord!=null }">
					<a href="${pageContext.request.contextPath }/BorrowbookServlet?currentPage=${requestScope.pb.currentPage-1}&&method=payFine&&keyWord=${pb.keyWord }">last page</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/BorrowbookServlet?currentPage=${requestScope.pb.currentPage-1}&&method=payFine">last page</a>
				</c:otherwise>
			</c:choose>
			${requestScope.pb.currentPage }/${requestScope.pb.totalPage }
			<c:choose>
				<c:when test="${requestScope.pb.keyWord!=null }">
					<a href="${pageContext.request.contextPath }/BorrowbookServlet?currentPage=${requestScope.pb.currentPage+1}&&method=payFine&&keyWord=${pb.keyWord }">next page</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/BorrowbookServlet?currentPage=${requestScope.pb.currentPage+1}&&method=payFine">next page</a>
				</c:otherwise>
			</c:choose>
		</div>
</div>

<div ></div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">

    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
        	<tr><td colspan="5"><font color="red" size="5">${requestScope.tip }</font></td></tr>
            <tr align="center" valign="middle" id="TableTitle">
				<td>user name</td>
				<td>isbn</td>
				<td>book name</td>
				<td>author</td>
				<td>publisher</td>
				<td>borrow_date</td>
				<td>expiration_date</td>
				<td>fine</td>
				<td>operation</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
			<c:forEach items="${pb.pageData }" var="item">
				<tr class="TableDetail1">
					<td align="center">${item.username }&nbsp;</td>
					<td align="center">${item.isbn }&nbsp;</td>
					<td align="center">${item.book_name }</td>
					<td align="center">${item.author }</td>
					<td align="center">${item.product }&nbsp;</td>
					<td align="center">${item.borrow_date }&nbsp;</td>
					<td align="center">${item.expiration_date }&nbsp;</td>
					<td align="center">${item.fine }&nbsp;</td>
					<td>
						&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/BorrowbookServlet?method=payBook&&id=${item.id }&&userName=${item.username}" class="FunctionButton">pay</a>				
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/BorrowbookServlet?method=reject&&id=${item.id}" onClick="return delConfirm();"class="FunctionButton">reject</a>				
					</td>
				</tr>
			</c:forEach>
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
    </div> 
</div>
</body>
</html>