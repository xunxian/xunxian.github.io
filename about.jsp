<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/menu/jquery.min.js"></script>
<script type="text/javascript" src="js/menu/nav.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>公司介绍</title>
<style type="text/css">
.gsjs {
	margin: 0 auto;
	margin: 60px;
	color: black;
}

.gsjs span {
	font-family: "微软雅黑", Arial, Helvetica, sans-serif;
	color: #666666;
	line-height: 26px;
	font-size: 16px;
}

p {
	text-indent: 2em;
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="main_con">
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
					<div class="gsjs">
						<center>
							<h2>兰博基尼赣州</h2>
						</center>
						<br> <br> <span>
							<p>赣州兰博基尼汽车销售有限公司隶属香港嘉信集团旗下,于2004年起成为意大利超级跑车品牌兰博基尼在赣州地区唯一授权经销商。</p>
							<p>兰博基尼赣州销售展厅位于江西省赣州市章贡区红旗大道62号，向客户提供兰博基尼全系列车型的订购和定制服务;同时展厅陈列展示了兰博基尼精品系列产品以及多款兰博基尼车辆模型。本公司售后服务中心，面积达2000平米，设置了喷漆区、机修区等多个功能区域。拥有经严格训练并经验丰富的技术团队，专业的维修器材和原厂零件，更提供全国24小时道路救援以及上门检测维修，确保为兰博基尼车主提供优质的原厂售后服务。时至今日，
								本公司已成为能提供优质产品及售后服务并具有良好信誉的汽车公司。
							<p>兰博基尼赣州州展厅地址：赣州市章贡区珠江红旗大道62号 电话：0797-8888888</p>
							<p>兰博基尼赣州售后服务中心 ：赣州市章贡区珠江红旗大道62号首层 电话：0797-8888888</p>
							<p>网址：www.lamborghini.com</p>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="interact"></div>
		<div id="footer.jsp">
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