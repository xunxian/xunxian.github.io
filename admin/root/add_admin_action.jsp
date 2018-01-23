<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	String rootname, password, password1, mail;
	rootname = request.getParameter("rootname");
	password = request.getParameter("password");
	password1 = request.getParameter("password1");
	mail = request.getParameter("mail");
	if ("".equals(rootname) || "".equals(password)
			|| "".equals(password1)
			|| password.equals(password1) == false) {
%>
<script language="javascript">
	alert("信息填写有误！");
	location.replace("add_admin.jsp");
</script>
<%
	return;
	}
%>
</head>
<body>
	<%
		String s_sql, i_sql;
		Dao dao = new Dao();
		Statement stmt = dao.getStmt();
		s_sql = "select * from tb_admin where adname='" + rootname + "'";
		ResultSet rs = stmt.executeQuery(s_sql);
		if (rs.next()) {
	%>
	<script language="javascript">
		alert("该管理员已经存在！");
		location.replace("add_admin.jsp");
</script>
	<%
		} else {
			i_sql = "insert into tb_admin values('" + rootname + "','"
					+ password + "','" + mail + "','" + "root" + "')";
			if (stmt.executeUpdate(i_sql) != 0) {
%>
<script language="javascript">
		alert("添加成功！");
		location.replace("see_admin.jsp");
		</script>
	<%
		} else {	%>
<script language="javascript">
		alert("添加失败！");
		location.replace("add_admin.jsp");
</script>

<%}}%>
</body>
</html>