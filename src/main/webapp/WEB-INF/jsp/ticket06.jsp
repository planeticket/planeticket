<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket06/ticket06.css">
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
			<h3 class="biaotiti">
				<img src="img/common/greenxiaogougou_03.png" alt="">您的订单已成功提交我们操作扣款，订单将在
				<var><fmt:formatDate value="${planeMsgByid.startTime }" pattern="yyyy年MM月dd日"/></var>
				<var></var>
				前给您确认，如果不能确认将全额退款至您的付款账户。
			</h3>

			<!-- 左内容 -->
			<div class="left5">
				<h3>
					订单号：
					<var>290572978</var>
				</h3>
				<h3>
					总价：￥
					<var>${planeMsgByid.pmPrice+planeMsgByid.planeOil.poOil+planeMsgByid.planeOil.poCreate }</var>
				</h3>
				<div class="twobutton">
					<a href="ticket07" class="chakanbutton">查看订单</a> <a
						href="getMessage" class="chakanbutton" id="rightbutton">自订行程</a>
				</div>
				<p class="p1p">请确保您的手机号码填写正确，无效手机号可能会导致订单取消。</p>
				<hr>
				<p class="p2p">
					订单号已发送至您的手机：
					<var>135344*******</var>
				</p>
				<p class="p2p">请记住您的订单号，您也可以通过个人中心中的我的订单中查询此订单。</p>
				<p class="p2p">订单实际入住成功点评后每赠送100积分，您可以进入 个人中心> 我的积分中查看。</p>
			</div>

			<!-- 右内容 -->
			<div class="conright">
				<h3 class="nindexuanze">您的选择</h3>
				<div class="biaozhundexuanze">
					<img src="img/ticket06/tic6pic_03.jpg" alt=""
						class="xilaideng">
					<div class="tupianyouce">

						<p>去程  <fmt:formatDate value="${planeMsgByid.startTime }" pattern="MM月dd日"/></p>
						<p>${planeMsgByid.planeAirport.paCity }→${planeMsgByid.province.cityName }</p>

					</div>
				</div>
				<h3 class="nanfanghangkong">${planeMsgByid.planeCompany.pcName} ${planeMsgByid.pmFight }  经济舱</h3>
				<p class="shijian"><fmt:formatDate value="${planeMsgByid.startTime }" pattern="yyyy年MM月dd日"/> <fmt:formatDate value="${planeMsgByid.startTime }" pattern="HH:mm:ss"/> ${planeMsgByid.planeAirport.paName }</p>
				<p class="shijian"><fmt:formatDate value="${planeMsgByid.endTime }" pattern="yyyy年MM月dd日"/> <fmt:formatDate value="${planeMsgByid.endTime }" pattern="HH:mm:ss"/> ${planeMsgByid.province.cityName }</p>

				<div class="biaozhundexuanze realjine">
					<h3 class="jiudianmingzi">应付金额</h3>
					<var class="yingfujine">${planeMsgByid.pmPrice+planeMsgByid.planeOil.poOil+planeMsgByid.planeOil.poCreate }</var>
					<p class="danjia">明细（1名乘客）</p>

				</div>
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
</html>