<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.text.DateFormat" import="java.text.SimpleDateFormat" import="com.jnmd.liuwan.domain.PlaneMsg"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket02/ticket02.css">
<link rel="stylesheet" href="css/common/head.css">
<link rel="stylesheet" href="css/common/reset.css">
<script language="javascript" type="text/javascript"
	src="js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/jquery-2.1.4.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/WdatePicker.js"></script>
</head>
<body>
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
					<a class="posimg" href=""><img src="img/common/hose_03.png" alt=""></a>
					<a href="javascript:;">第一次</a> <a href="javascript:;">目的地</a> <a
						href="javascript:;">自订行程</a> <a href="javascript:;">游记</a> <a
						href="javascript:;">特产</a> <a href="javascript:;">优惠</a> <a
						href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<div class="pos">
			<a href="javascript:;">首页</a> &gt; <a href="javascript:;">预订</a> &gt;
			机票
		</div>

		<div class="upcontent">
			<!-- conup -->
			<div class="upcon">
				<div class="upconleft">
					<div class="clickcity">
						<div class="upconleftnormal onlygo">
							<!-- <a href="javascript:;"></a>单程 -->
							<label name="goway" class="checked" for="goway">
							<input type="radio" name="goways" id="goway" value="单程" />
							单程</label>
						</div>
						<h3 class="upconleftnormal">出发城市</h3>
						<select class="upconleftnormal city" name="" id="">
							<option value="select">请选择</option>
							<c:forEach items="${cityList }" var="citys">
								<option>${citys.paCity }</option>
							</c:forEach>
						</select>
						<h3 class="upconleftnormal">出发日期</h3>
						<div id="time1" class="times">
							<input type="text" id="d1"
								onclick="WdatePicker({minDate:'%y-%M-%d',maxDate:'%y-{%M+3}-%d'})"
								value="${df1 }" />
						</div>
						<div id="time2" class="times">
							<input type="text" id="d2"
								onclick="WdatePicker({dateFmt:'H:mm',minDate:'8:00',maxDate:'23:30'})" 
								value="${df2 }"/>
						</div>
					</div>
					<div class="clickcity">
						<div class="upconleftnormal onlygo">
							<label name="goways" for="goways">
							<input type="radio" name="goways" id="goways" value="往返"/>
							往返</label>
						</div>
						<h3 class="upconleftnormal">到达城市</h3>
						<select class="upconleftnormal city" name="" id="">
							<option value="select">请选择</option>
							<c:forEach items="${provinces }" var="provinces">
								<option>${provinces.cityName }</option>
							</c:forEach>
						</select>
						<h3 class="upconleftnormal">返程日期</h3>
						<div id="time3">				
							<input type="text" id="d1"
								onclick="WdatePicker({minDate:'%y-%M-%d',maxDate:'%y-{%M+3}-%d'})" value="${df1 }"/>
						</div>
						<div id="time4">
							<input type="text" id="d2"
								onclick="WdatePicker({dateFmt:'H:mm',minDate:'%H:%m',maxDate:'23:30'})" value="${df2 }"/>
						</div>
					</div>
				</div>
				<a href="javacsript:;" class="upconright"> 订机票 </a>
			</div>
			<!-- band -->
			<div class="band">
				<span>${pacity}</span><span>${cityname}</span> <span>共${planeMsgs.size()}个报价信息 , 搜索结束</span>
			</div>

		</div>

		<div class="travel">去程：${pacity}→${cityname} ${startTime}（${planeMsgs.size()}个班次）</div>


		<div class="maincontent">
			<!-- 左主信息 -->
			<div class="content">
			<c:forEach items="${planeMsgs}" var="pmsg">
				<div class="hangbanxinxi">
					<div class="comment">
						<h3>${pmsg.planeCompany.pcName }</h3>
						<p>${pmsg.pmFight }</p>
					</div>
				
					<!-- 出发时间 -->
					<div class="comment">
						<h3><fmt:formatDate value="${pmsg.startTime}" pattern="yyyy-MM-dd"/></h3>
						<h3><fmt:formatDate value="${pmsg.startTime}" pattern="HH:mm:ss"/></h3>
						<p>${pmsg.planeAirport.paName}</p>
						<img id="jiantou" src="img/ticket02/jiantou_03.png" alt="">

					</div>
					<!-- 到达时间 -->
					<div class="comment">
						<h3><fmt:formatDate value="${pmsg.endTime}" pattern="yyyy-MM-dd"/></h3>
						<h3><fmt:formatDate value="${pmsg.endTime}" pattern="HH:mm:ss"/></h3>
						<p>${pmsg.province.cityName}</p>
					</div>
					<!-- 直飞 -->
					<div id="zhifei" class="comment">
						<h3></h3>
						<p>直飞</p>
					</div>
					<!-- 七小时 -->
					<div id="qixiaoshi" class="comment">
						<h3></h3>
						<p>历时:${pmsg.duringtime }</p>
					</div>
					<!-- 退改签 -->
					<div class="comment ">
						<h3 id="tuigaiqian">退改签</h3>
					</div>

					<div class="comment">
						<h3 id="ranyou">${pmsg.pmPrice }</h3>
						<p>机建+燃油 :${pmsg.planeOil.poCreate }+${pmsg.planeOil.poOil }</p>
					</div>

					<!-- 选定按钮 -->
					<a class="button" href="order?pmid=${pmsg.pmId}">选定</a>

				</div>
				</c:forEach>


				<!-- 页码	 -->
				<div class="page" id="yema">
					<div>上一页</div>
					<div>1</div>
					<div>....</div>
					<div>12</div>
					<div>13</div>
					<div>14</div>
					<div>....</div>
					<div>40</div>
					<div>下一页</div>
				</div>



			</div>

			<!-- 右主信息 -->
			<div class="contentright">
				<div class="picture specialpic">
					<h3></h3>
					<p>垦丁临海酒店随心定</p>
				</div>
				<div class="picture">
					<h3></h3>
					<p>一票在手，免费游岛</p>
				</div>
			</div>


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
	
<script type="text/javascript">
	var radioId=$('#goway').attr('id');
	var prevId=$('#goways').attr('id');
	$('#' + prevId).css("display","block");
	$(function(){
		$('label').click(function(){
			 radioId = $(this).attr('name');
			 $('input[type="radio"]').removeAttr('checked') && $('#' + radioId).attr('checked', 'checked');
			 $('input[type="radio"]').css('display','block')&& $('#' + radioId).css("display","none"); 
		});
		
	})
</script>
</body>
</html>