<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改留言</title>
<%
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
%>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");//解决表单传值乱码问题
	//解决session传值乱码问题,获得这个session是为了可以修改管理员名，避免获取到表单已经被修改后的管理员名
	String  username,xg_lyxx, xg_lyrq, xg_remark;
	username=request.getParameter("username");
	xg_lyxx = request.getParameter("lyxx");
	xg_lyrq = request.getParameter("lyrq");
	xg_remark = request.getParameter("remark");
	String x_sql = "Update tb_liuyan set lyxx ='" + xg_lyxx
			+ "',lyrq ='" + xg_lyrq + "',remark='" + xg_remark
			+ "' where username='" + username
			+ "'";
	if(stmt.executeUpdate(x_sql)!=0){
		%>
	<script type="text/javascript">
		alert("修改成功！");
		location.replace("see_liuyan.jsp");
	</script>
	<%
	}
%>
</body>
</html>