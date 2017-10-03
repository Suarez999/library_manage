<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0045)http://210.28.182.152:8080/opac/book_cart.php -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>NIIT Library </title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/font-awesome.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/reader-info.css">

<link rel="stylesheet" data-ignore="true" href="./library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="./library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/app/library/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="./library/Popup.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/highlighter.js.下载"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/justgage.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/sys/detail/style/js/jquery.js"></script>
</head>
<body>
<div class="share-img">
    <img src="./library/share.0.4.png" width="300" height="300">
</div>

<div class="wrap">
    <div class="top-nav" data-l1="1"></div>
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
            <li class="nav-li"><a href="javascript:void(0);" data-eid="qd_A17" class="act">Hot books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/RecommendServlet?method=getAll" >Reader recommendation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername" target="_blank" data-eid="qd_A19" >My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>

<div id="mainbox">
	<div id="container">
	  <h5 class="box_bgcolor"><strong>Hot books</strong></h5>
       
         <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" class="table_line">
              <tbody>
              <tr>
              	<td class="greytext" width="3%"></td>
                <td class="greytext" width="18%">isbn</td>
                <td class="greytext" width="18%">book name</td>
                <td class="greytext" width="18%">author</td>
                <td class="greytext" width="18%">publisher</td>
                <td class="greytext" width="18%">total number</td>
                <td class="greytext" width="18%">remain number</td>
                <td class="greytext" width="23%">percent</td>
                <td class="greytext" width="9%" align="center">operation</td>
          	 </tr>
          	<c:forEach items="${requestScope.pb.pageData}" var="res" varStatus="vs">
             <tr>
               	<td class="whitetext">${vs.count }</td>
                <td class="whitetext">${res.isbn }</td>
                <td align="left" class="whitetext"><a class="blue" href="${pageContext.request.contextPath }/BookServlet?method=findById&&id=${res.id }">${res.name }</a></td>
                <td class="whitetext">${res.author }</td>
                <td class="whitetext">${res.product }</td>
                <td class="whitetext">${res.number }</td>
                <td class="whitetext">${res.remain }</td>
                <td class="whitetext"><fmt:formatNumber type="number" value="${(res.number-res.remain)/res.number }" pattern="0.00" maxFractionDigits="2"/> </td>
                <td height="35" align="center" class="whitetext">
                <input class="btn btn-success" type="button" value="detail" onclick="detail(${res.id})"></td>
            </tr>  
            </c:forEach>
            </tbody>
            </table>

  <div class="clear"></div>
</div>
  <div class="page-box cf">
    <div class="pagination fr" data-eid="qd_C44" id="page-container" data-pagemax="35256" data-page="1">
        



<div class="lbf-pagination">
<ul class="lbf-pagination-item-list">

<li class="lbf-pagination-item"><a href="javascript:;" class="lbf-pagination-prev lbf-pagination-disabled">&lt;</a></li>

<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot&&currentPage=${requestScope.pb.currentPage-1}" class="lbf-pagination-next ">&lt;</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot&&currentPage=1" class="lbf-pagination-page  lbf-pagination-current">first</a></li>
<li class="lbf-pagination-item">${pb.currentPage }/${pb.totalPage }</li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot&&currentPage=${requestScope.pb.totalPage}" class="lbf-pagination-page  lbf-pagination-current">last</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot&&currentPage=${requestScope.pb.currentPage+1}" class="lbf-pagination-next ">&gt;</a></li>

</ul>

<div class="lbf-pagination-jump">
<input id="page" type="text" class="lbf-pagination-input" value="1"/>
<a href="javascript:;" id="PAGINATION-BUTTON" onclick="PAGINATION_goInput()" class="lbf-pagination-go">
	GO
</a>
</div>

</div>
    </div>
