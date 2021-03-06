<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket04/ticket04.css">
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
						<input type="text" name="" value=""><a href="https://www.baidu.com/"></a>
					</div>
					<div class="leftsearch">
							<div class="bag" >
							<img src="img/common/gift_03.png" alt="">
							<a id="headcon1" href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">注册</a></div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">登录</a></div>
						<div class="tel">
							<img src="img/common/phone_03.png" alt="">
							<a  href="javascript:;">400-800-8820</a>
						</div>
					</div>
					
				</div>
				<div class="con2">
					<a class="posimg" href="javascript:;"><img src="img/common/hose_03.png" alt=""></a>
					<a href="javascript:;">第一次</a>
					<a href="javascript:;">目的地</a>
					<a href="javascript:;">自订行程</a>
					<a href="javascript:;">游记</a>
					<a href="javascript:;">特产</a>
					<a href="javascript:;">优惠</a>
					<a href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<!-- 进度图 -->
		<div class="banner"><div class="bannin"></div></div>
		

		<!-- 以下为内容 -->
		<div class="content">
			<!-- 右边内容 -->
			<div class="conright">
				<p class="conrighttit">航班的起飞和到达时间为当地时间</p>
				<div class="conrightticketinfo">
					<p class="conrighttit2">去程  <fmt:formatDate value="${planeMsgByid.startTime }" pattern="MM月dd日"/> ${planeMsgByid.planeAirport.paCity }→${planeMsgByid.province.cityName }</p>
					<h3 class="conrightticketinfoh3">${planeMsgByid.planeCompany.pcName } ${planeMsgByid.pmFight }</h3>
					<div class="chufadaoda">
						<div class="chufa">
							<p><fmt:formatDate value="${planeMsgByid.startTime }" pattern="yyyy年MM月dd日"/></p>
							<p><fmt:formatDate value="${planeMsgByid.startTime }" pattern="HH:mm:ss"/></p>
							<p>${planeMsgByid.planeAirport.paName }</p>
						</div>
						<img src="img/ticket03/dajiantou_03.png" alt=""
							class="yigejiantou">
						<div class="daoda">
							<p><fmt:formatDate value="${planeMsgByid.endTime }" pattern="yyyy年MM月dd日"/></p>
							<p><fmt:formatDate value="${planeMsgByid.endTime }" pattern="HH:mm:ss"/></p>
							<p>${planeMsgByid.province.cityName }</p>
						</div>

					</div>

				</div>
				<h3 class="piaojiah3">票价：${planeMsgByid.pmPrice }元（不含税费）</h3>
				<!-- 修改航班信息 -->
				<div class="change">
					<a href="javascript" id="leftaaa">【修改航班】</a> <a href="javascript">退改签</a>
					<a href="javascript">购票说明</a>
				</div>
				<h3 class="shouldpay">
					应付金额
					<var class="price">￥${planeMsgByid.pmPrice }</var>
					<p>明细（<var>1</var>名乘客）</p>
				</h3>
				<div class="priceinfo">
					<p>成人</p>
					<var>￥1340×1人</var>
				</div>

				<div class="priceinfo">
					<p> 机票税</p>
					<var>￥300×1人</var>
				</div>

				<div class="priceinfo">
					<p> 燃油费</p>
					<var>￥40×1人</var>
				</div>
			</div>
			<!-- 左边内容 -->
			<div class="conleft">
				<div class="titbox">
					<h3 class="tith3">核实信息</h3>
					<p class="titp">航班价格变动频繁，请在30分钟内完成支付以确保您的机位和价格</p>
				</div>
			
				<div class="passengerinfo">
					<ul class="passtit">
						<li>乘机人</li>
					</ul>
					
					<ul class="details detailstit">
						<li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</li>
						<li>出生日期</li>
						<li>证件信息</li>
					</ul> 

					<ul class="details">
						<li>${ps.psgName}  （<c:if test="${ps.tid ==1}">
							成人
						</c:if>
						<c:if test="${ps.tid ==2}">儿童</c:if>）   
						<c:if test="${ps.psgSex==1 }">男</c:if>
						<c:if test="${ps.psgSex==2 }">女</c:if>
						</li>
						<li></li><fmt:formatDate value="${ps.psgBirthday}"/>
						
						<li>${ps.psgCountry} ${ps.psgPaper }  ${ps.psgPapercode }</li>
					</ul>
				</div>
				<div class="passengerinfo">`
					<ul class="passtit">
						<li>联系信息</li>
					</ul>
					
					<ul class="details detailstit">
						<li>联&nbsp;系&nbsp; 人</li>
						<li>手机号码</li>
						
					</ul> 

					<ul class="details">
						<li>${contact.contactName }</li>
						<li> ${contact.contactPhone }</li>
						
					</ul>
				</div>



				<!-- 提交订单 -->
				<a  href="ticket05"  class="tijiaodingdan" id="tijiao">提交订单</a>
				<a  href="order"   id="xiugai">返回修改</a>
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
					<li class="share">
						<span class="weibo" ></span>
						<span class="weixin"></span>
					</li>
		
				</ul>
				<ul class="list5">
					<li class="phonenum" >400 820 8820</li>
					<li>周一至周日</a></li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>
		
				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right Reserved. 京ICP备11</div>
		</div>
	</div>
</body>
</html>