<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page
	import="java.sql.*,com.org.dao.Dao,java.util.*,com.org.model.Root"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看管理员</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form id="formT" name="formT" method="post" action="see_admin.jsp">
				<table align="center" border="0" width="700px" height="230px"
					bordercolor="red">
					<tr bgcolor="#ff7802">
						<th>管理员名</th>
						<th>密码</th>
						<th>E-mail</th>
						<th>权限</th>
						<th>管理</th>
					</tr>
					<%
						request.setCharacterEncoding("utf-8");
						int allpage = 0;
						int pages = 0;
						int Fenpages = 0;
						int pagecount = 5;//每页显示的条数
						int aa = 1;
						List<Root> list = new ArrayList<Root>();
						Dao dao = new Dao();
						try {
							Statement stmt = dao.getStmt();
							String sql;
							sql = "select * from tb_admin";
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								Root rt = new Root();
								rt.setRootname(rs.getString("adname"));
								rt.setPassword(rs.getString("password"));
								rt.setMail(rs.getString("mail"));
								rt.setPower(rs.getString("power"));
								list.add(rt);

							}
						} catch (Exception e1) {
							e1.printStackTrace();
						}
						allpage = list.size();
						Fenpages = (allpage + pagecount - 1) / pagecount;
						if (request.getParameter("pages") == null) {
							pages = 1;
						} else {
							pages = Integer.parseInt(request.getParameter("pages"));
						}
						if (pages > Fenpages || pages < 1) {
							pages = 1;
							aa = pages;
						} else {
							aa = pages;
						}
						List li = new ArrayList();
						int start = (aa - 1) * pagecount;
						int end = start + pagecount;
						if (aa < Fenpages) {
							for (int i = start; i < end; i++) {
								li.add(list.get(i));
							}
						} else {
							for (int i = start; i < allpage; i++) {
								li.add(list.get(i));
							}
						}
						Root st;
						for (int i = 0; i < li.size(); i++) {
							st = (Root) li.get(i);
					%>
					<tr bgcolor="#EAEAEA" align="center">
						<td><%=st.getRootname()%></td>
						<td><%=st.getPassword()%></td>
						<td><%=st.getMail()%></td>
						<td><%=st.getPower()%></td>
						<td>&nbsp&nbsp&nbsp&nbsp<a
							href="xg_admin.jsp?id=<%=st.getRootname()%>">修改</a>&nbsp&nbsp&nbsp&nbsp<a
							href="javascript:if(confirm('确定删除？')) location='del_admin.jsp?id=<%=st.getRootname()%>'">删除</a></td>
					</tr>
					<%
						}
					%>
					<tr align="center">
						<td colspan="5">当前第<%=aa%>页 &nbsp;&nbsp;共<%=Fenpages%>页
							&nbsp;&nbsp; <%
 	if (aa > 1) {
 %> <a href="see_admin.jsp?pages=<%=aa - 1%>">上一页</a> <%
 	}
 %> &nbsp;&nbsp; <%
 	if (aa < Fenpages) {
 %> <a href="see_admin.jsp?pages=<%=aa + 1%>">下一页</a> <%
 	}
 %> &nbsp;&nbsp; <a href="see_admin.jsp?pages=1">首页</a> &nbsp;&nbsp; <a
							href="see_admin.jsp?pages=<%=Fenpages%>">末页</a> &nbsp&nbsp跳转到第<input
							type="text" name="pages" size="4">页 <input type="submit"
							name="submit" value="跳转">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>