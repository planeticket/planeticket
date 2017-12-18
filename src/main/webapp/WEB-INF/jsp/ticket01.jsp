<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ticket01</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="css/ticket01/ticket01.css">
<link rel="stylesheet" href="css/common/head.css">
<link rel="stylesheet" href="css/common/reset.css">
<link rel="stylesheet" href="css/ticket01/calendar-pro.css" />
<script language="javascript" type="text/javascript"
	src="js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/jquery-2.1.4.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/calendar-pro.js"></script>
<script language="javascript" type="text/javascript"
	src="js/WdatePicker.js"></script>
</head>
<body>
	<%
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>
	<div class="wrap">
		<div class="header">
			<div class="con">
				<!-- 头部内容 -->
				<div class="con1">
					<div class="search">
						<input type="text" name="" value=""><a
							href="https://www.baidu.com/"></a>
					</div>
					<div class="leftsearch">
						<div class="bag">
							<img src="img/common/gift_03.png" alt=""> <a
								id="headcon1" href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">注册</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">登录</a>
						</div>
						<div class="tel">
							<img src="img/common/phone_03.png" alt=""> <a
								href="javascript:;">400-800-8820</a>
						</div>
					</div>
				</div>
				<div class="con2">
					<a class="posimg" href=""><img src="img/common/hose_03.png"
						alt=""></a> <a href="javascript:;">第一次</a> <a
						href="javascript:;">目的地</a> <a href="javascript:;">自订行程</a> <a
						href="javascript:;">游记</a> <a href="javascript:;">特产</a> <a
						href="javascript:;">优惠</a> <a href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<div class="pos">
			<a href="javascript:;">首页</a> &gt; <a href="javascript:;">预定</a> &gt;
			机票
		</div>
		<div class="content">
			<!-- conup -->
			<div class="upcon">
				<div class="upconleft">
					<div class="clickcity">
						<h3 class="upconleftnormal onlygo">
							<a href="javascript:;"></a>单程
						</h3>
						<h3 class="upconleftnormal">出发城市</h3>
						<select class="upconleftnormal city" name="" id="">
							<option value="">北京</option>
						</select>
						<h3 class="upconleftnormal">出发日期</h3>
						<div id="time1" class="times">
							<input type="text" id="d1"
								onclick="WdatePicker({minDate:'%y-%M-%d',maxDate:'%y-{%M+3}-%d'})"
								value="${df }" />
						</div>
						<div id="time2" class="times">
							<input type="text" id="d2"
								onclick="WdatePicker({dateFmt:'H:mm',minDate:'8:00',maxDate:'11:30'})" />
						</div>
					</div>
					<div class="clickcity">
						<h3 class="upconleftnormal onlygo">
							<a href="javascript:;"></a>往返
						</h3>
						<h3 class="upconleftnormal">出发城市</h3>
						<select class="upconleftnormal city" name="" id="">
							<option value="">北京</option>
						</select>
						<h3 class="upconleftnormal">出发日期</h3>
						<div id="time3">
							<input type="text" id="d1"
								onclick="WdatePicker({minDate:'%y-%M-%d',maxDate:'%y-{%M+3}-%d'})" />
						</div>
						<div id="time4">
							<input type="text" id="d2"
								onclick="WdatePicker({dateFmt:'H:mm',minDate:'8:00',maxDate:'11:30'})" />
						</div>
					</div>
				</div>
				<a href="ticket02.html" class="upconright"> 订机票 </a>
			</div>
			<!-- band -->
			<div class="band">遛弯特价机票</div>

			<!-- leftcon -->
			<div class="leftcon">
				<div class="leftupcon">
					<select name="" id=""><option value="">北京</option></select> <a
						href="javascript:;"><option value=""></option></a> <select name=""
						id=""><option value="">台湾</option></select>
				</div>

				<!-- 容器布局 -->
				<div class="calendar-box demo-box"></div>

			</div>
			<!-- rightcon -->
			<!--大图滚动-->
			<div class="rightcon">
				<div class="box">
					<div class="consimg">
						<img src="img/ticket01/youbiantupian_01.jpg" alt="">
						<img src="img/ticket01/youbiantupian_02.jpg" alt="">
						<img src="img/ticket01/youbiantupian_03.jpg" alt="">
						<img src="img/ticket01/youbiantupian_04.jpg" alt="">
						<img src="img/ticket01/youbiantupian_05.jpg" alt="">						
					</div>	
					<h3></h3><p>一票在手,免费游岛</p>
				</div>
				<!-- <p id="left"></p>
				<p id="right"></p> -->
			</div>
			<!--大图滚动-end-->
		</div>
		<div class="footer">
			<div class="con1">
				<ul>
					<li><a class="tit" href="javascript:;">关于遛弯</a></li>
					<li><a href="javascript:;">公司简介</a></li>
					<li><a href="javascript:;">联系我们</a></li>
					<li><a href="javascript:;">招聘英才</a></li>
					<li><a href="javascript:;">网站地图</a></li>
				</ul>
				<ul>
					<li><a class="tit" href="javascript:;">帮助中心</a></li>
					<li><a href="javascript:;">赴台手续</a></li>
					<li><a href="javascript:;">遛弯玩法</a></li>
					<li><a href="javascript:;">常见问题</a></li>
				</ul>
				<ul>
					<li><a class="tit" href="javascript:;">网站条款</a></li>
					<li><a href="javascript:;">服务条款</a></li>
					<li><a href="javascript:;">免责声明</a></li>

				</ul>
				<ul>
					<li><a class="tit" href="javascript:;">关注我们</a></li>
					<li class="share"><span class="weibo"></span> <span
						class="weixin"></span></li>

				</ul>
				<ul class="list5">
					<li class="phonenum">400 820 8820</li>
					<li>周一至周日</a></li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>

				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right
				Reserved. 京ICP备11</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var calendarDate = new Date();
	var year = calendarDate.getFullYear();//当前年
	var month = calendarDate.getMonth() + 1;//当前月
	var date = calendarDate.getDate();//当前日

	var mydate = [];
	var nextdate = new Date()
	for (var i = 0; i < 90; i++) {
		nextdate.setTime(calendarDate.getTime() + 24 * 60 * 60 * i * 1000)
		mydate.push({
			date : nextdate.getFullYear() + "-" + (nextdate.getMonth() + 1)
					+ "-" + nextdate.getDate(),
			data : 116 + i
		});
	};

	$('.calendar-box').calendar({
		ele : '.demo-box', //依附
		title : '',
		beginDate : year + "-" + month + "-" + date,
		//endDate : '2018-02-16',
		data : mydate
	});
</script>

<script language="javascript" type="text/javascript"
	src="js/ticket01.js"></script>
</html>