</div>
<script>
function PAGINATION_goInput(){
	var page=$("#page").val();
	window.location.href = "${pageContext.request.contextPath}/BookServlet?method=findHot&&currentPage="+page+"";
}
</script>
<script type="text/javascript">
	function detail(marcNo){
		window.location.href = "${pageContext.request.contextPath }/BookServlet?method=findById&&id="+marcNo+"";
	}
	function login(){
		window.location.href = "../reader/login.php?returnUrl=..%2Fopac%2Fbook_cart.php";
	}
	
	$(function(){
		$("#qrcode").click(function(){
			$("#bookcart_export").html("<img id='img_qr' src='book_cart_exp.php?type=qrcode&bk=5LqS5Yqo5LiO6K6k5ZCMOuWPpOWFuOaXtuacn%2BS4reWbveS4juW4jOiFiuaXj%2Be%2BpOiupOWQjOeahOavlOi%2Bgx3prY%2FlrZ3nqLfokZcd5Lit5Zu956S%2B5Lya56eR5a2m5Ye654mI56S%2BIDIwMTUdRzAzLzMe5paH6Im6576O5a2m55qE5rGJ5a2X5a2m6L2s5ZCRHemqhuWGrOmdkiwg5pyx5bSH5omNLCDokaPmmKXmmZPokZcd5ZWG5Yqh5Y2w5Lmm6aaGIDIwMTcdSTAxLzQ2HuWMl%2BS6rOiDoeWQjB3pmYjlhYnkuK3nvJbokZcd5b2T5Luj5Lit5Zu95Ye654mI56S%2BIDIwMDgdSjU5LzQe" 
				+ "&title=" + $("#title").attr('checked')
				+ "&author=" + $("#author").attr('checked')
				+ "&pub=" + $("#pub").attr('checked')
				+ "&call_no=" + $("#call_no").attr('checked')
				+ "&time=" + new Date() + "' />" );
				//$("#bookcart_export").dialog("open" );
		});

		$("#file").click(function(){
			window.location.href="book_cart_exp.php?type=file&bk=5LqS5Yqo5LiO6K6k5ZCMOuWPpOWFuOaXtuacn%2BS4reWbveS4juW4jOiFiuaXj%2Be%2BpOiupOWQjOeahOavlOi%2Bgx3prY%2FlrZ3nqLfokZcd5Lit5Zu956S%2B5Lya56eR5a2m5Ye654mI56S%2BIDIwMTUdRzAzLzMe5paH6Im6576O5a2m55qE5rGJ5a2X5a2m6L2s5ZCRHemqhuWGrOmdkiwg5pyx5bSH5omNLCDokaPmmKXmmZPokZcd5ZWG5Yqh5Y2w5Lmm6aaGIDIwMTcdSTAxLzQ2HuWMl%2BS6rOiDoeWQjB3pmYjlhYnkuK3nvJbokZcd5b2T5Luj5Lit5Zu95Ye654mI56S%2BIDIwMDgdSjU5LzQe" 
				+ "&title=" + $("#title").attr('checked')
				+ "&author=" + $("#author").attr('checked')
				+ "&pub=" + $("#pub").attr('checked')
				+ "&call_no=" + $("#call_no").attr('checked')
				+ "&time=" + new Date();
		});
			
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
		$( "#import2cart").dialog({
			autoOpen: false,
			modal: true,
			buttons: {
				"确认": function() {
					$("#myForm").submit();
					$(this).dialog("close" );
				},
				"取消": function() {
					$(this).dialog( "close" );
				}
			} 
		});
		
		$("#import2shelf").click(function() {
							$("#import2cart" ).dialog("open" );
					});
	});
</script>
	
  
<div id="footer"><div id="copy"><p> NIIT Library</p></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable" tabindex="-1" role="dialog" aria-labelledby="ui-dialog-title-import2cart" style="display: none; z-index: 1000; outline: 0px; position: absolute;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span class="ui-dialog-title" id="ui-dialog-title-import2cart">导入我的书架</span><a href="http://210.28.182.152:8080/opac/book_cart.php#" class="ui-dialog-titlebar-close ui-corner-all" role="button"><span class="ui-icon ui-icon-closethick">close</span></a></div><div id="import2cart" class="ui-dialog-content ui-widget-content">
	<form action="http://210.28.182.152:8080/opac/book_cart_shelf.php" method="post" id="myForm">
				您尚未建立书架，请先 <a class="btn btn-success" href="http://210.28.182.152:8080/reader/book_shelf_man.php">添加书架</a>
			</form>
	
</div><div class="ui-resizable-handle ui-resizable-n"></div><div class="ui-resizable-handle ui-resizable-e"></div><div class="ui-resizable-handle ui-resizable-s"></div><div class="ui-resizable-handle ui-resizable-w"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-icon-grip-diagonal-se" style="z-index: 1001;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1002;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1003;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1004;"></div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确认</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div></div></body></html>