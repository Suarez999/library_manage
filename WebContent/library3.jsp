<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>NIIT</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta http-equiv="mobile-agent" content="format=wml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://h5.qidian.com/bookstore.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/library/style.css">
    <style type="text/css">
	.stepright1{padding-left:5px;}
	.stepright2{padding-left:15px;}
	.stepright3{padding-left:25px;}
	.stepright4{padding-left:35px;}
	.stepright5{padding-left:45px;}
	.stepright6{padding-left:55px;}
	.stepright7{padding-left:65px;}
	div.Leaf { font: bold;}
	body{ background-color:#FFFFFF;}
	</style>
	<style>
body{
	background-image: none;body{background-color:#fff; font-size:12px;}
}
</style>
	<script language="JavaScript" type="text/javascript"> 
	function find(s1, s2)
	{
		var str1 = s1;
		var str2 = s2;
		var len1 = str1.length;
		var len2 = str2.length;
		var i;
		if (len1 < len2)
			return 0;
		else
		{
			for (var i=0;i<len2;i++)
			{
				if (str1.charAt(i) != str2.charAt(i))
				{
					return 0;
				}
			}
		} 
		return 1;
	}
	function test(obj)
	{  
		var objname = obj.id;
		var name;  
		var s = ""; 
		var imgnode =  document.getElementById("img_" + objname);
		var showvalue = ""; 
		if (imgnode.alt == "展开")
		{ 
			imgnode.src = "${pageContext.request.contextPath }/library/close.png";
			imgnode.alt = "缩回";
			showvalue="block";
		}
		else
		{
			imgnode.src = "${pageContext.request.contextPath }/library/open.png";
			imgnode.alt = "展开";
			showvalue="none"; 
		}
		for (var i=0; i<document.all.length; i++)
		{
			name = document.all.item(i).id; 
			if (!((name == "")||(name == null)||(name == objname)))
			{    
				s = name;
				if (find(s,objname))
				{  
					document.all.item(i).style.display = showvalue;
				}
			}
		}    
	}
	function searchF(obj){
		var key=obj.title;
		window.location.href =encodeURI("${pageContext.request.contextPath}/BookServlet?method=findBySubject&&keyWord="+key+"");
	}
</script>
    <script src="${pageContext.request.contextPath }/library/stats.js.下载" name="MTAH5" sid="500451537"></script><script>
        document.domain = 'qidian.com';
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/detail/style/js/jquery.js"></script>
    <script>
        var speedTimer = [],
            speedZero = new Date().getTime();
    </script>
    <script>
    //遇到cookie tf=1的话留在本站，否则跳转移动站
    if (getCookie('tf') != 1) {
        //判断是以下设备后跳转到m站
        if (navigator.userAgent.match(/(iPhone|iPod|Android)/i)) {
            location.href = "//m.qidian.com"
        }
    }else {
        // M站设置了一年，这里fixed
        setCookie('tf', 1, 'qidian.com', '/', 0);
    }
    // start 防劫持
    //设置cookie
    function setCookie(name, value, domain, path, expires) {
        if(expires){
            expires = new Date(+new Date() + expires);
        }
        var tempcookie = name + '=' + escape(value) +
                ((expires) ? '; expires=' + expires.toGMTString() : '') +
                ((path) ? '; path=' + path : '') +
                ((domain) ? '; domain=' + domain : '');
        //Ensure the cookie's size is under the limitation
        if(tempcookie.length < 4096) {
            document.cookie = tempcookie;
        }
    }
    //获取cookie
    function getCookie(name) {
        var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        if (arr = document.cookie.match(reg))
            return (arr[2]);
        else
            return null;
    }
    //创建并发送请求
    function createSender(url){
        var img = new Image();
        img.onload = img.onerror = function(){
            img = null;
        };
        img.src = url;
    };
    (function(){
        /*
         *防劫持逻辑所需参数在此处设置参数即可
         *cookieName:用于记录连续被劫持的次数，为防止死循环，cookie值为3以上则不进行url重置
         *cookieDomain:cookie所在的域
         *reportUrl:非连续性劫持时上报的接口地址【如无需上报，可不填】
         *reportUrl2：连续性劫持时上报的接口地址【如无需上报，可不填】
         */
        var cookieName = 'hiijack';
        var cookieDomain = '.qidian.com';
        var reportUrl = '//book.qidian.com/ajax/safe/hiijackReport?times=1&_csrfToken='+ getCookie('_csrfToken')||'';
        var reportUrl2 = '//book.qidian.com/ajax/safe/hiijackReport?times=3&_csrfToken='+ getCookie('_csrfToken')||'';
        //判断是否被iframe
        if (top.location.href !== self.location.href) {
            //用于记录被劫持的次数
            var countHijack;
            //如果未设置cookie，则需要set一下cookie，否则获取此cookie的值
            if(!getCookie(cookieName)){
                setCookie(cookieName,0 ,cookieDomain, '', 30*24*60*60*1000);
                countHijack = 0;
            }else{
                countHijack = parseInt(getCookie(cookieName));
            }
            //如果连续被劫持的次数大于等于3次，则发请求上报此情况,否则上报非连续性的情况,同时累加被劫持次数、重置当前url
            if(countHijack >= 3){
                reportUrl2 && reportUrl2!='' && createSender(reportUrl2);
            }else{
                reportUrl && reportUrl!=''&& createSender(reportUrl);
                countHijack ++;
                setCookie(cookieName, countHijack ,cookieDomain, '', 30*24*60*60*1000);
                top.location = self.location.href;
            }
        }
        //每次成功进入页面则计数清0
        setCookie(cookieName, 0 ,cookieDomain, '', 30*24*60*60*1000);
    })();
    //end 防劫持
</script>


    
<link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath }/library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/library/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath }/library/Popup.css"></head>
<body style="zoom: 1;">
<div class="share-img">
    <img src="${pageContext.request.contextPath }/library/share.0.4.png" width="300" height="300">
