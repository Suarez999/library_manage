<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta charset="UTF-8">

  <title>图书馆登录</title>

  <style>
html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:bold}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button{overflow:visible}button,select{text-transform:none}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}input{line-height:normal}input[type="checkbox"],input[type="radio"]{-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button{height:auto}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;box-sizing:content-box}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{border:0;padding:0}textarea{overflow:auto}optgroup{font-weight:bold}table{border-collapse:collapse;border-spacing:0}td,th{padding:0}

</style>

    <style>
@import url(http://fonts.googleapis.com/css?family=Oswald);
@import url(http://fonts.googleapis.com/css?family=Cabin);
* {
  box-sizing: border-box;
}

body {
  padding: 1rem 3rem;
  font-family: 'Cabin', sans-serif;
  line-height: 1.4;
  min-width: 925px;
}

a {
  text-decoration: none;
}

.main-navigation {
  overflow: hidden;
  position: relative;
  padding: 0 0 0 1rem;
  /*  &::after {
      content: "";
      position: absolute;
      bottom: 16px;
      left: 0;
      width: 798px;
      height: 12px;
      background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.2));
      z-index: 5;
    }*/
}
.main-navigation ul {
  list-style: none;
  padding: 0;
}
.main-navigation li {
  float: left;
  width: 12rem;
  height: 5rem;
  margin: 0 0 0 -1rem;
  position: relative;
}
.main-navigation li.active {
  z-index: 6;
}
.main-navigation a {
  position: relative;
  display: inline-block;
  color: white;
  width: 100%;
  height: 100%;
  font-family: 'Oswald', sans-serif;
  text-transform: uppercase;
  font-size: 1.4rem;
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
}
.main-navigation svg {
  width: 120%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  pointer-events: none;
}
.main-navigation span {
  position: relative;
  padding: 1rem 0 0 3.3rem;
  z-index: 2;
  display: inline-block;
  width: 100%;
  height: 100%;
}
.main-navigation .tab-1 {
  z-index: 4;
}
.main-navigation .tab-1 svg {
  fill: url(#tab-1-bg);
}
.main-navigation .tab-2 {
  z-index: 3;
}
.main-navigation .tab-2 svg {
  fill: url(#tab-2-bg);
}
.main-navigation .tab-3 {
  z-index: 2;
}
.main-navigation .tab-3 svg {
  fill: url(#tab-3-bg);
}
.main-navigation .tab-4 {
  z-index: 1;
}
.main-navigation .tab-4 svg {
  fill: url(#tab-4-bg);
}

.main-content {
  position: relative;
  z-index: 10;
  background: #76a0c0;
  margin: -1.6rem 0 0 0;
  padding: 3rem;
  border-radius: 15px;
  border-top-left-radius: 0;
}

.article {
  background: white;
  padding: 5rem;
  border-radius: 8px;
}
.article h2 {
  font-family: 'Oswald', sans-serif;
  text-transform: uppercase;
  font-size: 3rem;
  color: #76a0c0;
  margin: 0 0 0.5rem 0;
}
</style>

    <script src="js/prefixfree.min.js"></script>
	<script type="text/javascript">
	function loadimage(){
		document.getElementById("randImage").src="${pageContext.request.contextPath}/image.jsp?"+Math.random();
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
	$(function(){
		document.getElementById("randImage").src="${pageContext.request.contextPath}/image.jsp?"+Math.random();
	});
	</script>
</head>

<body>
<div class="main">
<font color="blue" size="6"></font>
  <!-- TAB TEMPLATE -->
<svg height="0" width="0" style="position: absolute; margin-left: -100%;">

  <defs>

    <filter id='shadow'>
      <feComponentTransfer in="SourceGraphic">
        <feFuncR type="discrete" tableValues="0"/>
        <feFuncG type="discrete" tableValues="0"/>
        <feFuncB type="discrete" tableValues="0"/>
      </feComponentTransfer>
      <feGaussianBlur stdDeviation="1"/>
       <feComponentTransfer><feFuncA type="linear" slope="0.2"/></feComponentTransfer>
      <feOffset dx="5" dy="1" result="shadow"/>
      <feComposite in="SourceGraphic" />
    </filter>

    <linearGradient id="tab-1-bg" x1="0%" y1="0%" x2="0%" y2="65%">
      <stop offset="0%" style="stop-color: rgba(136, 195, 229, 1.0);" />
      <stop offset="100%" style="stop-color: rgba(118, 160, 192, 1.0);" />
    </linearGradient>

    <linearGradient id="tab-2-bg" x1="0%" y1="0%" x2="0%" y2="65%">
      <stop offset="0%" style="stop-color: rgba(149, 190, 233, 1.0);" />
      <stop offset="100%" style="stop-color: rgba(112, 153, 213, 1.0);" />
    </linearGradient>

    <linearGradient id="tab-3-bg" x1="0%" y1="0%" x2="0%" y2="65%">
      <stop offset="0%" style="stop-color: rgba(61, 149, 218, 1.0);" />
      <stop offset="100%" style="stop-color: rgba(43, 130, 197, 1.0);" />
    </linearGradient>

    <linearGradient id="tab-4-bg" x1="0%" y1="0%" x2="0%" y2="65%">
      <stop offset="0%" style="stop-color: rgba(72, 204, 243, 1.0);" />
      <stop offset="100%" style="stop-color: rgba(71, 194, 243, 1.0);" />
    </linearGradient>

  </defs>

  <path id="tab-shape" class="tab-shape" d="M116.486,29.036c-23.582-8-14.821-29-42.018-29h-62.4C5.441,0.036,0,5.376,0,12.003v28.033h122v-11H116.486
			z">

</svg>

<nav role="navigation" class="main-navigation">
  <ul>
    <li class="tab-1 active" data-bg-color="rgba(118, 160, 192, 1.0)">
      <a href="#home">
        <span>Home</span>
        <svg viewBox="0 0 122 40">
           <use xlink:href="#tab-shape"></use>
        </svg>
      </a>
    </li>
    <li class="tab-2" data-bg-color="rgba(112, 153, 213, 1.0)">
      <a href="#about">
        <span>admin</span>
        <svg viewBox="0 0 122 40">
          <use xlink:href="#tab-shape"></use>
        </svg>
      </a>
    </li>
    <li class="tab-3" data-bg-color="rgba(43, 130, 197, 1.0)">
      <a href="#clients">
        <span>student</span>
        <svg viewBox="0 0 122 40">
          <use xlink:href="#tab-shape"></use>
        </svg>
      </a>
    </li>
    <li class="tab-4" data-bg-color="rgba(71, 194, 243, 1.0)">
      <a href="#contact">
        <span>Teacher</span>
        <svg viewBox="0 0 122 40">
          <use xlink:href="#tab-shape"></use>
        </svg>
      </a>
    </li>
  </ul>
</nav>

<div class="main-content">
  <article class="article">
    <div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
    <form id="login" action="${pageContext.request.contextPath}/BookServlet" method="post">
    	<input type="hidden" name="method" value="login"/>
    	ACCOUNT：<input id="acc" type="text"/><br/>
    	<input type="hidden" name="method" value="list"/>
    	PASSWORD:<input id="pwd" type="password"/><a href=""><em style="color:red">forget?</em></a><br/>
    	CAPTCHA：<input id="cap"type="text" value="" name="imageCode" id="imageCode"
				size="10" onkeydown="if(event.keyCode==13)form1.submit()" />&nbsp;
				<img onclick="javascript:loadimage();" title="change one" name="randImage"
				id="randImage" src="/image.jsp" width="60" height="20" border="1"
				align="absmiddle"><br/>
				<button  type="button" onclick="submitData()">login</button>
    </form>
  </article>
</div>

  <script src='js/jquery.js'></script>

  <script src="js/index.js"></script>
</div>
</body>
</html>