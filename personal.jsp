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
	String sql = "select * from tb_custom where username='"
			+ w_username + "'";
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
					<center>
					<h2>个人信息修改</h2><br></center>
						<form name="form" method="post" action="handle/personal_xg_do.jsp">
							<%
								if (rs.next()) {
							%>
							<ul>
								<li>用户名：<input type="text" readonly="readonly"
									name="username" value="<%=rs.getString("username")%>"></li>
								<li>姓名：<input type="text" name="name"
									value="<%=rs.getString("name")%>"></li>
								<li>性别：<input type="text" name="sex"
									value="<%=rs.getString("sex")%>"></li>
								<li>联系电话：<input type="text" name="number"
									value="<%=rs.getString("number")%>"></li>
								<li>电子邮箱：<input type="text" name="mail"
									value="<%=rs.getString("mail")%>"></li>
								<li>QQ：<input type="text" name="qq"
									value="<%=rs.getString("qq")%>"></li>
								<li>家庭住址：<input type="text" name="address"
									value="<%=rs.getString("address")%>"></li>
								<li>备注：<textarea rows="8" cols="49" name="remark"><%=rs.getString("remark")%></textarea></li>
								<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit"
									value="修改"></li>
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