</div>

<div class="wrap">
    <div class="top-nav" data-l1="1"></div>
</div>



<div class="logo-wrap box-center" data-l1="2">
    <div class="box-center cf">
        <div class="book-shelf fr">
            <a href="http://me.qidian.com/bookCase/bookCase.aspx?caseId=-2" target="_blank" data-eid="qd_A14"><em class="iconfont shelf"></em><i>shelf</i>
            </a>
        </div>
        <div class="logo fl">
        	<img alt="" src="static/333.jpg" width="58" height="58">
        	<font size="5">&nbsp;&nbsp;NIIT Library</font>
        </div>
        <div class="search-wrap fl">
            <form id="formUrl" action="http://se.qidian.com/" method="get" target="_blank">
                <p><input class="search-box" id="s-box" name="kw" type="text" placeholder="java" autocomplete="off"></p>
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
            <li class="nav-li"><a href="javascript:void(0)" data-eid="qd_A15" class="act">categories</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/app/hot.jsp" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="${pageContext.request.contextPath }/StudentServlet?method=findByUsername" target="_blank" data-eid="qd_A19">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>
    <div class="all-pro-wrap box-center cf">

        <div class="main-content-wrap fl" data-l1="5">
            
<div class="tool-bar cf">
 

    <div class="select-wrap">
        
        <a data-id="" class="act" href="" data-eid="qd_B62">order by time<cite class="iconfont"></cite></a>
      
        
        <em>|</em>
                                <span class="lbf-checkbox get-new-book" data-eid="qd_B53">
                                    <input id="only" type="checkbox" style="position: absolute; opacity: 0;">
                                <ins class="lbf-checkbox-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></span>
        <label for="only" data-eid="qd_B53">only see new books in three months</label>
        <div class="sort-count count-info" id="sort-count">
            <div class="count-text">total:<span></span>books
            </div> 
        </div>
    </div>
</div>

           
<div class="all-book-list">
    
        <div class="book-img-text">
            <ul class="all-img-list cf">
                <c:forEach var="pb" items="${requestScope.pb.pageData }" varStatus="vs">
                <li data-rid="1">
                <div class="book-img-box">
                    <a href="http://localhost:8080/library_manage/BookServlet?method=findById&&id=${pb.id }" data-bid="1004608738" data-eid="qd_B57" target="_blank"><img src="${pageContext.request.contextPath }/${pb.imageUrl }"></a>
                </div>
                <div class="book-mid-info">
                    <h4><a href="http://localhost:8080/library_manage/BookServlet?method=findById&&id=${pb.id }" target="_blank" data-eid="qd_B58" data-bid="1004608738">${pb.name }</a></h4>
                    <p class="author">
                        <img src="${pb.imageUrl }"><a class="name" href="http://localhost:8080/library_manage/BookServlet?method=findById&&id=${pb.id }" data-eid="qd_B59" target="_blank">${pb.author }</a><em>|</em><a href="http://xuanhuan.qidian.com/" target="_blank" data-eid="qd_B60">${pb.category }</a><i></i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="
script:" data-eid="qd_B61"></a><em></em>
                        
                    </p>
                    <p class="intro">
                    publisher:${pb.product }
                    </p>
                    <p class="number">
                    	<font color="red">${pb.remain }</font>/${pb.number }
                    </p>
                    
                    <p class="update"><span>索书号${pb.isbn }</span>
                        
                    </p>
                    
                </div>
                </li>   
                </c:forEach>
            </ul>
    </div>
    
    
</div>
<div class="page-box cf">
    <div class="pagination fr" data-eid="qd_C44" id="page-container" data-pagemax="35256" data-page="1">
        



<div class="lbf-pagination">
<ul class="lbf-pagination-item-list">

<li class="lbf-pagination-item"><a href="javascript:;" class="lbf-pagination-prev lbf-pagination-disabled">&lt;</a></li>

