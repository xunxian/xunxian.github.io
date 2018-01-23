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
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<div id="div1">
				<%
					if (session.getAttribute("se_name") != null) {

						out.println("欢迎你: " + session.getAttribute("se_name"));
						out.println("&nbsp");
				%>

				<a href="login.jsp" style="color:red;">退出登录</a>

				<%
					} else {
				%>


				你好！请<a href="login.jsp">登录</a>或<a href="#">注册</a>
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
							<li><a href="#">新闻资讯</a>
								</li>
							<li><a href="models_price.jsp">车型报价</a>
								<ul>
									<li><a href="lp750_4_sv_2015.jsp">2015款Aventador
											LP750-4 SV</a></li>
									<li><a href="lp610_4_2014.jsp">2014款Huracan LP610-4</a></li>
									<li><a href="lp700_4_2011.jsp">2011款Aventador LP700-4</a></li>
									<li><a href="lp700_4_roadster_2013.jsp">2013款Aventador
											LP700-4 RS</a></li>
								</ul></li>
							<li><a href="appointment.jsp">预约维修</a>
								</li>
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

</body>
</html>