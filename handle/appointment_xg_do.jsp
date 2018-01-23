<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*,com.org.dao.Dao" %>
<%
	request.setCharacterEncoding("utf-8");
	Dao dao=new Dao();
	Statement stmt=dao.getStmt();
	String username,qcxh,gzms,yyrq;
	username=request.getParameter("username");
	qcxh=request.getParameter("qcxh");
	gzms=request.getParameter("gzms");
	yyrq=request.getParameter("yyrq");
	String x_sql = "Update tb_yuyue set qcxh ='" + qcxh
			+ "',gzms ='" + gzms + "',yyrq='"+yyrq+"' where username='" + username
			+ "'";
	if(stmt.executeUpdate(x_sql)!=0){
		%>
	<script type="text/javascript">
		alert("修改成功！");
		location.replace("../appointment_see.jsp");
	</script>
	<%
	}
%>