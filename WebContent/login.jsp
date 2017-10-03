<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

  <meta charset="UTF-8">

  <title>NIIT Library Login</title>

    <link rel="stylesheet" href="login/style.css" media="screen" type="text/css" />
    <link rel="stylesheet" href="idcode/jquery.idcode.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		function loadimage(){
			document.getElementById("randImage").src="${pageContext.request.contextPath}/imagecode/image.jsp?"+Math.random();
		}
		function loadimage2(){
			document.getElementById("randImage2").src="${pageContext.request.contextPath}/imagecode/image2.jsp?"+Math.random();
		}
		function loadimage3(){
			document.getElementById("randImage3").src="${pageContext.request.contextPath}/imagecode/image2.jsp?"+Math.random();
		}
		function submitData(){
		var aaa= $("#acc").val();
			var content = $("#pwd").val();
			var imageCode = $("#cap").val();
			//alert(content+imageCode);
			if(content == null || content == "") {
				alert("请输入密码");
			} else if( imageCode == null || imageCode == "") {
				alert("请填写验证码");
			} else if(aaa==null||aaa==""){
				alert("请输入账户名")
			}else {
				$("#login").submit();
			}
		}
		function submitData2(){
		var aaa= $("#acc2").val();
			var content = $("#pwd2").val();
			var imageCode = $("#cap2").val();
			//alert(content+imageCode);
			if(content == null || content == "") {
				alert("请输入密码");
			} else if( imageCode == null || imageCode == "") {
				alert("请填写验证码");
			} else if(aaa==null||aaa==""){
				alert("请输入账户名")
			}else {
				$("#login2").submit();
			}
		}
		function submitData3(){
		var aaa= $("#acc3").val();
			var content = $("#pwd3").val();
			var imageCode = $("#cap3").val();
			//alert(content+imageCode);
			if(content == null || content == "") {
				alert("请输入密码");
			} else if( imageCode == null || imageCode == "") {
				alert("请填写验证码");
			} else if(aaa==null||aaa==""){
				alert("请输入账户名")
			}else {
				$("#login3").submit();
			}
		}
		
		$(function(){
			document.getElementById("randImage").src="${pageContext.request.contextPath}/imagecode/image.jsp?"+Math.random();
			document.getElementById("randImage2").src="${pageContext.request.contextPath}/imagecode/image2.jsp?"+Math.random();
			document.getElementById("randImage3").src="${pageContext.request.contextPath}/imagecode/image3.jsp?"+Math.random();
		});
	</script>
</head>

<body>

  <!-- Start Tab Area. Use the container for positioning and to increase the tab content width !-->

<div id="container">
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<!-- Start Tabs !-->

<div class="tab-container">

