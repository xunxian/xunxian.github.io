<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao,com.org.model.Peijian"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%
	String pjid = request.getParameter("id");
	session.setAttribute("w_pjid", pjid);
	pjid = new String(pjid.getBytes("ISO-8859-1"), "UTF-8");
	Dao dao = new Dao();
	Statement stmt = dao.getStmt();
	Peijian pj = new Peijian();
	String s_sql = "select * from tb_peijian where pjid='" + pjid
			+ "'";
	ResultSet rs = stmt.executeQuery(s_sql);
	if (rs.next()) {
		pj.setPjid(rs.getString(1));
		pj.setPjname(rs.getString(2));
		pj.setPjlx(rs.getString(3));
		pj.setPjsl(rs.getString(4));

	}
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form1" method="post" action="xg_peijian_do.jsp">
				<ul style="list-style: none;">
					<li><label>配件编号：</label><input type="text" name="pjid"
						value="<%=pj.getPjid()%>"></li>
					<li><label>配件名称：</label><input type="text" name="pjname"
						value="<%=pj.getPjname()%>"></li>
					<li><label>配件类型</label><input
						type="text" name="pjlx" value="<%=pj.getPjlx()%>"></li>
					<li><label>配件数量：</label><input type="text" name="pjsl"
						value="<%=pj.getPjsl()%>"></li>
					<li><input type="submit" value="修改"></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>