<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page
	import="java.sql.*,com.org.dao.Dao,java.util.*,com.org.model.Liuyan"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看留言</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<div class="container">
		<div class="a1">
			<form id="formT" name="formT" method="post" action="see_liuyan.jsp">
				<table align="center" border="0" width="700px" height="230px"
					bordercolor="red">
					<tr bgcolor="#ff7802">
						<th>用户名</th>
						<th>留言信息</th>
						<th>留言日期</th>
						<th>备注</th>
						<th>管理</th>
					</tr>
					<%
						request.setCharacterEncoding("utf-8");
						int allpage = 0;
						int pages = 0;
						int Fenpages = 0;
						int pagecount = 5;//每页显示的条数
						int aa = 1;
						List<Liuyan> list = new ArrayList<Liuyan>();
						Dao dao = new Dao();
						try {
							Statement stmt = dao.getStmt();
							String sql;
							sql = "select * from tb_liuyan";
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								Liuyan rt = new Liuyan();
								rt.setUsername(rs.getString("username"));
								rt.setLyxx(rs.getString("lyxx"));
								rt.setLyrq(rs.getString("lyrq"));
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
						Liuyan st;
						for (int i = 0; i < li.size(); i++) {
							st = (Liuyan) li.get(i);
					%>
					<tr bgcolor="#EAEAEA" align="center">
						<td><%=st.getUsername()%></td>
						<td><%=st.getLyxx()%></td>
						<td><%=st.getLyrq()%></td>
						<td><%=st.getRemark()%></td>
						<td>&nbsp&nbsp&nbsp&nbsp<a
							href="xg_liuyan.jsp?id=<%=st.getUsername()%>">修改</a>&nbsp&nbsp&nbsp&nbsp<a
							href="javascript:if(confirm('确定删除？')) location='del_liuyan.jsp?id=<%=st.getUsername()%>'">删除</a></td>
					</tr>
					<%
						}
					%>
					<tr align="center">
						<td colspan="5">当前第<%=aa%>页 &nbsp;&nbsp;共<%=Fenpages%>页
							&nbsp;&nbsp; <%
 	if (aa > 1) {
 %> <a href="see_yuyue.jsp?pages=<%=aa - 1%>">上一页</a> <%
 	}
 %> &nbsp;&nbsp; <%
 	if (aa < Fenpages) {
 %> <a href="see_yuyue.jsp?pages=<%=aa + 1%>">下一页</a> <%
 	}
 %> &nbsp;&nbsp; <a href="see_yuyue.jsp?pages=1">首页</a> &nbsp;&nbsp; <a
							href="see_yuyue.jsp?pages=<%=Fenpages%>">末页</a> &nbsp&nbsp跳转到第<input
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