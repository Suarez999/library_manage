<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>NIIT</title>
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta http-equiv="mobile-agent" content="format=wml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://h5.qidian.com/bookstore.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <script src="./library/stats.js.下载" name="MTAH5" sid="500451537"></script><script>
        document.domain = 'qidian.com';
    </script>
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


    
<link rel="stylesheet" data-ignore="true" href="./library/Button.0.79.css">

    
<link charset="utf-8" rel="stylesheet" href="./library/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="./library/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="./library/Popup.css"></head>
<body style="zoom: 1;">
<div class="share-img">
    <img src="./library/share.0.4.png" width="300" height="300">
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
            <li class="nav-li"><a href="http://localhost:8080/library_manage/library.jsp" data-eid="qd_A15" >categories</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A16"> New Books</a></li>
            <li class="nav-li"><a href="" data-eid="qd_A17">Journal Navigation</a></li>
            <li class="nav-li"><a href="http://localhost:8080/library_manage/app/hot.jsp" data-eid="qd_A18">Reader recommendation</a></li>
            <li class="nav-li"><a href="" target="_blank" data-eid="qd_A19" class="act">My library</a>
        </ul>
    </div>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>
    <div class="all-pro-wrap box-center cf">
        <div class="range-sidebar fl" data-l1="4">
    <div class="site" data-l2="1">
        <a class="act" href="javascript:">all</a>
    </div>
    <div class="selected" data-l2="2">
        </div>
    
    <div class="select-list">
        <div class="work-filter type-filter" data-l2="3">
            <h3>categories</h3>
            <ul class="row-1" type="category">
                
                <li data-id="-1" class="act arrow"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B17">all</a></li>
                
                <li data-id="21" class=""><a href="http://a.qidian.com/?chanId=21&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B18">computer<cite><i></i></cite></a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?chanId=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B19">science<cite><i></i></cite></a></li>
                
                <li data-id="2" class=""><a href="http://a.qidian.com/?chanId=2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B20">politics<cite><i></i></cite></a></li>
                
                <li data-id="22" class=""><a href="http://a.qidian.com/?chanId=22&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B21">military<cite><i></i></cite></a></li>
                
            </ul>
            
            <ul class="row-2" type="category">
                
                <li data-id="4" class=""><a href="http://a.qidian.com/?chanId=4&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B22">economic<cite><i></i></cite></a></li>
                
                <li data-id="15" class=""><a href="http://a.qidian.com/?chanId=15&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B23">history<cite><i></i></cite></a></li>
                
                <li data-id="6" class=""><a href="http://a.qidian.com/?chanId=6&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B24">art<cite><i></i></cite></a></li>
                
                <li data-id="5" class=""><a href="http://a.qidian.com/?chanId=5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B25">astronomy<cite><i></i></cite></a></li>
                
                <li data-id="7" class=""><a href="http://a.qidian.com/?chanId=7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B26">biology<cite><i></i></cite></a></li>
                
            </ul>
            
            <ul class="row-3" type="category">
                
                <li data-id="8" class=""><a href="http://a.qidian.com/?chanId=8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B27">sports<cite><i></i></cite></a></li>
                
                <li data-id="9" class=""><a href="http://a.qidian.com/?chanId=9&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B28">traffic<cite><i></i></cite></a></li>
                
                <li data-id="10" class=""><a href="http://a.qidian.com/?chanId=10&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B29">environment<cite><i></i></cite></a></li>
                
                <li data-id="12" class=""><a href="http://a.qidian.com/?chanId=12&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B30">maths<cite><i></i></cite></a></li>
                
                <li data-id="20076" class=""><a href="http://a.qidian.com/?chanId=20076&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B70">chemistry<cite><i></i></cite></a></li>
                
            </ul>
            
        </div>
        
        <div class="work-filter action-filter" data-l2="4">
            
            <h3>state</h3>
            <ul type="action">
                
                <li data-id="-1" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B31">all</a></li>
                
                <li data-id="0" class=""><a href="http://a.qidian.com/?action=0&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B32">available</a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?action=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B33">unavailable</a></li>
                
            </ul>
        </div>
        
        
        
        <div class="work-filter vip-filter" data-l2="5">
            <h3>属性</h3>
            <ul type="vip">
                
                <li data-id="-1" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B34">全部</a></li>
                
                <li data-id="0" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;vip=0&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B35">免费</a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;vip=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B36">VIP</a></li>
                
            </ul>
        </div>
        
        <div class="work-filter" data-l2="6">
            
            <h3>字数</h3>
            <ul type="size">
                
                <li data-id="-1" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B37">全部</a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?size=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B38">30万字以下</a></li>
                
                <li data-id="2" class=""><a href="http://a.qidian.com/?size=2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B39">30-50万字</a></li>
                
                <li data-id="3" class=""><a href="http://a.qidian.com/?size=3&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B40">50-100万字</a></li>
                
                <li data-id="4" class=""><a href="http://a.qidian.com/?size=4&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B41">100-200万字</a></li>
                
                <li data-id="5" class=""><a href="http://a.qidian.com/?size=5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B42">200万字以上</a></li>
                
            </ul>
        </div>
        <div class="work-filter" data-l2="7">
            
            <h3>品质</h3>
            <ul type="sign">
                
                <li data-id="-1" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B43">全部</a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;sign=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B44">签约作品</a></li>
                
                <li data-id="2" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;sign=2&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B45">精品小说</a></li>
                
            </ul>
        </div>
        <div class="work-filter" data-l2="9">
            
            <h3>更新时间</h3>
            <ul type="update">
                
                <li data-id="-1" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B71">全部</a></li>
                
                <li data-id="1" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;update=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B72">三日内</a></li>
                
                <li data-id="2" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;update=2&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B73">七日内</a></li>
                
                <li data-id="3" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;update=3&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B74">半月内</a></li>
                
                <li data-id="4" class=""><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;update=4&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B75">一月内</a></li>
                
            </ul>
        </div>
        <div class="work-filter tag" data-l2="8">
            <h3>标签</h3>
            
            <ul type="tag">
                
                <li data-eid="qd_B46" class="act"><a href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">全部</a></li>
                
                <li data-eid="qd_B47" data-tid="豪门"><a href="http://a.qidian.com/?tag=%E8%B1%AA%E9%97%A8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">豪门</a></li>
                
                <li data-eid="qd_B47" data-tid="孤儿"><a href="http://a.qidian.com/?tag=%E5%AD%A4%E5%84%BF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">孤儿</a></li>
                
                <li data-eid="qd_B47" data-tid="盗贼"><a href="http://a.qidian.com/?tag=%E7%9B%97%E8%B4%BC&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">盗贼</a></li>
                
                <li data-eid="qd_B47" data-tid="特工"><a href="http://a.qidian.com/?tag=%E7%89%B9%E5%B7%A5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">特工</a></li>
                
                <li data-eid="qd_B47" data-tid="黑客"><a href="http://a.qidian.com/?tag=%E9%BB%91%E5%AE%A2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">黑客</a></li>
                
                <li data-eid="qd_B47" data-tid="明星"><a href="http://a.qidian.com/?tag=%E6%98%8E%E6%98%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">明星</a></li>
                
                <li data-eid="qd_B47" data-tid="特种兵"><a href="http://a.qidian.com/?tag=%E7%89%B9%E7%A7%8D%E5%85%B5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">特种兵</a></li>
                
                <li data-eid="qd_B47" data-tid="杀手"><a href="http://a.qidian.com/?tag=%E6%9D%80%E6%89%8B&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">杀手</a></li>
                
                <li data-eid="qd_B47" data-tid="老师"><a href="http://a.qidian.com/?tag=%E8%80%81%E5%B8%88&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">老师</a></li>
                
                <li data-eid="qd_B47" data-tid="学生"><a href="http://a.qidian.com/?tag=%E5%AD%A6%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">学生</a></li>
                
                
                <li class="more" id="unfold"><a href="javascript:" data-eid="qd_B48">展开<span><i></i></span></a></li>
                
                <li data-eid="qd_B47" data-tid="胖子" class="hidden"><a href="http://a.qidian.com/?tag=%E8%83%96%E5%AD%90&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">胖子</a></li>
                
                <li data-eid="qd_B47" data-tid="宠物" class="hidden"><a href="http://a.qidian.com/?tag=%E5%AE%A0%E7%89%A9&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">宠物</a></li>
                
                <li data-eid="qd_B47" data-tid="蜀山" class="hidden"><a href="http://a.qidian.com/?tag=%E8%9C%80%E5%B1%B1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">蜀山</a></li>
                
                <li data-eid="qd_B47" data-tid="魔王附体" class="hidden"><a href="http://a.qidian.com/?tag=%E9%AD%94%E7%8E%8B%E9%99%84%E4%BD%93&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">魔王附体</a></li>
                
                <li data-eid="qd_B47" data-tid="LOL" class="hidden"><a href="http://a.qidian.com/?tag=LOL&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">LOL</a></li>
                
                <li data-eid="qd_B47" data-tid="废材流" class="hidden"><a href="http://a.qidian.com/?tag=%E5%BA%9F%E6%9D%90%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">废材流</a></li>
                
                <li data-eid="qd_B47" data-tid="护短" class="hidden"><a href="http://a.qidian.com/?tag=%E6%8A%A4%E7%9F%AD&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">护短</a></li>
                
                <li data-eid="qd_B47" data-tid="卡片" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8D%A1%E7%89%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">卡片</a></li>
                
                <li data-eid="qd_B47" data-tid="手游" class="hidden"><a href="http://a.qidian.com/?tag=%E6%89%8B%E6%B8%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">手游</a></li>
                
                <li data-eid="qd_B47" data-tid="法师" class="hidden"><a href="http://a.qidian.com/?tag=%E6%B3%95%E5%B8%88&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">法师</a></li>
                
                <li data-eid="qd_B47" data-tid="医生" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8C%BB%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">医生</a></li>
                
                <li data-eid="qd_B47" data-tid="感情" class="hidden"><a href="http://a.qidian.com/?tag=%E6%84%9F%E6%83%85&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">感情</a></li>
                
                <li data-eid="qd_B47" data-tid="鉴宝" class="hidden"><a href="http://a.qidian.com/?tag=%E9%89%B4%E5%AE%9D&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">鉴宝</a></li>
                
                <li data-eid="qd_B47" data-tid="亡灵" class="hidden"><a href="http://a.qidian.com/?tag=%E4%BA%A1%E7%81%B5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">亡灵</a></li>
                
                <li data-eid="qd_B47" data-tid="职场" class="hidden"><a href="http://a.qidian.com/?tag=%E8%81%8C%E5%9C%BA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">职场</a></li>
                
                <li data-eid="qd_B47" data-tid="吸血鬼" class="hidden"><a href="http://a.qidian.com/?tag=%E5%90%B8%E8%A1%80%E9%AC%BC&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">吸血鬼</a></li>
                
                <li data-eid="qd_B47" data-tid="龙" class="hidden"><a href="http://a.qidian.com/?tag=%E9%BE%99&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">龙</a></li>
                
                <li data-eid="qd_B47" data-tid="西游" class="hidden"><a href="http://a.qidian.com/?tag=%E8%A5%BF%E6%B8%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">西游</a></li>
                
                <li data-eid="qd_B47" data-tid="鬼怪" class="hidden"><a href="http://a.qidian.com/?tag=%E9%AC%BC%E6%80%AA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">鬼怪</a></li>
                
                <li data-eid="qd_B47" data-tid="阵法" class="hidden"><a href="http://a.qidian.com/?tag=%E9%98%B5%E6%B3%95&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">阵法</a></li>
                
                <li data-eid="qd_B47" data-tid="魔兽" class="hidden"><a href="http://a.qidian.com/?tag=%E9%AD%94%E5%85%BD&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">魔兽</a></li>
                
                <li data-eid="qd_B47" data-tid="勇猛" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8B%87%E7%8C%9B&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">勇猛</a></li>
                
                <li data-eid="qd_B47" data-tid="玄学" class="hidden"><a href="http://a.qidian.com/?tag=%E7%8E%84%E5%AD%A6&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">玄学</a></li>
                
                <li data-eid="qd_B47" data-tid="群穿" class="hidden"><a href="http://a.qidian.com/?tag=%E7%BE%A4%E7%A9%BF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">群穿</a></li>
                
                <li data-eid="qd_B47" data-tid="丹药" class="hidden"><a href="http://a.qidian.com/?tag=%E4%B8%B9%E8%8D%AF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">丹药</a></li>
                
                <li data-eid="qd_B47" data-tid="练功流" class="hidden"><a href="http://a.qidian.com/?tag=%E7%BB%83%E5%8A%9F%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">练功流</a></li>
                
                <li data-eid="qd_B47" data-tid="召唤流" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8F%AC%E5%94%A4%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">召唤流</a></li>
                
                <li data-eid="qd_B47" data-tid="恶搞" class="hidden"><a href="http://a.qidian.com/?tag=%E6%81%B6%E6%90%9E&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">恶搞</a></li>
                
                <li data-eid="qd_B47" data-tid="爆笑" class="hidden"><a href="http://a.qidian.com/?tag=%E7%88%86%E7%AC%91&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">爆笑</a></li>
                
                <li data-eid="qd_B47" data-tid="轻松" class="hidden"><a href="http://a.qidian.com/?tag=%E8%BD%BB%E6%9D%BE&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">轻松</a></li>
                
                <li data-eid="qd_B47" data-tid="冷酷" class="hidden"><a href="http://a.qidian.com/?tag=%E5%86%B7%E9%85%B7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">冷酷</a></li>
                
                <li data-eid="qd_B47" data-tid="腹黑" class="hidden"><a href="http://a.qidian.com/?tag=%E8%85%B9%E9%BB%91&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">腹黑</a></li>
                
                <li data-eid="qd_B47" data-tid="阳光" class="hidden"><a href="http://a.qidian.com/?tag=%E9%98%B3%E5%85%89&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">阳光</a></li>
                
                <li data-eid="qd_B47" data-tid="狡猾" class="hidden"><a href="http://a.qidian.com/?tag=%E7%8B%A1%E7%8C%BE&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">狡猾</a></li>
                
                <li data-eid="qd_B47" data-tid="机智" class="hidden"><a href="http://a.qidian.com/?tag=%E6%9C%BA%E6%99%BA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">机智</a></li>
                
                <li data-eid="qd_B47" data-tid="猥琐" class="hidden"><a href="http://a.qidian.com/?tag=%E7%8C%A5%E7%90%90&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">猥琐</a></li>
                
                <li data-eid="qd_B47" data-tid="嚣张" class="hidden"><a href="http://a.qidian.com/?tag=%E5%9A%A3%E5%BC%A0&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">嚣张</a></li>
                
                <li data-eid="qd_B47" data-tid="淡定" class="hidden"><a href="http://a.qidian.com/?tag=%E6%B7%A1%E5%AE%9A&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">淡定</a></li>
                
                <li data-eid="qd_B47" data-tid="僵尸" class="hidden"><a href="http://a.qidian.com/?tag=%E5%83%B5%E5%B0%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">僵尸</a></li>
                
                <li data-eid="qd_B47" data-tid="丧尸" class="hidden"><a href="http://a.qidian.com/?tag=%E4%B8%A7%E5%B0%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">丧尸</a></li>
                
                <li data-eid="qd_B47" data-tid="盗墓" class="hidden"><a href="http://a.qidian.com/?tag=%E7%9B%97%E5%A2%93&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">盗墓</a></li>
                
                <li data-eid="qd_B47" data-tid="随身流" class="hidden"><a href="http://a.qidian.com/?tag=%E9%9A%8F%E8%BA%AB%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">随身流</a></li>
                
                <li data-eid="qd_B47" data-tid="软饭流" class="hidden"><a href="http://a.qidian.com/?tag=%E8%BD%AF%E9%A5%AD%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">软饭流</a></li>
                
                <li data-eid="qd_B47" data-tid="无敌文" class="hidden"><a href="http://a.qidian.com/?tag=%E6%97%A0%E6%95%8C%E6%96%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">无敌文</a></li>
                
                <li data-eid="qd_B47" data-tid="异兽流" class="hidden"><a href="http://a.qidian.com/?tag=%E5%BC%82%E5%85%BD%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">异兽流</a></li>
                
                <li data-eid="qd_B47" data-tid="系统流" class="hidden"><a href="http://a.qidian.com/?tag=%E7%B3%BB%E7%BB%9F%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">系统流</a></li>
                
                <li data-eid="qd_B47" data-tid="洪荒流" class="hidden"><a href="http://a.qidian.com/?tag=%E6%B4%AA%E8%8D%92%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">洪荒流</a></li>
                
                <li data-eid="qd_B47" data-tid="学院流" class="hidden"><a href="http://a.qidian.com/?tag=%E5%AD%A6%E9%99%A2%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">学院流</a></li>
                
                <li data-eid="qd_B47" data-tid="位面" class="hidden"><a href="http://a.qidian.com/?tag=%E4%BD%8D%E9%9D%A2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">位面</a></li>
                
                <li data-eid="qd_B47" data-tid="铁血" class="hidden"><a href="http://a.qidian.com/?tag=%E9%93%81%E8%A1%80&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">铁血</a></li>
                
                <li data-eid="qd_B47" data-tid="励志" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8A%B1%E5%BF%97&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">励志</a></li>
                
                <li data-eid="qd_B47" data-tid="坚毅" class="hidden"><a href="http://a.qidian.com/?tag=%E5%9D%9A%E6%AF%85&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">坚毅</a></li>
                
                <li data-eid="qd_B47" data-tid="变身" class="hidden"><a href="http://a.qidian.com/?tag=%E5%8F%98%E8%BA%AB&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">变身</a></li>
                
                <li data-eid="qd_B47" data-tid="强者回归" class="hidden"><a href="http://a.qidian.com/?tag=%E5%BC%BA%E8%80%85%E5%9B%9E%E5%BD%92&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">强者回归</a></li>
                
                <li data-eid="qd_B47" data-tid="赚钱" class="hidden"><a href="http://a.qidian.com/?tag=%E8%B5%9A%E9%92%B1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">赚钱</a></li>
                
                <li data-eid="qd_B47" data-tid="争霸流" class="hidden"><a href="http://a.qidian.com/?tag=%E4%BA%89%E9%9C%B8%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">争霸流</a></li>
                
                <li data-eid="qd_B47" data-tid="种田文" class="hidden"><a href="http://a.qidian.com/?tag=%E7%A7%8D%E7%94%B0%E6%96%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">种田文</a></li>
                
                <li data-eid="qd_B47" data-tid="宅男" class="hidden"><a href="http://a.qidian.com/?tag=%E5%AE%85%E7%94%B7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">宅男</a></li>
                
                <li data-eid="qd_B47" data-tid="无限流" class="hidden"><a href="http://a.qidian.com/?tag=%E6%97%A0%E9%99%90%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">无限流</a></li>
                
                <li data-eid="qd_B47" data-tid="技术流" class="hidden"><a href="http://a.qidian.com/?tag=%E6%8A%80%E6%9C%AF%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">技术流</a></li>
                
                <li data-eid="qd_B47" data-tid="凡人流" class="hidden"><a href="http://a.qidian.com/?tag=%E5%87%A1%E4%BA%BA%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">凡人流</a></li>
                
                <li data-eid="qd_B47" data-tid="热血" class="hidden"><a href="http://a.qidian.com/?tag=%E7%83%AD%E8%A1%80&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">热血</a></li>
                
                <li data-eid="qd_B47" data-tid="重生" class="hidden"><a href="http://a.qidian.com/?tag=%E9%87%8D%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">重生</a></li>
                
                <li data-eid="qd_B47" data-tid="穿越" class="hidden"><a href="http://a.qidian.com/?tag=%E7%A9%BF%E8%B6%8A&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0">穿越</a></li>
                
            </ul>
        </div>
    </div>