<!-- Use c + the tab number or any other identifier you'd like when creating a new tab, just keep them in order.  You can have an unlimited number of tabs !-->

	<div id="c1">
		<a href="#c1" title="First">Student</a> <!-- This is your actual tab and the content is below it !-->
		<div style="padding-top:100px">  <!-- tab-container > div > div in the CSS !-->
      	<form action="${pageContext.request.contextPath }/CommonServlet" method="post" id="login">
      	
      		<table align="center">
      			<tr>
      				<td></td>
      				<td><input type="hidden" name="method" value="studentLogin"/></td>
      			</tr>
      			<tr>
      				<td>USERNAME:</td>
      				<td><input id="acc" name="username" type="text"/></td>
      			</tr>
      			<tr>
      				<td>PASSWORD:</td>
      				<td><input id="pwd" name="pwd" type="password"/></td>
      			</tr>
      			<tr>
      				<td>CAPTCHA：</td>
      				<td>
      					<input id="cap"type="text" value="" name="imageCode"
							 onkeydown="if(event.keyCode==13)form1.submit()" />&nbsp;
					</td>
					<td>
						<img onclick="javascript:loadimage();" title="change one" name="randImage"
						id="randImage" src="/imagecode/image.jsp" width="60" height="20" border="1"
						align="absmiddle">
					</td>
      			</tr>
      			<tr>
      				<td colspan="2" align="center"><button  type="button" onclick="submitData()" style="width:50px;height:30px;">login</button></td>
      			</tr>
      		</table>
      	</form>	 
  		
       </div>
	</div>

	<div id="c2">
		<a href="#c2" title="Second">Teacher</a> <!-- This is your actual tab and the content is below it !-->
		<div style="padding-top:100px">  <!-- tab-container > div > div in the CSS !-->
      	<form action="${pageContext.request.contextPath }/CommonServlet" method="post" id="login2">
      	
      		<table align="center">
      			<tr>
      				<td></td>
      				<td><input type="hidden" name="method" value="teacherLogin"/></td>
      			</tr>
      			<tr>
      				<td>USERNAME:</td>
      				<td><input id="acc2" name="username" type="text"/></td>
      			</tr>
      			<tr>
      				<td>PASSWORD:</td>
      				<td><input id="pwd2" name="pwd" type="password"/></td>
      			</tr>
      			<tr>
      				<td>CAPTCHA：</td>
      				<td>
      					<input id="cap2"type="text" value="" name="imageCode2" 
							 onkeydown="if(event.keyCode==13)form1.submit()" />&nbsp;
					</td>
					<td>
						<img onclick="javascript:loadimage2();" title="change one" name="randImage2"
						id="randImage2" src="/imagecode/image2.jsp" width="60" height="20" border="1"
						align="absmiddle">
					</td>
      			</tr>
      			<tr>
      				<td colspan="2" align="center"><button  type="button" onclick="submitData2()" style="width:50px;height:30px;">login</button></td>
      			</tr>
      		</table>
      	</form>	 
  		
       </div>
	</div>

	<div id="c3">
		<a href="#c3" title="Third">Admin</a> <!-- This is your actual tab and the content is below it !-->
			<div style="padding-top:100px">  <!-- tab-container > div > div in the CSS !-->
      	<form action="${pageContext.request.contextPath }/CommonServlet" method="post" id="login3">
      	
      		<table align="center">
      			<tr>
      				<td></td>
      				<td><input type="hidden" name="method" value="adminLogin"/></td>
      			</tr>
      			<tr>
      				<td>USERNAME:</td>
      				<td><input id="acc3" name="username" type="text"/></td>
      			</tr>
      			<tr>
      				<td>PASSWORD:</td>
      				<td><input id="pwd3" name="pwd" type="password"/></td>
      			</tr>
      			<tr>
      				<td>CAPTCHA：</td>
      				<td>
      					<input id="cap3" type="text" value="" name="imageCode3" 
							 onkeydown="if(event.keyCode==13)form1.submit()" />&nbsp;
					</td>
					<td>
						<img onclick="javascript:loadimage3();" title="change one" name="randImage"
						id="randImage3" src="/imagecode/image3.jsp" width="60" height="20" border="1"
						align="absmiddle">
					</td>
      			</tr>
      			<tr>
      				<td colspan="2" align="center"><button  type="button" onclick="submitData3()" style="width:50px;height:30px;">login</button></td>
      			</tr>
      		</table>
      	</form>	 
       </div>
	</div>


    <div id="c5">
			<div class="tab-content"> <!-- Having a hidden or opening tab is ideal when you don't want last tab to always show first when loading the page !-->
            <h3>NIIT Library Login</h3>
            <p>If you are a student user please choose student login on the left.If you are a teacher user please choose teacher login on the left.If you are a admin user please choose admin login on the left.</p>
            <p>NIIT</p>
            <br/>
            <p style="color:red;font-size:6">${msg }</p>
            </div>
	</div>

</div><!-- Tab Container !-->

</div><!-- Container !-->

<!-- End Tab Area !-->

</body>

</html>