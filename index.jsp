<%@page import="java.sql.*,com.org.dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>【兰博基尼4S店】首页</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- QQ在线聊天 -->
<script type="text/javascript" src="js/qq/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/qq/daimabiji.js"></script>
<!-- 基于jQuery菜单功能 -->
<script type="text/javascript" src="js/menu/jquery.min.js"></script>
<script type="text/javascript" src="js/menu/nav.js"></script>
<!-- 百度地图JS -->
<script type="text/javascript"
	src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="div1">
				<%
					if (session.getAttribute("se_name") != null) {

						out.println("欢迎你: " + session.getAttribute("se_name"));
						out.println("<a href='personal.jsp' style='color:orange;'>个人中心</a>");
				%>

				<a href="login.jsp" style="color: red;">退出登录</a>

				<%
					} else {
				%>


				你好！请<a href="login.jsp">登录</a>或<a href="zhuce.jsp">注册</a>
				<%
					}
				%>
			</div>
			<div>
				<img src="images/logo.gif" />
			</div>
			<div>
				<!-- 基于jQuery菜单功能 -->
				<div id="top_bg">
					<div class="top">
						<a class="logo_l" href="/" title="返回首页"></a>
						<!--导航开始-->
						<div class="nav_z">
							<ul id="navul" class="cl">
								<li><a href="index.jsp">首页</a></li>
								<li><a href="#">新闻资讯</a></li>
								<li><a href="models_price.jsp">车型报价</a>
									<ul>
										<li><a href="lp750_4_sv_2015.jsp">2015款Aventador
												LP750-4 SV</a></li>
										<li><a href="lp610_4_2014.jsp">2014款Huracan LP610-4</a></li>
										<li><a href="lp700_4_2011.jsp">2011款Aventador LP700-4</a></li>
										<li><a href="lp700_4_roadster_2013.jsp">2013款Aventador
												LP700-4 RS</a></li>
									</ul></li>
								<li><a href="appointment.jsp">预约维修</a></li>
								<li><a href="about.jsp">公司介绍</a></li>
								<li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=564341160&amp;site=qq&amp;menu=yes" target="_self">在线咨询</a></li>
								<li><a href="admin/login.jsp">进入后台</a>
								</li>
								<!--可在此处直接添加导航-->
							</ul>
						</div>
						<!--导航结束-->
						<script type="text/javascript">
							$(".navbg").capacityFixed();
						</script>
					</div>
				</div>
			</div>
		</div>
		<div id="main_con">
			<div class="zixunnumber">咨询电话：0797-8888888</div>
			<div>
				<div id="threeD">
					<!-- 基于jQuery焦点图3D旋转 -->
					<ol id=a1>
						<li id=a2><a href="http://www.baidu.com"><img
								src=images/index_main/a.jpg width=100% height=100%></a><span>Aventador</span></li>
						<li id=a2><a href="#"><img src=images/index_main/b.jpg
								width=100% height=100%></a><span>Aventador</span></li>
						<li id=a2><a href="#"><img src=images/index_main/c.jpg
								width=100% height=100%></a><span>Aventador</span></li>
						<li id=a2><a href="#"><img src=images/index_main/d.jpg
								width=100% height=100%></a><span>Aventador</span></li>
						<li id=a2><a href="#"><img src=images/index_main/e.jpg
								width=100% height=100%></a><span>Aventador</span></li>
					</ol>
					<script src="js/3d/jquery.js"></script>
					<script src="js/3d/jquery.roundabout2.js"></script>
					<script>
						$(document).ready(function() {
							$('ol').roundabout();
						});
					</script>
				</div>
				<div id="newside">
					<h2 style="text-align: center;">
						<a href="#"><span style="color: red;">兰博基尼Aventador LP
								750-4特别版发布</span></a>
					</h2>
					<br> <br>
					<div style="margin-left: 3em;">
						<table width="400px" height="240px" border="0px">

							<ul>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯] 广谈新一代兰博基尼车型的那</h4></a></td>
									<td>3月15日</td>
								</tr>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯]
													Aventador敞篷版获得“2015</h4></a></td>
									<td>3月15日</td>
								</tr>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯] 兰博基尼人才招募再创纪录</h4></a></td>
									<td>3月15日</td>
								</tr>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯]
													Ex-Chateaux品鉴酒会圆满落</h4></a></td>
									<td>3月15日</td>
								</tr>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯] Huracan LP
													610-4即将亮相Ex</h4></a></td>
									<td>3月15日</td>
								</tr>
								<tr>
									<td><li><a href="news1.jsp"><h4>[新闻资讯] 全新兰博基尼Huracan
													GT3赛</h4></a></td>
									<td>3月15日</td>
								</tr>
							</ul>

						</table>
					</div>
				</div>
			</div>
			<div id="mid_area">
				<div class="pdd">
					<div>
						<div class="title_bg">
							<h2>赣州兰博基尼</h2>
						</div>
						<div style="height: 160px; background: #f3eff7;">
							<ul>
								<li>名称：兰博基尼赣州</li>
								<li>类别：赣州兰博基尼4S店</li>
								<li>经营：兰博基尼</li>
								<li>热线电话:0797-8888888</li>
								<li>网站：<a href="http://www.lamborghini.com/en/home/">http://www.lamborghini.com</a></li>
								<li>地址：江西省赣州市兰博基尼4S专营店</li>
							</ul>
						</div>
						<div class="title_bg">
							<h2>公司地址</h2>
						</div>
						<div>
							<!--百度地图容器-->
							<div
								style="width: 358px; height: 220px; border: #ccc solid 1px; margin: 0 auto;"
								id="dituContent"></div>
							<div style="margin: 1px;">
								地址：江西省赣州市兰博基尼4S专营店 <a href="map_max.html" target="_blank">【放大地图】</a>
							</div>
						</div>
					</div>
				</div>
				<div class="rside">
					<div class="title_bg">
						<div style="float: left;">
							<h2>热门车型报价</h2>
						</div>
						<div class="gdcx">
							<a href="models_price.jsp">更多车型&gt&gt</a>
						</div>
					</div>
					<div>
						<div>
							<div style="width: 790px; margin: 0px 2px 0px 3px;">
								<div class="rmcx">关注车型</div>
								<div class="rmcx">&nbsp&nbsp&nbsp&nbsp厂商报价</div>
								<div class="rmcx">报价日期</div>
							</div>
							<table width="785px" height="400px" border="0px;">
								<tr>
									<td width="82px"><img src="images/index_main/car_4.jpg" /></td>
									<td width="210px"><a href="lp750_4_sv_2015.jsp">2015款Aventador
											LP750-4 SV</a></td>
									<td><center>
											<span class="price">801.15万</span>无优惠
										</center></td>
									<td><center>2015-3-27</center></td>
								</tr>
								<tr>
									<td width="82px"><img src="images/index_main/car_1.jpg" /></td>
									<td width="210px"><a href="lp610_4_2014.jsp">2014款Huracan
											LP610-4</a></td>
									<td><center>
											<span class="price">429.09万</span>无优惠
										</center></td>
									<td><center>2015-3-27</center></td>
								</tr>
								<tr>
									<td width="82px"><img src="images/index_main/car_2.jpg" /></td>
									<td width="210px"><a href="lp700_4_2011.jsp">2011款Aventador
											LP700-4</a></td>
									<td><center>
											<span class="price">648.80万</span>无优惠
										</center></td>
									<td><center>2015-3-27</center></td>
								</tr>
								<tr>
									<td width="82px"><img src="images/index_main/car_3.jpg" /></td>
									<td width="210px"><a href="lp700_4_roadster_2013.jsp">2013款Aventador
											LP700-4 Roadster</a></td>
									<td><center>
											<span class="price">738.88万</span>无优惠
										</center></td>
									<td><center>2015-3-27</center></td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<!-- <div class="interact"></div> -->
			</div>
			<div style="margin: 10px;">
				<form action="handle/liuyan_do.jsp" name="form_liuyan" method="post">
					我要留言：<br>
					<textarea rows="8" cols="49" name="liuyan"></textarea>
					<br> <input type="submit" name="fabiao" class="fabiao"
						value="发表"
						onmouseover="this.style.backgroundPosition='left -36px'"
						onmouseout="this.style.backgroundPosition='left top'" />
				</form>
			</div>
			<%-- QQ客服在线咨询  --%>
			<div>
				<div class="qqserver">
					<div class="qqserver_fold">
						<div></div>
					</div>
					<div class="qqserver-body" style="display: block;">
						<div class="qqserver-header">
							<div></div>
							<span class="qqserver_arrow"></span>
						</div>
						<ul>
							<li><a title="点击这里给我发消息"
								href="http://wpa.qq.com/msgrd?v=3&amp;uin=316639892&amp;site=qq&amp;menu=yes"
								target="_self">
									<div>客服咨询</div> <span>榕榕</span>
							</a></li>
							<li><a title="点击这里给我发消息"
								href="http://wpa.qq.com/msgrd?v=3&amp;uin=593583981&amp;site=qq&amp;menu=yes"
								target="_self">
									<div>客服咨询</div> <span>云云</span>
							</a></li>
							<li><a title="点击这里给我发消息"
								href="http://wpa.qq.com/msgrd?v=3&amp;uin=564341160&amp;site=qq&amp;menu=yes"
								target="_self">
									<div>客服咨询</div> <span class="qqserver-service-alert">青青</span>
							</a></li>
						</ul>
						<div class="qqserver-footer">
							<span class="qqserver_icon-alert"></span><a class="text-primary"
								href="http://www.baidu.com" target="_blank">大家都在说</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div style="text-align: center;">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
