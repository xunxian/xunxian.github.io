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
<title>��˾����</title>
<style type="text/css">
.gsjs {
	margin: 0 auto;
	margin: 60px;
	color: black;
}

.gsjs span {
	font-family: "΢���ź�", Arial, Helvetica, sans-serif;
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
							<h2>������������</h2>
						</div>
						<div style="height: 160px; background: #f3eff7;">
							<ul>
								<li>���ƣ������������</li>
								<li>��𣺸�����������4S��</li>
								<li>��Ӫ����������</li>
								<li>���ߵ绰:0797-8888888</li>
								<li>��վ��<a href="http://www.lamborghini.com/en/home/">http://www.lamborghini.com</a></li>
								<li>��ַ������ʡ��������������4SרӪ��</li>
							</ul>
						</div>
						<div class="title_bg">
							<h2>��˾��ַ</h2>
						</div>
						<div>
							<!--�ٶȵ�ͼ����-->
							<div
								style="width: 358px; height: 220px; border: #ccc solid 1px; margin: 0 auto;"
								id="dituContent"></div>
							<div style="margin: 1px;">
								��ַ������ʡ��������������4SרӪ�� <a href="map_max.html" target="_blank">���Ŵ��ͼ��</a>
							</div>
						</div>
					</div>
				</div>
				<div class="rside">
					<div class="gsjs">
						<center>
							<h2>�����������</h2>
						</center>
						<br> <br> <span>
							<p>�����������������������޹�˾������ۼ��ż�������,��2004�����Ϊ����������ܳ�Ʒ�����������ڸ��ݵ���Ψһ��Ȩ�����̡�</p>
							<p>���������������չ��λ�ڽ���ʡ�������¹���������62�ţ���ͻ��ṩ��������ȫϵ�г��͵Ķ����Ͷ��Ʒ���;ͬʱչ������չʾ���������ᾫƷϵ�в�Ʒ�Լ�����������ᳵ��ģ�͡�����˾�ۺ�������ģ������2000ƽ�ף����������������������ȶ����������ӵ�о��ϸ�ѵ��������ḻ�ļ����Ŷӣ�רҵ��ά�����ĺ�ԭ����������ṩȫ��24Сʱ��·��Ԯ�Լ����ż��ά�ޣ�ȷ��Ϊ�������ᳵ���ṩ���ʵ�ԭ���ۺ����ʱ�����գ�
								����˾�ѳ�Ϊ���ṩ���ʲ�Ʒ���ۺ���񲢾�������������������˾��
							<p>�������������չ����ַ���������¹����齭������62�� �绰��0797-8888888</p>
							<p>������������ۺ�������� ���������¹����齭������62���ײ� �绰��0797-8888888</p>
							<p>��ַ��www.lamborghini.com</p>
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
<!-- ʹ�õ�ͼJS -->
<script type="text/javascript">
	//�����ͳ�ʼ����ͼ������
	function initMap() {
		createMap();//������ͼ
		setMapEvent();//���õ�ͼ�¼�
		addMapControl();//���ͼ��ӿؼ�
		addMarker();//���ͼ�����marker
	}

	//������ͼ������
	function createMap() {
		var map = new BMap.Map("dituContent");//�ڰٶȵ�ͼ�����д���һ����ͼ
		var point = new BMap.Point(114.937715, 25.858359);//����һ�����ĵ�����
		map.centerAndZoom(point, 17);//�趨��ͼ�����ĵ�����겢����ͼ��ʾ�ڵ�ͼ������
		window.map = map;//��map�����洢��ȫ��
	}

	//��ͼ�¼����ú�����
	function setMapEvent() {
		map.enableDragging();//���õ�ͼ��ק�¼���Ĭ������(�ɲ�д)
		map.enableScrollWheelZoom();//���õ�ͼ���ַŴ���С
		map.enableDoubleClickZoom();//�������˫���Ŵ�Ĭ������(�ɲ�д)
		map.enableKeyboard();//���ü����������Ҽ��ƶ���ͼ
	}

	//��ͼ�ؼ���Ӻ�����
	function addMapControl() {
		//���ͼ��������ſؼ�
		var ctrl_nav = new BMap.NavigationControl({
			anchor : BMAP_ANCHOR_TOP_LEFT,
			type : BMAP_NAVIGATION_CONTROL_LARGE
		});
		map.addControl(ctrl_nav);
		//���ͼ����ӱ����߿ؼ�
		var ctrl_sca = new BMap.ScaleControl({
			anchor : BMAP_ANCHOR_BOTTOM_LEFT
		});
		map.addControl(ctrl_sca);
	}

	//��ע������
	var markerArr = [ {
		title : "��������4S��",
		content : "�ҵı�ע",
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
	//����marker
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
	//����InfoWindow
	function createInfoWindow(i) {
		var json = markerArr[i];
		var iw = new BMap.InfoWindow(
				"<b class='iw_poi_title' title='" + json.title + "'>"
						+ json.title + "</b><div class='iw_poi_content'>"
						+ json.content + "</div>");
		return iw;
	}
	//����һ��Icon
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

	initMap();//�����ͳ�ʼ����ͼ
</script>

</html>