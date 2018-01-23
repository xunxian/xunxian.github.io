<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.org.dao.Dao"%>
<%
	request.setCharacterEncoding("utf-8");
	String password1, password2;
	
	password1 = request.getParameter("password1");
	password2=request.getParameter("password2");
	if(password1.equals(password2)==false){
		%>
		<script type="text/javascript">
			alert("两次密码不一致！请重新输入！");
			location.replace("../change_pass.jsp");
		</script>
		<% 
		return;
	}
	
%>
</head>
<body>
	<%
		String sql;
			sql = "Update tb_user set password ='" + password1
					+ "'";
			Dao dao = new Dao();
			Statement stmt = dao.getStmt();
			if (stmt.executeUpdate(sql) != 0) {
	%>
	<script language="javascript">
		alert("修改成功！");
		location.replace("../index.jsp");
		</script>
	<%
		} else {
	%>
	<script language="javascript">
		alert("修改失败！");
		location.replace("../change_pass.jsp");
</script>

	<%
		}
	%>