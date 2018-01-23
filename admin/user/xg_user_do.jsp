<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<%
	request.setCharacterEncoding("utf-8");
	String username, password, name, sex, number, mail, qq, address, remark;
	username = request.getParameter("username");
	password = request.getParameter("password");
	name = request.getParameter("name");
	sex = request.getParameter("sex");
	number = request.getParameter("number");
	mail = request.getParameter("mail");
	qq = request.getParameter("qq");
	address = request.getParameter("address");
	remark = request.getParameter("remark");
	String sql_custom= "Update tb_custom set name ='" + name + "',sex ='"
			+ sex + "',number='" + number + "',mail='" + mail
			+ "',qq ='" + qq + "',address='" + address + "',remark='"
			+ remark + "' where username='" + username + "'";
	String sql_user="Update tb_user set password='"+password+"'";
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	if (stmt.executeUpdate(sql_user) != 0 && stmt.executeUpdate(sql_custom)!=0) {
%>
	<script type="text/javascript">
				alert("修改成功！")
				location.replace("see_user.jsp")
				</script>
<%
	}
%>