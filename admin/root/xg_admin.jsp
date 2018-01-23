<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao,com.org.model.Root"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%
	String rootname = request.getParameter("id");
	session.setAttribute("w_rootname", rootname);
	rootname = new String(rootname.getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	Root rt = new Root();
	String s_sql = "select * from tb_admin where adname='" + rootname
			+ "'";
	ResultSet rs = stmt.executeQuery(s_sql);
	if (rs.next()) {
		rt.setRootname(rs.getString(1));
		rt.setPassword(rs.getString(2));
		rt.setMail(rs.getString(3));
		rt.setPower(rs.getString(4));

	}
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form1" method="post" action="xg_admin_do.jsp">
				<ul style="list-style: none;">
					<li><label>管理员名：</label><input type="text" name="rootname"
						value="<%=rt.getRootname()%>"></li>
					<li><label>登陆密码：</label><input type="text" name="password"
						value="<%=rt.getPassword()%>"></li>
					<li><label>E-mail：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input
						type="text" name="mail" value="<%=rt.getMail()%>"></li>
					<li><label>管理权限：</label><input type="text" name="power"
						value="<%=rt.getPower()%>"></li>
					<li><input type="submit" value="修改"></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>