<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*,com.org.dao.Dao" %>
<%
	request.setCharacterEncoding("utf-8");
	Dao dao=new Dao();
	Statement stmt=dao.getStmt();
	String username,name,sex,number,mail,qq,address,remark;
	username=request.getParameter("username");
	name=request.getParameter("name");
	sex=request.getParameter("sex");
	number=request.getParameter("number");
	mail=request.getParameter("mail");
	qq=request.getParameter("qq");
	address=request.getParameter("address");
	remark=request.getParameter("remark");
	String x_sql = "Update tb_custom set name ='" + name
			+ "',sex ='" + sex + "',number='"+number+"',mail='" + mail
			+ "',qq ='" + qq + "',address='"+address+"',remark='"+remark+"' where username='" + username
			+ "'";
	if(stmt.executeUpdate(x_sql)!=0){
		%>
	<script type="text/javascript">
		alert("修改成功！");
		location.replace("../personal.jsp");
	</script>
	<%
	}
%>