</div>
        <div class="main-content-wrap fl" data-l1="5">
            
<div class="tool-bar cf">
    <div class="view-mode" id="view-mode">
        <a id="img-text" class="iconfont act" href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B54"></a><em>|</em><a id="only-text" class="iconfont  " href="http://a.qidian.com/?orderId=&amp;page=1&amp;style=2&amp;pageSize=20&amp;siteid=1&amp;hiddenField=0" data-eid="qd_B55"></a>
    </div>
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
                    <a href="http://localhost:8080/library_manage/app/bookinfo.jsp" data-bid="1004608738" data-eid="qd_B57" target="_blank"><img src="${pageContext.request.contextPath }/${pb.imageUrl }"></a>
                </div>
                <div class="book-mid-info">
                    <h4><a href="http://localhost:8080/library_manage/app/bookinfo.jsp" target="_blank" data-eid="qd_B58" data-bid="1004608738">${pb.name }</a></h4>
                    <p class="author">
                        <img src="${pb.imageUrl }"><a class="name" href="http://localhost:8080/library_manage/app/bookinfo.jsp" data-eid="qd_B59" target="_blank">${pb.author }</a><em>|</em><a href="http://xuanhuan.qidian.com/" target="_blank" data-eid="qd_B60">分类</a><i></i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="
