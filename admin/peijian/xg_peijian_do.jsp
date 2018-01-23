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
	String w_pjid = new String(session.getAttribute("w_pjid").toString().getBytes("ISO-8859-1"), "UTF-8");
	String xg_pjid, xg_pjname, xg_pjlx, xg_pjsl;
	xg_pjid = request.getParameter("pjid");
	xg_pjname = request.getParameter("pjname");
	xg_pjlx = request.getParameter("pjlx");
	xg_pjsl = request.getParameter("pjsl");
	String x_sql = "Update tb_peijian set pjid ='" + xg_pjid
			+ "',pjname ='" + xg_pjname + "',pjlx='" + xg_pjlx
			+ "',pjsl ='" + xg_pjsl + "' where pjid='" + w_pjid
			+ "'";
	if(stmt.executeUpdate(x_sql)!=0){
		%>
	<script type="text/javascript">
		alert("修改成功！");
		location.replace("see_peijian.jsp");
	</script>
	<%
	}
%>
</body>
</html>