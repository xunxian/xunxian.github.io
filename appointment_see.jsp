<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- 基于jQuery菜单功能 -->
<script type="text/javascript" src="js/menu/jquery.min.js"></script>
<script type="text/javascript" src="js/menu/nav.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息显示</title>
<style type="text/css">
.fcon {
	width: 800px;
	height: 500px;
	border: 1px solid red;
	margin: 0 auto;
}

.fcon .fcon_1 {
	width: 170px;
	height: 450px;
	border: 1px solid orange;
	float: left;
	margin: 40px 5px 0px 8px;
}

.fcon .fcon_2 {
	width: 600px;
	height: 450px;
	border: 1px solid red;
	float: left;
	margin: 40px 6px 0px 5px;
}
</style>
<%
	request.setCharacterEncoding("utf-8");
	String w_username = new String(session.getAttribute("se_name")
			.toString().getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	String sql = "select * from tb_yuyue where username='" + w_username
			+ "'";
	ResultSet rs = stmt.executeQuery(sql);
%>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="main_con">
			<div class="fcon">
				<div class="fcon_1">
					<center>

						<ul>
							<br>
							<br>
							<li><img src="images/fff.png" width="70px" height="70px"></li>
							<li><a href="personal.jsp">个人信息</a></li>
							<br>
							<br>
							<li><a href="appointment_see.jsp">查看预约</a></li>
							<br>
							<br>
							<li><a href="change_pass.jsp">修改密码</a></li>
							<br>
							<br>
							<li><a href="handle/del_liuyan.jsp">删除留言</a></li>
						</ul>
					</center>
				</div>
				<div class="fcon_2">
					<div style="margin: 40px 130px;">
						<center><h2>预约信息修改</h2></center>
						<br>
						<form name="form" method="post"
							action="handle/appointment_xg_do.jsp">
							<%
								if (rs.next()) {
							%>
							<ul>
								<li>用户名：<input type="text" readonly="readonly"
									name="username" value="<%=rs.getString("username")%>"></li>
								<li>汽车型号：<input type="text" name="qcxh"
									value="<%=rs.getString("qcxh")%>"></li>
									<li>故障描述：<textarea name="gzms"
									 cols="50" rows="5"><%=rs.getString("gzms")%></textarea></li>
								<li>预约时间：<input type="text" name="yyrq"
									value="<%=rs.getString("yyrq")%>"></li>
								<br>
								<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit"
									value="修改">
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<a href="handle/delete_oppointment_do.jsp">删除预约</a></li>
							</ul>
							<%
								}
								rs.close();
								stmt.close();
							%>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>