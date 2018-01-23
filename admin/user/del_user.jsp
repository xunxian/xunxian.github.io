<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除用户</title>
</head>
<body>
	<%
		Dao a = new Dao();
		try {
			String username;
			username = request.getParameter("id");
			username=new String(username.getBytes("ISO-8859-1"),"UTF-8");
			Statement stmt = a.getStmt();
			String sql_user,sql_custom;
			sql_custom = "delete from tb_custom  where username='" + username + "'";
			sql_user="delete from tb_user where username='" + username + "'";
			if (stmt.executeUpdate(sql_custom) != 0 && stmt.executeUpdate(sql_user) != 0) {
	%>
	<script type="text/javascript">
		alert("删除成功！");
		location.replace("see_user.jsp");
	</script>
	<%
		}
		} catch (Exception e1) {
			out.println(request.getParameter("id"));
			out.println("出错啦！！");
		}
	%>
</body>
</html>