<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除管理员</title>
</head>
<body>
	<%
		//request.setCharacterEncoding("utf-8");
		Dao a = new Dao();
		try {
			String username;
			username = request.getParameter("id");
			username=new String(username.getBytes("ISO-8859-1"),"UTF-8");
			Statement stmt = a.getStmt();
			String sql;
			sql = "delete from tb_yuyue  where username='" + username + "'";
			if (stmt.executeUpdate(sql) != 0) {
	%>
	<script type="text/javascript">
		alert("删除成功！");
		location.replace("see_yuyue.jsp");
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