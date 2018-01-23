<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>预约处理</title>
<%
	
	request.setCharacterEncoding("utf-8");
	String username, qcxh, gzms, yyrq;
	username = request.getParameter("username");
	qcxh = request.getParameter("qcxh");
	gzms = request.getParameter("gzms");
	yyrq = request.getParameter("yyrq");
	String s_sql,i_sql;
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	s_sql="select * from tb_yuyue where username='"+username+"'";
	ResultSet rs=stmt.executeQuery(s_sql);
	if ("".equals(qcxh) || "".equals(gzms) || rs.next()) {
%>
<script language="javascript">
	alert("信息填写有误或已存在预约，请去个人中心修改预约信息！");
	location.replace("../appointment.jsp");
</script>
<%
	return;
	}
%>
<%

%>
</head>
<body>
<%
		
			i_sql = "insert into tb_yuyue values('" + username + "','"
					+ qcxh + "','" + gzms + "','" + yyrq + "')";
			if (stmt.executeUpdate(i_sql) != 0) {
%>
<script language="javascript">
		alert("预约成功！");
		location.replace("../index.jsp");
		</script>
	<%
		} else {
	%>
<script language="javascript">
		alert("预约失败！");
		location.replace("../appointment.jsp");
</script>

<%}%>
</body>
</html>