<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ticket03/ticket03.css">
<link rel="stylesheet" href="css/common/head.css">
<link rel="stylesheet" href="css/common/reset.css">
<script language="javascript" type="text/javascript"
	src="js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/jquery-2.1.4.min.js"></script>
<script language="javascript" type="text/javascript" src="js/ticket03/citylist.js"></script>
<style type="text/css">
#xingcheng{
position:absolute;
top:13px;
left:0px;
width:10px;
height:10px;
border:1px solid #000;
}
.xingcheng{
	background:  url(img/ticket03/dagou_03.png)  0px -3px no-repeat;
}
#xingcheng1{
width:0px;
height:0px;
display:none;
}
.journey #baoxian{
position:absolute;
top:13px;
left:0px;
width:10px;
height:10px;
border:1px solid #000;
}

.journey #baoxian input{
width:0px;
height:0px;
display:none; 
}
.journey #accept{
position:absolute;
top:13px;
left:0px;
width:12px;
height:12px;

}

.journey #accept input{
width:0px;
height:0px;
display:none;
}

#children{
	display:none;
}
#adult{
	display:block;
}
</style>
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
					<var class="price"></var>
					<p>
						明细（
						<var id="passenger"></var>
						名乘客）
					</p>
				</h3>
				<div class="priceinfo" id="adult">
					<p>成人</p>
					<var id="people"></var>
				</div>
				
				<div class="priceinfo" id="children">
					<p>儿童</p>
					<var id="child"></var>
				</div>

				<div class="priceinfo">
					<p>机票税</p>
					<var id="airTicket"></var>
				</div>

				<div class="priceinfo">
					<p>燃油费</p>
					<var id="oilprice"></var>
				</div>
			</div>
			<!-- 左边内容 -->
			<div class="conleft">
				<form method="post" action="#">
					<div class="passagers_msg">
						<ul>
							<li class="titbox">
								<h3 class="tith3">乘机人信息</h3>
								<p class="titp">（请准确填写乘机人信息，以免在办理登记时发生问题，* 为必填项）</p>
							</li>
							<!-- 姓名 -->
							<li class="classicbox">
								<h4 class="classich4">
									姓名<span>*</span><input type="text" name="uname"></input>
								</h4>
								<div class="classicdiv">
									<input type="text" name="uname">
								</div>
							</li>
							<!-- 类型 -->
							<li class="classicbox">
								<h4 class="classich4">
									类型<span>*</span>
								</h4>
								<c:set var="type">成人,儿童</c:set>
								<select name="usetype" class="classicdiv type1">
									<option>请选择</option>
									<c:forEach items="${type }" var="ty">
										<option value="${ty }"
											<c:if test="${param.type eq ty }">
												selected
											</c:if>
										>${ty }</option>
									</c:forEach>
								</select>
							</li>
							<!-- 性别 -->
							<li class="classicbox">
								<h4 class="classich4">
									性别<span>*</span>
								</h4>
								<c:set var="sex">男,女</c:set>
								<select name="sex" class="classicdiv">
									<option>请选择</option>
									<c:forEach items="${sex }" var="s">
										<option value="${s }"
											<c:if test="${param.sex eq s }">
												selected
											</c:if>
										>${s }</option>
									</c:forEach>
								</select>
							</li>
							<!-- 国籍 -->
							<li class="classicbox">
								<h4 class="classich4">
									国籍<span>*</span>
								</h4>
								<div class="classicdiv">
									<input type="text" name="country">
								</div>
							</li>
							<!-- 出生日期 -->
							<li class="classicbox">
								<h4 class="classich4">
									出生日期<span>*</span>
								</h4>
								<div class="classicdiv" id="bornday">
									<input style="width:280px" type="text" name="birthday">
								</div>
							</li>
							<!-- 证件信息 -->
							<li class="classicbox">
								<h4 class="classich4">
									证件信息<span>*</span>
								</h4>
								<c:set var="papers">身份证,护照,台胞证,回乡证,军人证,港澳通行证,户口簿</c:set>
								<select name="papersid" class="classicdiv">
									<option>请选择</option>
									<c:forEach items="${papers }" var="p">
										<option value="${p }"
											<c:if test="${param.papers eq p }">
												selected
											</c:if>
										>${p }</option>
									</c:forEach>
								</select>
								<div class="classicdiv" id="IDinfo">
									<input style="width:281px" type="text" name="papersname">
								</div>
							</li>
							<!-- 为了您能够顺利登机 -->
							<li class="classicbox">
								<p class="reminder">为了您能顺利出行，请确保旅行结束日期至少比证件有效期早1个月。</p>
							</li>
							<!-- 新增确认按钮 -->
							<li class="classicbox" id="xinzengyiweibutton">
								<a href="javascript:;" class="leftbutton">新增一位登机人</a> 
								<a href="javascript:;" class="savebutton">确认并保存身份信息</a>
							</li>
						</ul>
						
						<ul class="listadd">
							<li class="titbox">
								<h3 class="tith3">乘机人信息</h3>
								<p class="titp">（请准确填写乘机人信息，以免在办理登记时发生问题，* 为必填项）</p>
							</li>
							<!-- 姓名 -->
							<li class="classicbox">
								<h4 class="classich4">
									姓名<span>*</span>
								</h4>
								<div class="classicdiv">
									<input type="text" name="uname">
								</div>
							</li>
							<!-- 类型 -->
							<li class="classicbox">
								<h4 class="classich4">
									类型<span>*</span>
								</h4>  
								<c:set var="type">成人,儿童</c:set>
								<select name="usetype" class="classicdiv type2" >
									<option>请选择</option>
									<c:forEach items="${type }" var="ty">
										<option value="${ty }"
											<c:if test="${param.type eq ty }">
												selected
											</c:if>
										>${ty }</option>
									</c:forEach>
								</select>
							</li>
							<!-- 性别 -->
							<li class="classicbox">
								<h4 class="classich4">
									性别<span>*</span>
								</h4>
								<c:set var="sex">男,女</c:set>
								<select name="sex" class="classicdiv">
									<option>请选择</option>
									<c:forEach items="${sex }" var="s">
										<option value="${s }"
											<c:if test="${param.sex eq s }">
												selected
											</c:if>
										>${s }</option>
									</c:forEach>
								</select>
							</li>
							<!-- 国籍 -->
							<li class="classicbox">
								<h4 class="classich4">
									国籍<span>*</span>
								</h4>
								<div class="classicdiv">
									<input type="text" name="country">
								</div>
							</li>
							<!-- 出生日期 -->
							<li class="classicbox">
								<h4 class="classich4">
									出生日期<span>*</span>
								</h4>
								<div class="classicdiv" id="bornday">
									<input style="width:280px" type="text" name="birthday">
								</div>
							</li>
							<!-- 证件信息 -->
							<li class="classicbox">
								<h4 class="classich4">
									证件信息<span>*</span>
								</h4>
								<c:set var="papers">身份证,护照,台胞证,回乡证,军人证,港澳通行证,户口簿</c:set>
								<select name="papersid" class="classicdiv">
									<option>请选择</option>
									<c:forEach items="${papers }" var="p">
										<option value="${p }"
											<c:if test="${param.papers eq p }">
												selected
											</c:if>
										>${p }</option>
									</c:forEach>
								</select>
								<div class="classicdiv" id="IDinfo">
									<input style="width:281px" type="text" name="papersname">
								</div>
							</li>
							<li class="classicbox" id="xinzengyiweibutton">
								<a href="javascript:;" class="savebutton1">确认并保存身份信息</a>
								<a href="javascript:;" class="returnbutton">返回</a>
							</li>
						</ul>
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
					<div class="journey  journey1" >
						<label for="xingcheng1" id="xingcheng" class="" >	
							<input type="checkbox" id="xingcheng1" >
						</label>	
						<span>行程单(仅作为报销凭证，起飞后超过7天不可打印行程单)</span>
							
					</div>
					<!-- 快递 -->
					<div class="classicbox classicbox1">
						<h4 class="classich4">快递</h4>
						<div class="classicdiv" id="kuaidi">
							<var>￥10</var>
							<span>机票使用后5天内送达,快捷可靠。</span>
						</div>
					</div>

					<!-- 收件人 -->
					<div class="classicbox classicbox1">
						<h4 class="classich4">收件人</h4>
						<div class="classicdiv" id="shoujianren">
							<input style="width:281px" type="text" name="uname" disabled="disabled">
						</div>
					</div>
					<!-- 手机号码 -->
					<div class="classicbox classicbox1">
						<h4 class="classich4">手机号码</h4>
						<div class="classicdiv" id="shoujianren">
							<input style="width:281px" type="text" name="mphone" disabled="disabled">
						</div>
					</div>
						<!-- 配送地址 -->
					<div class="classicbox classicbox1">
						<h4 class="classich4">配送地址</h4>
						<select id="sheng" class="classicdiv address" disabled="disabled">
							<option value="-1">省份</option>
						</select>
						
						<select id="shi" class="classicdiv address" disabled="disabled">
							<option value="-1">城市</option>
						</select>

						<select id="qu" class="classicdiv address" disabled="disabled">
							<option value="-1">区/县</option>
						</select>
						<div class="classicdiv" id="deladdress" disabled="disabled">
							<input  style="width: 281px" type="text" name="deladdress" pattern="" placeholder="详细地址"  disabled="disabled">
						</div>
					</div>
					<!-- 邮政编码 -->
					<div class="classicbox classicbox1">
						<h4 class="classich4">邮政编码</h4>
						<div class="classicdiv">
							<input type="text" name="postcode" disabled="disabled">
						</div>
					</div>
					<!-- 保险发票 -->
					<div class="journey  journey2">
						<label for="baoxian1" id="baoxian" class="" >
							<input type="checkbox"  id="baoxian1" >
						</label>
						<span>保险发票(仅作为通过购买保险的报销凭证)</span>
						
					</div>
					<div class="fapiao">
						<h3 id="fapiaocon">发票类型</h3>
						<select class="invoice_type" disabled="disabled">
							<option>增值税专用发票</option>
							<option>普通发票</option>
							<option>机动车专用发票</option>
							<option>机打发票</option>
						</select> <a class="bangzhu" href="javascript:;"></a>
					</div>
					<div class="fapiao">
						<h3 id="fapiaocon">发票抬头</h3>
						<input type="text" name="invoice" disabled="disabled"></input>
					</div>


					<!-- 我已同意 -->
					<div class="journey journey3" id="woyitongyi">
						<label for="accept1" id="accept" class="xingcheng ">
							<input  type="checkbox"  id="accept1" checked="checked">
						</label>
						<span>我已阅读并同意
						《网络电子客票协议》《航意险说明1》《航意险说明2》《保险经纪委托协议》 《延误险说明》</span>
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
				Reserved. 京ICP备11
			</div>
		</div>
	</div>
