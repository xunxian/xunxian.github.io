<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page
	import="java.sql.*,com.org.dao.Dao,java.util.*,com.org.model.Custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<title>查看用户信息</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form id="form1" name="form1" method="post" action="see_user.jsp">
				<table align="center" border="0" width="900px" height="230px"
					bordercolor="red">
					<tr bgcolor="#ff7802">
						<th>用户名</th>
						<th>密码</th>
						<th>姓名</th>
						<th>性别</th>
						<th>电话号码</th>
						<th>E-mail</th>
						<th>QQ</th>
						<th>住址</th>
						<th>备注</th>
						<th width="100px">管理</th>
					</tr>
					<%
						int allpage = 0;
						int pages = 0;
						int Fenpages = 0;
						int pagecount = 5;//每页显示的条数
						int aa = 1;
						List<Custom> list = new ArrayList<Custom>();
						Dao dao = new Dao();
						try {
							Statement stmt = dao.getStmt();
							String sql;
							sql = "select * from tb_user,tb_custom where tb_user.username=tb_custom.username";
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								Custom rt = new Custom();
								rt.setUsername(rs.getString("username"));
								rt.setPassword(rs.getString("password"));
								rt.setName(rs.getString("name"));
								rt.setSex(rs.getString("sex"));
								rt.setNumber(rs.getString("number"));
								rt.setMail(rs.getString("mail"));
								rt.setQq(rs.getString("qq"));
								rt.setAddress(rs.getString("address"));
								rt.setRemark(rs.getString("remark"));
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
						Custom st;
						for (int i = 0; i < li.size(); i++) {
							st = (Custom) li.get(i);
					%>
					<tr bgcolor="#EAEAEA" align="center">
						<td><%=st.getUsername()%></td>
						<td><%=st.getPassword()%></td>
						<td><%=st.getName()%></td>
						<td><%=st.getSex()%></td>
						<td><%=st.getNumber()%></td>
						<td><%=st.getMail()%></td>
						<td><%=st.getQq()%></td>
						<td><%=st.getAddress()%></td>
						<td><%=st.getRemark()%></td>
						<td width="100px">&nbsp<a
							href="xg_user.jsp?id=<%=st.getUsername()%>">修改</a>&nbsp&nbsp<a
							href="javascript:if(confirm('确定删除？')) location='del_user.jsp?id=<%=st.getUsername()%>'">删除</a></td>
					</tr>
					<%
						}
					%>
					<tr align="center">
						<td colspan="11">当前第<%=aa%>页 &nbsp;&nbsp;共<%=Fenpages%>页
							&nbsp;&nbsp; <%
 	if (aa > 1) {
 %> <a href="see_admin.jsp?pages=<%=aa - 1%>">上一页</a> <%
 	}
 %> &nbsp;&nbsp; <%
 	if (aa < Fenpages) {
 %> <a href="see_user.jsp?pages=<%=aa + 1%>">下一页</a> <%
 	}
 %> &nbsp;&nbsp; <a href="see_user.jsp?pages=1">首页</a> &nbsp;&nbsp; <a
							href="see_user.jsp?pages=<%=Fenpages%>">末页</a> &nbsp&nbsp跳转到第<input
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