<!-- 使用地图JS -->
<script type="text/javascript">
	//创建和初始化地图函数：
	function initMap() {
		createMap();//创建地图
		setMapEvent();//设置地图事件
		addMapControl();//向地图添加控件
		addMarker();//向地图中添加marker
	}

	//创建地图函数：
	function createMap() {
		var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
		var point = new BMap.Point(114.937715, 25.858359);//定义一个中心点坐标
		map.centerAndZoom(point, 17);//设定地图的中心点和坐标并将地图显示在地图容器中
		window.map = map;//将map变量存储在全局
	}

	//地图事件设置函数：
	function setMapEvent() {
		map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
		map.enableScrollWheelZoom();//启用地图滚轮放大缩小
		map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
		map.enableKeyboard();//启用键盘上下左右键移动地图
	}

	//地图控件添加函数：
	function addMapControl() {
		//向地图中添加缩放控件
		var ctrl_nav = new BMap.NavigationControl({
			anchor : BMAP_ANCHOR_TOP_LEFT,
			type : BMAP_NAVIGATION_CONTROL_LARGE
		});
		map.addControl(ctrl_nav);
		//向地图中添加比例尺控件
		var ctrl_sca = new BMap.ScaleControl({
			anchor : BMAP_ANCHOR_BOTTOM_LEFT
		});
		map.addControl(ctrl_sca);
	}

	//标注点数组
	var markerArr = [ {
		title : "兰博基尼4S店",
		content : "我的备注",
		point : "114.937813|25.858286",
		isOpen : 0,
		icon : {
			w : 21,
			h : 21,
			l : 0,
			t : 0,
			x : 6,
			lb : 5
		}
	} ];
	//创建marker
	function addMarker() {
		for ( var i = 0; i < markerArr.length; i++) {
			var json = markerArr[i];
			var p0 = json.point.split("|")[0];
			var p1 = json.point.split("|")[1];
			var point = new BMap.Point(p0, p1);
			var iconImg = createIcon(json.icon);
			var marker = new BMap.Marker(point, {
				icon : iconImg
			});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title, {
				"offset" : new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
			});
			marker.setLabel(label);
			map.addOverlay(marker);
			label.setStyle({
				borderColor : "#808080",
				color : "#333",
				cursor : "pointer"
			});

			(function() {
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click", function() {
					this.openInfoWindow(_iw);
				});
				_iw.addEventListener("open", function() {
					_marker.getLabel().hide();
				})
				_iw.addEventListener("close", function() {
					_marker.getLabel().show();
				})
				label.addEventListener("click", function() {
					_marker.openInfoWindow(_iw);
				})
				if (!!json.isOpen) {
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
		}
	}
	//创建InfoWindow
	function createInfoWindow(i) {
		var json = markerArr[i];
		var iw = new BMap.InfoWindow(
				"<b class='iw_poi_title' title='" + json.title + "'>"
						+ json.title + "</b><div class='iw_poi_content'>"
						+ json.content + "</div>");
		return iw;
	}
	//创建一个Icon
	function createIcon(json) {
		var icon = new BMap.Icon(
				"http://app.baidu.com/map/images/us_mk_icon.png",
				new BMap.Size(json.w, json.h), {
					imageOffset : new BMap.Size(-json.l, -json.t),
					infoWindowOffset : new BMap.Size(json.lb + 5, 1),
					offset : new BMap.Size(json.x, json.h)
				})
		return icon;
	}

	initMap();//创建和初始化地图
</script>
</html>