<script type="text/javascript">
	var sheng=document.getElementById('sheng');
	var shi=document.getElementById('shi');
	var qu=document.getElementById('qu');
	// console.log(json.citylist[0].p);//北京  获取示例
	// console.log(json.citylist[0].c[0].n)//东城区  获取示例
	// console.log(json.citylist.length);//35  获取示例
	var opt1='<option value="-1">请选择省份</option>';
	for (var i = 0; i <json.citylist.length; i++) {//省份初始值
		opt1=opt1+'<option value="'+i+'">'+json.citylist[i].p+'</option>';
		sheng.innerHTML=opt1;
	}
	sheng.onchange=function (){//选择省份后
		var opt2='<option value="-1">请选择城市</option>';//初始值
		qu.innerHTML=opt2;
		if(sheng.value==-1){
			shi.innerHTML=opt2;
		}else{
			if (json.citylist[sheng.value].c[0].a) {//是省份执行这
				for (var i = 0; i <json.citylist[sheng.value].c.length; i++) {
					opt2=opt2+'<option value="'+i+'">'+json.citylist[sheng.value].c[i].n+'</option>';
					shi.innerHTML=opt2;
				}
			} else{//是直辖市执行这
				opt2=opt2+'<option value="0">'+json.citylist[sheng.value].p+'</option>';
				shi.innerHTML=opt2;
			};
		}
	}
	shi.onchange=function (){//选择城市后
		var opt3='<option value="-1">请选择区/县</option>';//初始值
		if(shi.value==-1){
			qu.innerHTML=opt3;
		}else{
			if (json.citylist[sheng.value].c[0].a) {//是省份执行这
				for (var i = 0; i <json.citylist[sheng.value].c[shi.value].a.length; i++) {
					opt3=opt3+'<option value="'+i+'">'+json.citylist[sheng.value].c[shi.value].a[i].s+'</option>';
					qu.innerHTML=opt3;
				}
			} else{//是直辖市执行这
				for (var i = 0; i <json.citylist[sheng.value].c.length; i++) {
					opt3=opt3+'<option value="'+i+'">'+json.citylist[sheng.value].c[i].n+'</option>';
					qu.innerHTML=opt3;
				}
			};
		}
	}
