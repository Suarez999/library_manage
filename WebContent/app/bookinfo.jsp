<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>bookinfo</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/mylib.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/jquery-ui-1.8.13.custom.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/font-awesome.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/app/bookinfo/reader-info.css">
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath}/app/library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/app/library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/app/library/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/app/library/Popup.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery.1.7.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery-ui-1.8.13.custom.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/highlighter.js.下载"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/raphael.2.1.0.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/justgage.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
			  url: "${pageContext.request.contextPath}/ReservationServlet?method=selectCount&&name=${sessionScope.userName}",		 	  
			  success: function(html){
				$('#bookcartCount').html($.trim(html));
			 	$('#cartCount').html($.trim(html));
			 } 
	});
});
$(function(){
	$.ajax({
		url:"${pageContext.request.contextPath}/BookServlet?method=selectRemain&&id=${book.id}",
		success:function(html){
			if(html=="No remain!"){
				 $("#put2cart").html(html);
				 $("#put2cart").attr('disabled','disabled');
				 $("#put2cart").removeAttr('href');
			}
		}
	});
});
</script>
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
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=list" data-eid="qd_A15"  class="act">categories</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=findNew" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/BookServlet?method=findHot" data-eid="qd_A17">Hot books</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/RecommendServlet?method=getAll" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername" target="_blank" data-eid="qd_A19">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>

﻿<script language="JavaScript" type="text/javascript">
	$(function(){
		$('#tabs1').tabs({
			spinner: '加载中...' 
		});
		$('#tabs2').tabs({
			spinner: '加载中...' 
		});
		
		$("#accordion").accordion({
	      heightStyle: "fill", active:false,collapisable:true
	    });
		
		$("#showMoreAnchor").click(function(){
			$("#book_info dl:gt(99)").show();
			$("#showMoreAnchor").hide();
		});
		
		if($("#book_info dl").length > 99 + 1){
			$("#book_info dl:gt(99)").hide();
			$("#showMoreAnchor").show();
		} else {
			$("#showMoreAnchor").hide();
		}
			
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			modal: true 
		});
		$( "#dialog-fav" ).dialog({
			autoOpen: false,
			modal: true ,
		      buttons: {
		        "确定": function() {
	        	  $("#favMsg").load("../reader/book_shelf_ajax_addbook.php?classid=" + $("#favSel option:selected").val() + "&marc_no=0000642714&time=" + new Date().getTime());	
		          $(this).dialog( "close" );
		        },
		        "取消": function() {
		          $( this ).dialog( "close" );
		        }
		      }
		});
				
				$("#myFav").click(function() {
			$("#dialog-fav").dialog("open" );
		}) ;
			
		
		$("#spanItemMore").click(function(){
			$("#item tr:gt(30)").show();
			$("#spanItemMore").hide();
		});
		
		if($("#item tr").length > 30 + 1){
			$("#item tr:gt(30)").hide();
			$("#spanItemMore").show();
		} else {
			$("#spanItemMore").hide();
		}
		 
	});
	
</script>
<style>
 #accordion-resizer {
    padding: 10px;
    width: 100%;
    height: 220px;
  }
