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

						out.println("��ӭ��: " + session.getAttribute("se_name"));
						out.println("&nbsp");
				%>

				<a href="login.jsp" style="color:red;">�˳���¼</a>

				<%
					} else {
				%>


				��ã���<a href="login.jsp">��¼</a>��<a href="#">ע��</a>
				<%
					}
				%>
			</div>
		<div>
			<img src="images/logo.gif" />
		</div>
		<div>
			<!-- ����jQuery�˵����� -->
			<div id="top_bg">
				<div class="top">
					<a class="logo_l" href="/" title="������ҳ"></a>
					<!--������ʼ-->
					<div class="nav_z">
						<ul id="navul" class="cl">
							<li><a href="index.jsp">��ҳ</a></li>
							<li><a href="#">������Ѷ</a>
								</li>
							<li><a href="models_price.jsp">���ͱ���</a>
								<ul>
									<li><a href="lp750_4_sv_2015.jsp">2015��Aventador
											LP750-4 SV</a></li>
									<li><a href="lp610_4_2014.jsp">2014��Huracan LP610-4</a></li>
									<li><a href="lp700_4_2011.jsp">2011��Aventador LP700-4</a></li>
									<li><a href="lp700_4_roadster_2013.jsp">2013��Aventador
											LP700-4 RS</a></li>
								</ul></li>
							<li><a href="appointment.jsp">ԤԼά��</a>
								</li>
							<li><a href="about.jsp">��˾����</a></li>
							<li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=564341160&amp;site=qq&amp;menu=yes" target="_self">������ѯ</a></li>
								
							<li><a href="admin/login.jsp">�����̨</a>
								</li>
							<!--���ڴ˴�ֱ����ӵ���-->
						</ul>
					</div>
					<!--��������-->
					<script type="text/javascript">
						$(".navbg").capacityFixed();
					</script>
				</div>
			</div>
		</div>
	</div>

</body>
</html>