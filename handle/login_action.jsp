<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="com.org.dao.*,com.org.model.*,com.org.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录action</title>
<%	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String userpass = request.getParameter("userpass");
	System.out.println(username);
	IUserDao userDao = DAOFactory.getUserDao();
	User u = userDao.login(username, userpass);
%>
</head>
<body>
	<%
		if (u != null) {
			session.setAttribute("se_name", username);
			response.sendRedirect("../index.jsp");
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