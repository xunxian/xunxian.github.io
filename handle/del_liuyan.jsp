<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.org.dao.Dao"%>
<%
	request.setCharacterEncoding("utf-8");
	String username = new String(session.getAttribute("se_name")
		.toString().getBytes("ISO-8859-1"), "UTF-8");
%>
</head>
<body>
	<%
		String sql;
			sql = "delete tb_liuyan where username='"+username+"'";
			Dao dao = new Dao();
			Statement stmt = dao.getStmt();
			if (stmt.executeUpdate(sql) != 0) {
	%>
	<script language="javascript">
		alert("删除成功！");
		location.replace("../index.jsp");
		</script>
	<%
		} else {
	%>
	<script language="javascript">
		alert("修改失败！");
		location.replace("../personal.jsp");
</script>

	<%
		}
	%>