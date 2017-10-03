<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			
				
				
					<img border="0" width="13" height="13" src="${pageContext.request.contextPath}/sys/detail/style/images/title_arrow.gif"/>update
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 111表单内容 -->
	<form action="${pageContext.request.contextPath }/StudentServlet?method=update" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="${pageContext.request.contextPath}/sys/detail/style/images/item_point.gif"> 书籍信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						<tr>
							<td width="80px">name</td>
							<td><input type="text" name="name" class="InputStyle" value="${requestScope.student.name }" readonly="readonly"/> *</td>
						</tr>
                    	<tr>
							<td width="80px">username</td>
							<td>
                            	<input type="text" name="username" class="InputStyle" value="${requestScope.student.username }"> *
                            </td>
						</tr>
						<tr>
							<td width="80px">phone</td>
							<td>
	                            <input type="text" name="phone" class="InputStyle" value="${requestScope.student.phone }"> *
                            </td>
						</tr>
						<tr>
							<td width="80px">email</td>
							<td>
								<input type="text" name="email" class="InputStyle" value="${requestScope.student.email }"/> *
							</td>
						</tr>
						<tr>
							<td width="80px">address</td>
							<td>
								<input type="text" name="address" class="InputStyle" value="${requestScope.student.address }"/> *
							</td>
						</tr>
						<tr>
							<td width="80px">class</td>
							<td>
								<input type="text" name="stu_class" class="InputStyle" value="${requestScope.student.stu_class }"/> *
							</td>
						</tr>
						<tr>
							<td>state</td>
							<c:choose>
								<c:when test="${requestScope.student.state==1 }">
									<td>
										<input type="radio" name="state" value="1" checked="checked"/> Available <input type="radio" name="state" value="0" /> Unavailable  
									</td>
								</c:when>
								<c:otherwise>
									<td>
										<input type="radio" name="state" value="1" /> Available <input type="radio" name="state" value="0" checked="checked"/> Unavailable  
									</td>
								</c:otherwise>
							</c:choose>
							
						</tr>
						<tr>
							<td>fine</td>
							<c:choose>
								<c:when test="${requestScope.student.fine==null }">
									<td>
										<input type="text" name="fine" class="InputStyle" value="0.0"/> *
									</td>
								</c:when>
								<c:otherwise>
									<td>
										<input type="text" name="fine" class="InputStyle" value="${requestScope.student.fine }"/> *
									</td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr>
							<td></td>
							<td><input type="hidden" name="id" value="${requestScope.student.id }"></td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
				
					 <input type="submit" value="update" class="FunctionButtonInput">
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">back</a>
        </div>
	</form>
</div>
<script type="text/javascript">
	$("#category").change(function(){
		$("#subject option:gt(0)").remove();
		var category=$("#category option:selected").text();
		if("select"!=category){
			$.ajax( {
				type    : "POST",
				url     : "${pageContext.request.contextPath}/SubjectServlet",
				data    : {"category":category},
				success : function(backDate,textStatus,ajax){
							//alert(backDate!=null?"收到":"为收到");	
							//alert(backDate);
							//解析json文本
							var  jsonArray = JSON.parse(backDate);
							for(var o in jsonArray){ 
								   var name=jsonArray[o].name;
								   var $option = $("<option value="+name+">"+name+"</option>");
							  		$("#subject").append($option);
								}
						  }
			} );
		}
	});
</script>
</body>
</html>