script:" data-eid="qd_B61"></a><em></em>
                        
                    </p>
                    <p class="intro">
                    制造商
                    </p>
                    <p class="update"><span>索书号</span>
                        
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

<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/Bookservlet?method=list&&currentPage=${requestScope.pageBean.currentPage-1}" class="lbf-pagination-next ">&lt;</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/Bookservlet?method=list&&currentPage=1" class="lbf-pagination-page  lbf-pagination-current">首页</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/Bookservlet?method=list&&currentPage=${requestScope.pageBean.totalPage}" class="lbf-pagination-page  lbf-pagination-current">末页</a></li>
<li class="lbf-pagination-item"><a href="${pageContext.request.contextPath }/Bookservlet?method=list&&currentPage=${requestScope.pageBean.currentPage+1}" class="lbf-pagination-next ">&gt;</a></li>

</ul>
<script>
function PAGINATION_goInput(){function setParam(param,paramVal,url){if(!url){url="javascript:;";return url}var theAnchor=null;var newAdditionalURL="";var tempArray=url.split("?");var baseURL=tempArray[0];var additionalURL=tempArray[1];var temp="";if(additionalURL){var tmpAnchor=additionalURL.split("#");var TheParams=tmpAnchor[0];theAnchor=tmpAnchor[1];if(theAnchor)additionalURL=TheParams;tempArray=additionalURL.split("&");for(o=0;o<tempArray.length;o++){if(tempArray[o].split("=")[0]!=param){newAdditionalURL+=temp+tempArray[o];temp="&"}}}else{var tmpAnchor=baseURL.split("#");var TheParams=tmpAnchor[0];theAnchor=tmpAnchor[1];if(TheParams)baseURL=TheParams}if(theAnchor)paramVal+="#"+theAnchor;var rowsTxt=temp+""+param+"="+paramVal;return "//a.qidian.com"+"?"+newAdditionalURL+rowsTxt};location.href=setParam("page",document.getElementById("PAGINATION-INPUT").value,location.href)}
</script>

<div class="lbf-pagination-jump"><input id="PAGINATION-INPUT" type="text" class="lbf-pagination-input" value="1"><a href="javascript:;" id="PAGINATION-BUTTON" onclick="PAGINATION_goInput()" class="lbf-pagination-go">GO</a></div>

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

</div>
<script data-ignore="true" src="./library/LBF.js.下载"></script>
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