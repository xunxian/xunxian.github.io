<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
%>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");//解决表单传值乱码问题
	//解决session传值乱码问题,获得这个session是为了可以修改管理员名，避免获取到表单已经被修改后的管理员名
	String w_rootname = new String(session.getAttribute("w_rootname").toString().getBytes("ISO-8859-1"), "UTF-8");
	String xg_rootname, xg_password, xg_mail, xg_power;
	xg_rootname = request.getParameter("rootname");
	xg_password = request.getParameter("password");
	xg_mail = request.getParameter("mail");
	xg_power = request.getParameter("power");
	System.out.println(xg_power);
	String x_sql = "Update tb_admin set adname ='" + xg_rootname
			+ "',password ='" + xg_password + "',mail='" + xg_mail
			+ "',power ='" + xg_power + "' where adname='" + w_rootname
			+ "'";
	if(stmt.executeUpdate(x_sql)!=0){
		%>
	<script type="text/javascript">
		alert("修改成功！");
		location.replace("see_admin.jsp");
	</script>
	<%
	}
%>
</body>
</html>