<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=list&&currentPage=${requestScope.pb.currentPage-1}" class="lbf-pagination-next ">&lt;</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=list&&currentPage=1" class="lbf-pagination-page  lbf-pagination-current">first</a></li>
<li class="lbf-pagination-item">${pb.currentPage }/${pb.totalPage }</li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=list&&currentPage=${requestScope.pb.totalPage}" class="lbf-pagination-page  lbf-pagination-current">last</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/BookServlet?method=list&&currentPage=${requestScope.pb.currentPage+1}" class="lbf-pagination-next ">&gt;</a></li>

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

        </div>
    </div>
    <div class="footer">
    <div class="box-center cf"> 
        <div class="footer-menu dib-wrap">
            <a href="" target="_blank">关于NIIT</a>
            <a href="" target="_blank">联系我们</a>
            <a href="" target="_blank">加入我们</a>
            <a href="" target="_blank">帮助中心</a>
            <a href="" target="_blank">提交建议</a>
            <a href="" target="_blank">NIIT论坛</a>
        </div>
        <div class="copy-right">
            <p><span>Copyright © 2002-2017 www.NIIT.com All Rights Reserved</span></p>
            <p>NIIT </p>
        </div>
        
    </div>
</div>

<script>
function PAGINATION_goInput(){
	var page=$("#page").val();
	window.location.href = "${pageContext.request.contextPath}/BookServlet?method=list&&currentPage="+page+"";
}
</script>

<script data-ignore="true" src="${pageContext.request.contextPath }/library/LBF.js.下载"></script>
<script>
    LBF.config({"paths":{"site":"//qidian.gtimg.com/qd/js","qd":"//qidian.gtimg.com/qd"},"vars":{"theme":"//qidian.gtimg.com/qd/css"},"combo":true,"debug":false});
    // 全局的通用数据都放g_data变量里
    var g_data = {};
    g_data.adBanner = {
            adTop:{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573/1bc7561a4b2d4468e3839a83c86581da/0","adCategoryName":"广告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/bjtx/way/1?qd_game_key=bjtx1200x60&qd_dd_p1=316","hasAd":1},
        };
    if (g_data.adBanner.adTop) {
        g_data.adBanner.adTop.eid = 'qd_B83'
    }
    // 环境变量，会按照环境选择性打log
    g_data.envType = 'pro';
    // 用作统计PV
    g_data.pageId = 'qd_P_all';
    //当前查询的参数
    var params = {};
    params.typeId = '-1';
    params.subTypeId =  '-1';
    params.actionId =  '-1';
    params.vipId =  '-1';
    params.sizeId = '-1';
    params.signId =  '-1';
    params.tagName =  '-1';
    params.orderId =  '&#34;&#34;';
    params.newIn3Month = '-1';
    params.showId = '1';
    params.updateId = '-1';
    g_data.params = params;
    //当前页面路由
    g_data.url = '//a.qidian.com';
    // 域名环境变量
    g_data.domainSearch = 'se.qidian.com';
    //环境域名
    g_data.domainPreFix = '';
</script>
<script>
   LBF.use(['lib.jQuery'], function ($) {
    window.$ = $;
   });
</script>
<script>
   LBF.use([ 'monitor.SpeedReport', 'qd/js/all_finish_free/common.0.22.js','util.xssFilter'], function (SpeedReport, Common, xssFilter) {
        // 页面逻辑入口
        new Common({});
        $(window).on('load.speedReport', function () {
            // speedTimer[onload]
            speedTimer.push(new Date().getTime());
                var f1 = 7718, // china reading limited's ID
                    f2 = 219, // site ID
                    f3 = 10; // page ID
            // chrome & IE9 Performance API
            SpeedReport.reportPerformance({
                flag1: f1,
                flag2: f2,
                flag3IE: f3,
                flag3Chrome: f3,
                rate:0.1,
                url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
            });
            // common speedTimer:['dom ready', 'onload']
            var speedReport = SpeedReport.create({
                flag1: f1,
                flag2: f2,
                flag3: f3,
                start: speedZero,
                rate:0.1,
                url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
            });
            // chrome & IE9 Performance API range 1~19, common speedTimer use 20+
            for (var i = 0; i < speedTimer.length; i++) {
                speedReport.add(speedTimer[i], i + 20)
            }
            // http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=224&flag3=1&1=38&2=38&…
            speedReport.send();
        })
    });
    // speedTimer[dom ready], put it before </body>
    speedTimer.push(new Date().getTime());
</script>
<script>
    var _mtac = {};
    (function() {
        var mta = document.createElement("script");
        mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.2";
        mta.setAttribute("name", "MTAH5");
        mta.setAttribute("sid", "500451537");
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(mta, s);
    })();
</script>



<div class="lbf-autocomplete-suggestions" style="position: absolute; display: none; max-height: 384px; z-index: 9999;"></div><div class="lbf-popup lbf-dropdown vipClicks lbf-combobox-panel" style="width: 0px; min-width: 82px; height: auto;"><ul class="lbf-combobox-options"><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="1">会员周点击</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="7">会员月点击</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="8">会员总点击</a></li></ul></div><div class="lbf-popup lbf-dropdown recomm lbf-combobox-panel" style="width: 0px; min-width: 70px; height: auto;"><ul class="lbf-combobox-options"><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="9">周推荐票</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="10">月推荐票</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="2">总推荐票</a></li></ul></div></body>
</html>