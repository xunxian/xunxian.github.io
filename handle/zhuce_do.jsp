<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.org.dao.Dao"%>
<%
	request.setCharacterEncoding("utf-8");
	String username, password, name, sex, number, mail, qq, address;
	username = request.getParameter("username");
	password = request.getParameter("password");
	name = request.getParameter("name");
	sex = request.getParameter("sex");
	number = request.getParameter("number");
	qq = request.getParameter("qq");
	address = request.getParameter("address");
	mail = request.getParameter("mail");
%>
</head>
<body>
	<%
		String s_sql, i_sql1, i_sql2;
		Dao dao = new Dao();
		Statement stmt = dao.getStmt();
		s_sql = "select * from tb_user where username='" + username + "'";
		ResultSet rs = stmt.executeQuery(s_sql);
		if (rs.next()) {
	%>
	<script language="javascript">
		alert("该用户名已经存在！");
		location.replace("../zhuce.jsp");
	
</script>
	<%
		} else {
			i_sql1 = "insert into tb_user values('" + username + "','"
					+ password + "','" + "用户" + "')";
			i_sql2 = "insert into tb_custom values('" + username + "','"
					+ name + "','" + sex + "','" + number + "','" + mail
					+ "','" + qq + "','" + address + "','" + ""+ "')";
			if (stmt.executeUpdate(i_sql1) != 0&&stmt.executeUpdate(i_sql2) != 0) {
	%>
	<script language="javascript">
		alert("注册成功！");
		location.replace("../login.jsp");
		</script>
	<%
		} else {
	%>
	<script language="javascript">
		alert("添加失败！");
		location.replace("../zhuce.jsp");
</script>

	<%
		}
		}
	%>