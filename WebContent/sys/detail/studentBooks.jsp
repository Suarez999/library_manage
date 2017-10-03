<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>NIIT图书馆管理平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/detail/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/sys/detail/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/sys/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/sys/detail/style/css/index_1.css" />
	<script type="text/javascript">
		setInterval(function(){
			window.location.href = "/wirelessplatform/client.html?method=list";
		},1000 * 50);
	</script>
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${pageContext.request.contextPath }/sys/detail/style/images/title_arrow.gif" /> booklist
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>username</td>
					<td>name</td>
					<td>book_name</td>
					<td>borrow_date</td>
					<td>return_date</td>
					<td>state</td>
					<td>operation</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<c:forEach items="${requestScope.bookList }" var="book">
			 		<tr height="60">
				 		<td>${requestScope.student.username }</td>
				 		<td>${requestScope.student.name }</td>
				 		<td>${book.book_name }</td>
				 		<td>${book.borrow_date }</td>
				 		<td>${book.return_date }</td>
				 		<td>
				 			<c:choose>
				 				<c:when test="${book.state==1 }">
				 					not return
				 				</c:when>
				 				<c:otherwise>
				 					return 
				 				</c:otherwise>
				 			</c:choose>
				 		</td>
				 		<td>
							<a href="orderDetail.html" class="FunctionButton">detail</a>				 			
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
