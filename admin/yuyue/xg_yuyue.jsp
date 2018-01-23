<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao,com.org.model.Yuyue"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%
	String username = request.getParameter("id");
	username = new String(username.getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	Yuyue rt = new Yuyue();
	String s_sql = "select * from tb_yuyue where username='" + username
			+ "'";
	ResultSet rs = stmt.executeQuery(s_sql);
	if (rs.next()) {
		rt.setUsername(rs.getString(1));
		rt.setQcxh(rs.getString(2));
		rt.setGzms(rs.getString(3));
		rt.setYyrq(rs.getString(4));

	}
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form1" method="post" action="xg_yuyue_do.jsp">
				<ul style="list-style: none;">
					<li><label>用户名：</label><input type="text" name="username"
						value="<%=rt.getUsername()%>" readonly="readonly"></li>
					<li><label>汽车型号：</label><input type="text" name="qcxh"
						value="<%=rt.getQcxh()%>"></li>
					<li><label>故障描述：</label><input
						type="text" name="gzms" value="<%=rt.getGzms() %>"></li>
					<li><label>预约日期：</label><input type="text" name="yyrq"
						value="<%=rt.getYyrq()%>"></li>
					<li><input type="submit" value="修改"></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>