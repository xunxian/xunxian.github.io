<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="com.org.dao.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登陆</title>
<%	request.setCharacterEncoding("utf-8");
	String adname = request.getParameter("adname");
	String password = request.getParameter("password");
	Dao dao=new Dao();
	Statement stmt=dao.getStmt();
	String sql="select * from tb_admin where adname='"+adname+"' and password='"+password+"'";
	ResultSet rs=stmt.executeQuery(sql);
%>
</head>
<body>
	<%
		if (rs.next()) {
			session.setAttribute("ad_name", adname);
			response.sendRedirect("../main.jsp");
		} else {
	%>
	<script type="text/javascript">
		alert("用户不存在或密码错误！请重新填写！");
		history.back();
		
	</script>
	<%
		}
	%>
</body>
</html>