</script>
<script type="text/javascript">
$('#xingcheng').click(function(){
		
	 if($('.journey1 input').is(':checked')) {
		$('#xingcheng').attr("class", "xingcheng");
		this.style.border="none";
		this.style.width="12px";
		this.style.height="12px";
		$(".classicbox1 input").removeAttr("disabled");
		$(".classicbox1 select").removeAttr("disabled");
 	}else{
 		$('#xingcheng').attr("class", "");
 		this.style.borderStyle="solid";
 		this.style.borderColor="#3c3c3c";
 		this.style.borderWidth="1px";
 		this.style.width="10px";
		this.style.height="10px";
		$(".classicbox1 input").attr("disabled","disabled");
		$(".classicbox1 select").attr("disabled","disabled");
 		console.log("error");
 	} 
	
})
$('#baoxian').click(function(){
	
	 if($('.journey2 input').is(':checked')) {
		$('#baoxian').attr("class", "xingcheng");
		this.style.border="none";
		this.style.width="12px";
		this.style.height="12px";
		$('.fapiao select').removeAttr("disabled");
		$('.fapiao input').removeAttr("disabled");
 	}else{
 		$('#baoxian').attr("class", "");
 		this.style.borderStyle="solid";
 		this.style.borderColor="#3c3c3c";
 		this.style.borderWidth="1px";
 		this.style.width="10px";
		this.style.height="10px";
		$('.fapiao select').attr("disabled","disabled");
		$('.fapiao input').attr("disabled","disabled");
 		console.log("error");
 	} 	
})

