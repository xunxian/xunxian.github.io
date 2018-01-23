<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao,com.org.model.Custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改用户信息</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("id");
	session.setAttribute("w_username", username);
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	Custom rt = new Custom();
	String s_sql = "select * from tb_custom,tb_user where tb_custom.username=tb_user.username and tb_user.username='"
			+ username + "'";
	ResultSet rs = stmt.executeQuery(s_sql);
	if (rs.next()) {
		rt.setUsername(rs.getString("username"));
		rt.setPassword(rs.getString("password"));
		rt.setName(rs.getString("name"));
		rt.setSex(rs.getString("sex"));
		rt.setNumber(rs.getString("number"));
		rt.setMail(rs.getString("mail"));
		rt.setQq(rs.getString("qq"));
		rt.setAddress(rs.getString("address"));
		rt.setRemark(rs.getString("remark"));

	}
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form1" method="post" action="xg_user_do.jsp">
				<ul style="list-style: none;">
					<li><label>用户名：</label><input type="text" name="username"
						value="<%=rt.getUsername()%>" readonly="readonly"></li>
					<li><label>密&nbsp&nbsp码：</label><input type="text" name="password"
						value="<%=rt.getPassword()%>"></li>
					<li><label>姓名：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input
						type="text" name="name" value="<%=rt.getName()%>"></li>
					<li><label>性别：</label><input type="text" name="sex"
						value="<%=rt.getSex()%>"></li>
						<li><label>电话：</label><input type="text" name="number"
						value="<%=rt.getNumber()%>"></li>
					<li><label>E-mail：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input
						type="text" name="mail" value="<%=rt.getMail()%>"></li>
					<li><label>qq：</label><input type="text" name="qq"
						value="<%=rt.getQq()%>"></li>
						<li><label>住址：</label><input type="text" name="address"
						value="<%=rt.getAddress()%>"></li>
						<li><label>备注：</label><input type="text" name="remark"
						value="<%=rt.getRemark()%>"></li>
					<li><input type="submit" value="修改"></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>