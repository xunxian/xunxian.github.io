<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao,com.org.model.Liuyan"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%
	String username = request.getParameter("id");
	username = new String(username.getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	Liuyan rt = new Liuyan();
	String s_sql = "select * from tb_Liuyan where username='" + username
			+ "'";
	ResultSet rs = stmt.executeQuery(s_sql);
	if (rs.next()) {
		rt.setUsername(rs.getString(1));
		rt.setLyxx(rs.getString(2));
		rt.setLyrq(rs.getString(3));
		rt.setRemark(rs.getString(4));

	}
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form1" method="post" action="xg_liuyan_do.jsp">
				<ul style="list-style: none;">
					<li><label>用户名：</label><input type="text" name="username"
						value="<%=rt.getUsername()%>" readonly="readonly"></li>
					<li><label>留言信息：</label><input type="text" name="lyxx"
						value="<%=rt.getLyxx()%>"></li>
					<li><label>留言日期：</label><input
						type="text" name="lyrq" value="<%=rt.getLyrq() %>"></li>
					<li><label>备注：</label><input type="text" name="remark"
						value="<%=rt.getRemark()%>"></li>
					<li><input type="submit" value="修改"></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>