</style>
<div id="mainbox">
	<div id="container">
        <div id="content_item">
       
			<div id="tabs1" style="margin:10px auto;" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
                  <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
                      <li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a href="http://210.28.182.152:8080/opac/item.php?marc_no=0000642714#tabs-1" title="intro">book information</a></li>  
				  	                   </ul>
                  <div id="tabs-1" class="tab_article ui-tabs-panel ui-widget-content ui-corner-bottom">
                  	  <div class="book_article">
		        		<div id="book_info">
		                	<div class="book_article">
                            <div id="book_pic"><img id="book_img" width="105" height="155" style=" border:1px solid #efefef;" src="${book.imageUrl }"></div>
		                 	<div id="item_detail" style="float:left; width:80%;">
								
								<dl class="booklist">
									<dt>ISBN:</dt>
									<dd>${book.isbn }</dd>
								</dl>
								<dl class="booklist">
									<dt>name:</dt>
									<dd>${book.name }</dd>
								</dl>
									<dl class="booklist">
									<dt>author:</dt>
									<dd>${book.author }</dd>
								</dl>
															<dl class="booklist">
									<dt>publisher:</dt>
									<dd>${book.product }</dd>
								</dl>
									<dl class="booklist">
									<dt>category:</dt>
									<dd>${book.category }</dd>
								</dl>
									<dl class="booklist">
									<dt>subject:</dt>
									<dd>${book.b_subject }</dd>
								</dl>
								<dl class="booklist">
									<dt>num:</dt>
									<dd><font color="red">${book.remain }</font>/${book.number }</dd>
								</dl>
															
															<dl class="booklist" id="cxstar">
									<dt>price:</dt>
									<dd>${book.price }</dd>
								</dl>
														
														
															
															
															
														

                            <div class="clear"></div>
                            </div>
			                  <div id="sharing">
                              	<div style="margin:5px auto 10px auto;"><a id="put2cart" class="btn" href="javascript:add2cart();">reserve</a>　
								   <a class="btn" href="${pageContext.request.contextPath }/ReservationServlet?method=list" target="_blank">My Reservation(<span id="cartCount">0</span>)</a>
								   &nbsp;&nbsp;<span id="favMsg"></span>
								</div>
											                     
								 			                 </div>   
		           		</div>
		              </div>						
                   </div><div id="marc_format" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"></div>
			 </div>
			 
         
       
        </div>
        <div class="clear"></div>
    </div>
</div>


<div id="nrms-operation"></div>

<script type="text/javascript">
	
	$("#asyn_link").load("../zplug/ajax_asyn_link.php?url=");
	//$("#cadal_book").load("cadal_book.php?isbn=9787204102839");
	
	function add2cart(){
		$.ajax({
   			  url: "${pageContext.request.contextPath}/ReservationServlet?method=add&&id=${book.id}",		 	  
   			  success: function(html){
   			     $("#put2cart").html("completed");
				 $("#put2cart").attr('disabled','disabled');
				 $("#put2cart").removeAttr('href');
   				 $('#bookcartCount').html($.trim(html));
				 $('#cartCount').html($.trim(html));
   			  } 
    	});
	}

	function add2fav(){
		$("#dialog-fav").dialog("open");
	}
	
	function loadSameAuthorBook(id){
		$("#same_author_div").load("ajax_same_author.php?marc_no=0000642714");
	}
	
	function loadLikehoodBook(id){
		$("#likehood_book_div").load("ajax_likehood_book.php?marc_no=0000642714");
		$(id).click(function(){});
	}
	var rank = 1;
	function change_rating(rating){
		rank = rating;
		var w = 14*rating; 
		document.getElementById("div_rate").style.width = w+"px";
	}
	
	function back_white(){
		document.getElementById("div_rate").style.width = "0px";
	}

	function showMore(){
		$("#detail_more").show();
		$("#showMoreAnchor").hide();
	}

	function add2shelf(classid){
		$("#favMsg").load("../reader/book_shelf_ajax_addbook.php?classid=" + classid + "&marc_no=0000642714&time=" + new Date().getTime());
	}
	
	function scoreIt(marcNo){
		$.ajax({
   			  url: "ajax_score_it.php?marc_no=" + marcNo + "&rank=" + rank,
   			  success: function(html){
   			     $("#score").html(html);
   				 $('#div_rate').hide();
   				 $('#div_rate_star').hide();
   			  }
    	});
	}

	$(function(){
		$.getJSON("ajax_douban.php?isbn=9787204102839",function(json){
			$("#intro").html(json.summary );
			$("#author").html(json.author_intro);
			$("#book_img").attr("src",json.image);
			if(json.summary.length > 0 || json.author_intro.length>0 )
				$("#douban_content").show();
		});
	});
	
	document.title = "${requestScope.book.name}";
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/app/bookinfo/interface.js.下载"></script><div id="footer"></div>

