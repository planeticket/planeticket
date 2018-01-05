<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket05/ticket05.css">
<link rel="stylesheet" href="css/common/head.css">
<link rel="stylesheet" href="css/common/reset.css">
</head>
<body>
	<div class="wrap">
		<!-- 以下为头部内容 -->
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
							<img src="img/common/gift_03.png" alt=""> <a id="headcon1"
								href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">注册</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">登录</a>
						</div>
						<div class="tel">
							<img src="img/common/phone_03.png" alt=""> <a href="javascript:;">400-800-8820</a>
						</div>
					</div>

				</div>
				<div class="con2">
					<a class="posimg" href="javascript:;"><img
						src="img/common/hose_03.png" alt=""></a> <a href="javascript:;">第一次</a>
					<a href="javascript:;">目的地</a> <a href="javascript:;">自订行程</a> <a
						href="javascript:;">游记</a> <a href="javascript:;">特产</a> <a
						href="javascript:;">优惠</a> <a href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<!-- 进度图 -->
		<div class="banner">
			<div class="bannin"></div>
		</div>


		<!-- 以下为内容 -->
		<div class="content">
			<!-- 标题 -->
			<div class="tittle">
				<span class="zhifufangshi">支付方式</span> <span class="guize">航班价格变动频繁，请在30分钟内完成支付以确保您的机位和价格</span>

			</div>
			<!-- 订单信息 -->
			<div class="dingdantit">
				<p>订单金额</p>
				<var>${planeMsgByid.pmPrice+planeMsgByid.planeOil.poOil+planeMsgByid.planeOil.poCreate }</var>
			</div>


			<div class="dingdancon">
				<p>单程机票：${planeMsgByid.planeAirport.paCity }→${planeMsgByid.province.cityName }</p>
				<p>去程：${planeMsgByid.planeAirport.paCity } ${planeMsgByid.planeAirport.paName } → ${planeMsgByid.province.cityName } 出发日期：<fmt:formatDate value="${planeMsgByid.startTime }" pattern="yyyy年MM月dd日"/></p>

			</div>



			<p class="reminder">航班价格变动频繁，请在30分钟内完成支付</p>
			<div class="biaozhundexuanze">
				<h3 id="gaizihao">您一共需要支付：${planeMsgByid.pmPrice+planeMsgByid.planeOil.poOil+planeMsgByid.planeOil.poCreate }</h3>
			</div>
			<!-- 支付方式 -->
			<div id="card">
				<li class="xinyong">信用卡</li>
				<li>第三方支付</li>
				<li>网上银行</li>
			</div>
			<ul id="message">
				<li class="show">信用卡</li>
				<li>第三方支付</li>
				<li>网上银行</li>
			</ul>




			<!-- 提交订单 -->
			<a href="ticket06" class="tijiaodingdan" id="tijiao">提交订单</a> <a
				href="SaveController" id="xiugai">返回修改</a>
		</div>
	</div>

	<!-- 以下为footer -->
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
<script type="text/javascript" src="js/ticket05/ticket05.js"></script>
</html>