$('#accept').click(function(){
	
	 if($('.journey3 input').is(':checked')) {
		$('#accept').attr("class", "xingcheng");
		this.style.border="none";
		this.style.width="12px";
		this.style.height="12px";
		console.log("222");
 	}else{
 		$('#accept').attr("class", "");
 		this.style.borderStyle="solid";
 		this.style.borderColor="#3c3c3c";
 		this.style.borderWidth="1px";
 		this.style.width="10px";
		this.style.height="10px";
 		console.log("error");
 	} 
	
})
</script>

<script>
	/* var listadd=document.getElementById("listadd"); */
	var children=document.getElementById("children");
	var adult=document.getElementById("adult");
	var addbutton=document.getElementById("xinzengyiweibutton");
	var as=addbutton.getElementsByTagName('a');
	/* var type1=document.getElementById("type1");
	var type2=document.getElementById("type2"); */
	var save;
	var count=1;
	var a=1;
	var priceAdult=1680*a;
	var priceChild=1010*a;
	$("#people").text("￥1340×"+a+"人");
	$("#child").text("￥670×"+a+"人");
	$("#airTicket").text("￥300×"+a+"人");
	$("#oilprice").text("￥40×"+a+"人");
	$("#passenger").text(a);
	$(".price").text("￥"+priceAdult);
	$('.savebutton').click(function(){	
		save=$(".type1").val();		
		if(save=="成人"){
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceAdult);
		}else if(save=="儿童"){
			children.style.display='block';
			adult.style.display='none';
			$("#child").text("￥670×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceChild);
		}else{
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×0人");
			$("#child").text("￥670×0人");
			$("#airTicket").text("￥300×0人");
			$("#oilprice").text("￥40×0人");
			$("#passenger").text(0);
			$(".price").text(0);
		}
		alert("save"+save);
	})
	$('.savebutton1').click(function(){	
		var arr=new Array();
		arr=$(".type2").val();
		if(save=="成人"){
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceAdult);
		}else if(save=="儿童"){
			children.style.display='block';
			adult.style.display='none';
			$("#child").text("￥670×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceChild);
		}else{
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×0人");
			$("#child").text("￥670×0人");
			$("#airTicket").text("￥300×0人");
			$("#oilprice").text("￥40×0人");
			$("#passenger").text(0);
			$(".price").text(0);
		}
		alert("arr"+arr);
	})
	$('.leftbutton').click(function(){
		var addpassager = $(".passagers_msg ul:last-child").clone(true);
		$('.passagers_msg').append(addpassager);
		$('.listadd').css("display","block");
		$(".passagers_msg ul:eq(1)").css("display","none");		
		as[1].className=" ";
		save=$(".type1").val();
		if(save=="成人"){
			children.style.display='none';
			adult.style.display='block';
			a++;
			priceAdult=1680*a;
			priceChild=1010*a;
			$("#people").text("￥1340×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceAdult);
		}else if(save=="儿童"){
			children.style.display='block';
			adult.style.display='none';
			a++;
			priceAdult=1680*a;
			priceChild=1010*a;
			$("#child").text("￥670×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceChild);
		}else{
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×0人");
			$("#child").text("￥670×0人");
			$("#airTicket").text("￥300×0人");
			$("#oilprice").text("￥40×0人");
			$("#passenger").text(0);
			$(".price").text("￥"+0);
		}
	})
	$('.returnbutton').click(function(){
		this.parentNode.parentNode.remove();
		as[1].className='savebutton';
		$("#people").text("￥1340×"+a+"人");
		$("#airTicket").text("￥300×"+a+"人");
		$("#oilprice").text("￥40×"+a+"人");
		save=$(".type1").val();
		if(save=="成人"){
			children.style.display='none';
			adult.style.display='block';
			a--;
			priceAdult=1680*a;
			priceChild=1010*a;
			$("#people").text("￥1340×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceAdult);
		}else if(save=="儿童"){
			children.style.display='block';
			adult.style.display='none';
			a--;
			priceAdult=1680*a;
			priceChild=1010*a;
			$("#child").text("￥670×"+a+"人");
			$("#airTicket").text("￥300×"+a+"人");
			$("#oilprice").text("￥40×"+a+"人");
			$("#passenger").text(a);
			$(".price").text("￥"+priceChild);
		}else{
			children.style.display='none';
			adult.style.display='block';
			$("#people").text("￥1340×0人");
			$("#child").text("￥670×0人");
			$("#airTicket").text("￥300×0人");
			$("#oilprice").text("￥40×0人");
			$("#passenger").text(0);
			$(".price").text("￥"+0);
		}
	})					
	
	
/* 	var classVal = document.getElementById("id").getAttribute("class");

	//删除的话
	classVal = classVal.replace("someClassName","");
	document.getElementById("id").setAttribute("class",classVal ); */
	
	
</script>
</html>