<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable" tabindex="-1" role="dialog" aria-labelledby="ui-dialog-title-dialog-form" style="display: none; z-index: 1000; outline: 0px; position: absolute;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span class="ui-dialog-title" id="ui-dialog-title-dialog-form">登录我的图书馆</span><a href="http://210.28.182.152:8080/opac/item.php?marc_no=0000642714#" class="ui-dialog-titlebar-close ui-corner-all" role="button"><span class="ui-icon ui-icon-closethick">close</span></a></div><div id="dialog-form" class="ui-dialog-content ui-widget-content">
      	<form action="http://210.28.182.152:8080/reader/redr_verify.php" name="frm_login" method="POST">
      	<input type="hidden" id="returnUrl" name="returnUrl" value="">
	        <table width="95%" border="0" cellpadding="3" cellspacing="1">
	          <tbody><tr>
	            <td align="right">用户名： </td>
	            <td align="left"><input class="input" name="number" type="text" size="20" style="width:150px"></td>
	          </tr>
	          <tr>
	            <td align="right">密码： </td>
	            <td align="left"><input class="input" name="passwd" type="password" size="20" style="width:150px"></td>
	          </tr>
			          <tr>
            <td align="right">验证码： </td>
            <td align="left"><input id="captcha" class="input" name="captcha" type="text" size="20" style="width:150px" placeholder="验证码">
            </td>
          </tr>          
          <tr>
            <td align="right"></td>
            <td align="left" id="captcha_tips"><font size="2">请输入下面显示的内容</font><br><img id="img" src="${pageContext.request.contextPath}/app/bookinfo/captcha.php"></td>
          </tr> 
          	          <tr>
	            <td align="right">&nbsp;</td>
	            <td align="left"><input type="Radio" name="select" value="cert_no" checked="checked">证件号
							<input type="Radio" name="select" value="bar_no">条码号 
							<input type="Radio" name="select" value="email">Email </td>
	          </tr>
			  <tr>
            	<td align="right">&nbsp;</td>
            	<td align="left"><input type="submit" value="登录"></td>
		  </tr>
	        </tbody></table>
        </form> 
</div><div class="ui-resizable-handle ui-resizable-n"></div><div class="ui-resizable-handle ui-resizable-e"></div><div class="ui-resizable-handle ui-resizable-s"></div><div class="ui-resizable-handle ui-resizable-w"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-icon-grip-diagonal-se" style="z-index: 1001;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1002;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1003;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1004;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable" tabindex="-1" role="dialog" aria-labelledby="ui-dialog-title-dialog-fav" style="display: none; z-index: 1000; outline: 0px; position: absolute;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span class="ui-dialog-title" id="ui-dialog-title-dialog-fav">添加到我的书架</span><a href="http://210.28.182.152:8080/opac/item.php?marc_no=0000642714#" class="ui-dialog-titlebar-close ui-corner-all" role="button"><span class="ui-icon ui-icon-closethick">close</span></a></div><div id="dialog-fav" class="ui-dialog-content ui-widget-content">
			  收藏到：
			  	<select id="favSel" name="favSel">
								</select>
	 <a style="color:blue" href="http://210.28.182.152:8080/reader/book_shelf_man.php">管理书架</a>
</div><div class="ui-resizable-handle ui-resizable-n"></div><div class="ui-resizable-handle ui-resizable-e"></div><div class="ui-resizable-handle ui-resizable-s"></div><div class="ui-resizable-handle ui-resizable-w"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-icon-grip-diagonal-se" style="z-index: 1001;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1002;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1003;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1004;"></div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div></div><script src="${pageContext.request.contextPath}/app/bookinfo/ServerMethodCaller.ashx" type="text/javascript"></script></body></html>