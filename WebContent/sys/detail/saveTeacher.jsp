<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			
				
				
					<img border="0" width="13" height="13" src="${pageContext.request.contextPath }/sys/detail/style/images/title_arrow.gif"/>add teacher
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 111表单内容 -->
	<form action="${pageContext.request.contextPath }/TeacherServlet?method=add" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="${pageContext.request.contextPath }/sys/detail/style/images/item_point.gif">teacher&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
                   		<tr>
							<td width="80px">name</td>
							<td>
                           		<input type="text" name="name" class="InputStyle" value=""/> *
                            </td>
						</tr>
						<tr>
							<td width="80px">username</td>
							<td>
                           		<input type="text" name="username" class="InputStyle" value=""/> *
                            </td>
						</tr>
						<tr>
							<td width="80px">sex</td>
							<td>
								<input type="radio" name="sex" value="male" /> Male <input type="radio" name="sex" value="female" /> Female  
							</td>
						</tr>
						<tr>
							<td>class</td>
							<td><input type="text" name="teacher_class" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td>max_book</td>
							<td><input type="text" name="max_book" class="InputStyle" value="15"/> *</td>
						</tr>
						<tr>
							<td>state</td>
							<td>
								<input type="radio" name="state" value="1" checked="checked"/> Available <input type="radio" name="state" value="unavailable" /> UnAvailable  
							</td>
						</tr>
						<tr>
							<td>phone</td>
							<td><input type="text" name="phone" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td>email</td>
							<td><input type="text" name="email" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td>address</td>
							<td><textarea name="address" class="TextareaStyle"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input type="hidden" name="pwd" value="666666">
								<input type="hidden" name="method" value="add">
							</td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
				
					 <input type="submit" value="add" class="FunctionButtonInput">
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">back</a>
        </div>
	</form>
</div>
</body>
</html>