<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@ taglib uri="/struts-tags" prefix="s"%><%	String path = request.getContextPath();	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";%><!doctype html><html><head>	<base href="<%=basePath%>">	<meta charset="UTF-8">	<title>富锦手机政务－新闻列表</title>	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>	<link rel="stylesheet" type="text/css" href="css/news.css">	<script src="js/jquery-1.9.min.js"></script>	<script src="js/jquery.mobile.custom.min.js"></script></head><body>	<div id="nav">		<div class="active fun_nav" id="nav1" data-href="0">要闻</div>		<div class="fun_nav" id="nav2" data-href="1">公开</div>		<div class="fun_nav" id="nav3" data-href="2">学习</div>	</div>	<div class="container">		<!--  要闻内容  -->		<div id="container1">			<div class="main fun_a" data-href="app/news_content?id=<s:property value="news.id"/>">				<img src="upload/newsimg/<s:property value="news.img"/>">				<h3><s:property value="news.title"/></h3>			</div>			<div class="list">			<s:iterator value="list">				<div class="list-item">					<a href="app/news_content?id=<s:property value="id"/>" class="img">						<img src="upload/newsimg/<s:property value="img"/>">					</a>					<a class="title" href="app/news_content?id=<s:property value="id"/>">						<h4><s:property value="title"/></h4>					</a>					<p class="content"><s:property value="description"/></p>					<a class="review fun_a" href="#"><s:property value="date"/></a>				</div>			</s:iterator>			</div>			</div>		<!--  公开内容  -->		<div id="container2">			<div class="main fun_a" data-href="app/news_content?id=<s:property value="news2.id"/>">				<img src="upload/newsimg/<s:property value="news2.img"/>">				<h3><s:property value="news2.title"/></h3>			</div>			<div class="list1">			<s:iterator value="list2">				<div class="list-item">					<a href="app/news_content?id=<s:property value="id"/>" class="img">						<img src="upload/newsimg/<s:property value="img"/>">					</a>					<a class="title" href="app/news_content?id=<s:property value="id"/>">						<h4><s:property value="title"/></h4>					</a>					<p class="content"><s:property value="description"/></p>					<a class="review fun_a" href="#"><s:property value="date"/></a>				</div>			</s:iterator>			</div>			</div>		<!--  学习内容  -->		<div id="container3">			<div class="main fun_a" data-href="app/news_content?id=<s:property value="news3.id"/>">				<img src="upload/newsimg/<s:property value="news3.img"/>">				<h3><s:property value="news3.title"/></h3>			</div>			<div class="list">			<s:iterator value="list3">				<div class="list-item">					<a href="app/news_content?id=<s:property value="id"/>" class="img">						<img src="upload/newsimg/<s:property value="img"/>">					</a>					<a class="title" href="app/news_content?id=<s:property value="id"/>">						<h4><s:property value="title"/></h4>					</a>					<p class="content"><s:property value="description"/></p>					<a class="review fun_a" href="#"><s:property value="date"/></a>				</div>			</s:iterator>			</div>			</div>	</div>	<script type="text/javascript">	//给所有的a标签加入tap事件	$('.fun_a').tap(function(){		location.href=$(this).attr('data-href')		return false;	})	$('.fun_nav').tap(function(){		var th=$(this).attr('data-href')		$(this).parent().children().removeClass('active')		$(this).addClass('active')		$('.container').children().hide()		$('.container>div:eq('+th+')').show();		return false;	})	$('#container1').swipeleft(function(){		$('#nav1').removeClass('active');		$('#nav2').addClass('active')		$('#container1').hide();		$('#container2').show();	})	$('#container1').swiperight(function(){			})	$('#container2').swipeleft(function(){		$('#nav2').removeClass('active');		$('#nav3').addClass('active')		$('#container2').hide();		$('#container3').show();	})	$('#container2').swiperight(function(){		$('#nav2').removeClass('active')		$('#nav1').addClass('active')		$('#container2').hide();		$('#container1').show();	})	$('#container3').swipeleft(function(){			})	$('#container3').swiperight(function(){		$('#nav3').removeClass('active')		$('#nav2').addClass('active')		$('#container3').hide();		$('#container2').show();	})	</script></body></html>