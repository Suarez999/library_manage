<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${pageContext.request.contextPath }/sys/detail/style/images/title_arrow.gif" /> student user
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	<!-- 过滤条件 -->
	<div id="QueryArea">
		<div style="width:600px;float:left;">
			<form action="${pageContext.request.contextPath }/StudentServlet?method=search" method="get">
				<input type="hidden" name="method" value="search">
				<c:choose>
					<c:when test="${pb.keyWord!=null }">
						<input type="text" name="keyWord" value="${pb.keyWord }">
					</c:when>
					<c:otherwise>
						<input type="text" name="keyWord" title="enter student username">
					</c:otherwise>
				</c:choose>
				<input type="submit" value="search">
			</form>
		</div>
		<div style="width:200px;float:right;">
			<c:choose>
				<c:when test="${requestScope.pb.keyWord!=null }">
					<a href="${pageContext.request.contextPath }/StudentServlet?currentPage=${requestScope.pb.currentPage-1}&&method=list&&keyWord=${pb.keyWord }">last page</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/StudentServlet?currentPage=${requestScope.pb.currentPage-1}&&method=list">last page</a>
				</c:otherwise>
			</c:choose>
			${requestScope.pb.currentPage }/${requestScope.pb.totalPage }
			<c:choose>
				<c:when test="${requestScope.pb.keyWord!=null }">
					<a href="${pageContext.request.contextPath }/StudentServlet?currentPage=${requestScope.pb.currentPage+1}&&method=list&&keyWord=${pb.keyWord }">next page</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/StudentServlet?currentPage=${requestScope.pb.currentPage+1}&&method=list">next page</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>username</td>
					<td>name</td>
					<td>phone</td>
					<td>email</td>
					<td>address</td>
					<td>class</td>
					<td>state</td>
					<td>fine</td>
					<td>operation</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<c:forEach items="${requestScope.pb.pageData }" var="list">
					<tr>
						<td>${list.username }</td>
						<td>${list.name }</td>
						<td>${list.phone }</td>
						<td>${list.email }
						<td>${list.address }</td>
						<td>${list.stu_class }</td>
						<td>
							<c:choose>
								<c:when test="${list.state==1 }">
									available
								</c:when>
								<c:otherwise>
									unavailable
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${list.fine==null }">
									0.0
								</c:when>
								<c:otherwise>
									${list.fine }
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<a href="${pageContext.request.contextPath }/StudentServlet?method=toupdate&&id=${list.id}" class="FunctionButton">update</a> 
							<a href="${pageContext.request.contextPath }/StudentServlet?method=delete&&id=${list.id}" onClick="return delConfirm();" class="FunctionButton">delete</a>
							<a href="${pageContext.request.contextPath }/StudentServlet?method=listbooks&&userName=${list.username}&&id=${list.id}" class="FunctionButton">list books</a>
						</td>
					</tr>
				</c:forEach>	
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="${pageContext.request.contextPath }/sys/detail/saveStudent.jsp">add</a>
			</div>
		</div>
		
	</div>
</body>
</html>
