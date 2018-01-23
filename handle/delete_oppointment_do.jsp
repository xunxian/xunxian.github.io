<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除预约信息</title>
<%
	
	
	String w_username = new String(session.getAttribute("se_name")
		.toString().getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	String d_sql;
	d_sql="delete  from tb_yuyue where username='"+w_username+"'";
	if (stmt.executeUpdate(d_sql)!=0) {
%>
<script language="javascript">
	alert("预约删除成功！");
	location.replace("../appointment_see.jsp");
</script>
<%
	return;
	}
%>
