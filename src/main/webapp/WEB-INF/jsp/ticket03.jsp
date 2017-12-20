<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket03/ticket03.css">
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
			<!-- 右边内容 -->
			<div class="conright">
				<p class="conrighttit">航班的起飞和到达时间为当地时间</p>
				<div class="conrightticketinfo">
					<p class="conrighttit2">去程11月10日 北京→台北</p>
					<h3 class="conrightticketinfoh3">南方航空 CS3009 45 经济舱</h3>
					<div class="chufadaoda">
						<div class="chufa">
							<p>2014年11月10日</p>
							<p>12:45</p>
							<p>首都机场T3</p>
						</div>
						<img src="img/ticket03/dajiantou_03.png" alt=""
							class="yigejiantou">
						<div class="daoda">
							<p>2014年11月10日</p>
							<p>12:45</p>
							<p>首都机场T3</p>
						</div>

					</div>

				</div>
				<h3 class="piaojiah3">票价：1680元（不含税费）</h3>
				<!-- 修改航班信息 -->
				<div class="change">
					<a href="javascript" id="leftaaa">【修改航班】</a> <a href="javascript">退改签</a>
					<a href="javascript">购票说明</a>
				</div>
				<h3 class="shouldpay">
					应付金额
					<var class="price">￥1680</var>
					<p>
						明细（
						<var>1</var>
						名乘客）
					</p>
				</h3>
				<div class="priceinfo">
					<p>成人</p>
					<var>￥1340×1人</var>
				</div>

				<div class="priceinfo">
					<p>机票税</p>
					<var>￥300×1人</var>
				</div>

				<div class="priceinfo">
					<p>燃油费</p>
					<var>￥40×1人</var>
				</div>
			</div>
			<!-- 左边内容 -->
			<div class="conleft">
				<form method="post" action="#">
					<div class="titbox">
						<h3 class="tith3">乘机人信息</h3>
						<p class="titp">（请准确填写乘机人信息，以免在办理登记时发生问题，* 为必填项）</p>
					</div>
					<!-- 姓名 -->
					<div class="classicbox">
						<h4 class="classich4">
							姓名<span>*</span><input type="text" name="uname"></input>
						</h4>
						<div class="classicdiv">
							<input type="text" name="uname">
						</div>

					</div>
					<!-- 类型 -->
					<div class="classicbox">
						<h4 class="classich4">
							类型<span>*</span>
						</h4>
						<div class="classicdiv">
							<input type="text" name="usetype">
						</div>
					</div>
					<!-- 性别 -->
					<div class="classicbox">
						<h4 class="classich4">
							性别<span>*</span>
						</h4>
						<div class="classicdiv">
							<input type="text" name="sex">
						</div>
					</div>
					<!-- 国籍 -->
					<div class="classicbox">
						<h4 class="classich4">
							国籍<span>*</span>
						</h4>
						<div class="classicdiv">
							<input type="text" name="country">
						</div>
					</div>
					<!-- 出生日期 -->
					<div class="classicbox">
						<h4 class="classich4">
							出生日期<span>*</span>
						</h4>
						<div class="classicdiv" id="bornday">
							<input style="width:280px" type="text" name="birthday">
						</div>
					</div>
					<!-- 证件信息 -->
					<div class="classicbox">
						<h4 class="classich4">
							证件信息<span>*</span>
						</h4>
						<div class="classicdiv">
							<input type="text" name="papersid">
						</div>
						<div class="classicdiv" id="IDinfo">
							<input style="width:281px" type="text" name="papersname">
						</div>
					</div>
					<!-- 为了您能够顺利登机 -->
					<div class="classicbox">
						<p class="reminder">为了您能顺利出行，请确保旅行结束日期至少比证件有效期早1个月。</p>
					</div>
					<!-- 新增确认按钮 -->
					<div class="classicbox" id="xinzengyiweibutton">
						<a href="javascript:;" class="leftbutton">新增一位登机人</a> <a
							href="javascript:;">确认并保存身份信息</a>
					</div>
					<!-- 联系人信息 -->
					<div class="contacttit">
						<h3 class="contacttith3">联系人信息</h3>
						<p class="contacttitp">请准确填写联系人信息，以便我们与您联系</p>
					</div>
					<div class="contactcont">
						<h4 class="classich4">
							联系人<span>*</span>
						</h4>
						<div class="classicdiv" id="contactcontperson">
							<input type="text" name="contact_name">
						</div>
						<h4 class="classich4">
							联系方式<span>*</span>
						</h4>
						<div class="classicdiv" id="contactcontnumber">
							<input style="width:190px" type="text" name="contact_phone">
						</div>
					</div>
					<!-- 报销信息 -->
					<div class="contacttit">
						<h3 class="contacttith3">报销信息</h3>
					</div>
					<!-- 行程单 -->
					<div class="journey">
						<a href="javascript:;"></a>行程单(仅作为报销凭证，起飞后超过7天不可打印行程单)
					</div>
					<!-- 快递 -->
					<div class="classicbox">
						<h4 class="classich4">快递</h4>
						<div class="classicdiv" id="kuaidi">
							<var>￥10</var>
							<span>机票使用后5天内送达,快捷可靠。</span>
						</div>
					</div>

					<!-- 收件人 -->
					<div class="classicbox">
						<h4 class="classich4">收件人</h4>
						<div class="classicdiv" id="shoujianren">
							<input style="width:281px" type="text" name="uname">
						</div>
					</div>
					<!-- 手机号码 -->
					<div class="classicbox">
						<h4 class="classich4">手机号码</h4>
						<div class="classicdiv" id="shoujianren">
							<input style="width:281px" type="text" name="mphone">
						</div>
					</div>
					<!-- 配送地址 -->
					<div class="classicbox">
						<h4 class="classich4">配送地址</h4>
						<div class="classicdiv" id="address">
							<input type="text" name="address_1">
						</div>
						<div class="classicdiv" id="address">
							<input type="text" name="address_2">
						</div>
						<div class="classicdiv">
							<input type="text" name="address_3">
						</div>
					</div>
					<!-- 邮政编码 -->
					<div class="classicbox">
						<h4 class="classich4">邮政编码</h4>
						<div class="classicdiv">
							<input type="text" name="postcode">
						</div>
					</div>
					<!-- 保险发票 -->
					<div class="journey">
						<a href="javascript:;"></a>保险发票(仅作为通过购买保险的报销凭证)
					</div>
					<div class="fapiao">
						<h3 id="fapiaocon">发票类型</h3>
						<select class="invoice_type">
							<option>增值税专用发票</option>
							<option>普通发票</option>
							<option>机动车专用发票</option>
							<option>机打发票</option>
						</select> <a class="bangzhu" href="javascript:;"></a>
					</div>
					<div class="fapiao">
						<h3 id="fapiaocon">发票抬头</h3>
						<input type="text" name="invoice"></input>
					</div>


					<!-- 我已同意 -->
					<div class="journey" id="woyitongyi">
						<a href="javascript:;"></a> 我已阅读并同意
						《网络电子客票协议》《航意险说明1》《航意险说明2》《保险经纪委托协议》 《延误险说明》
					</div>
					<!-- 提交订单 -->
					<input type="submit" class="tijiaodingdan" id="tijiao" value="提交订单"/>
					<a href="ticket02.html" class="tijiaodingdan">取消订单</a>
				</form>
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
					<li>周一至周日</li>
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