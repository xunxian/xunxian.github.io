<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<%
	request.setCharacterEncoding("utf-8");
	String lyxx=request.getParameter("liuyan");
	String username = new String(session.getAttribute("se_name")
			.toString().getBytes("ISO-8859-1"), "UTF-8");
	if (session.getAttribute("se_name")==null) {
%>
	<script type="text/javascript">
		alert("请先登录！");
		location.replace("../login.jsp");
	</script>
<%
	return;
	}
	else if("".equals(lyxx)){
		%>
		<script type="text/javascript">
			alert("留言信息不能为空！");
			location.replace("../index.jsp");
		</script>
	<%
	}
	else
	{	
		String sql,sql1;
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");

		java.util.Date currentTime = new java.util.Date();//得到当前系统时间

		String str_date1 = formatter.format(currentTime).toString(); //将日期时间格式化
		sql="select * from tb_liuyan where username='"+username+"'";
		Dao dao=new Dao();
		Statement stmt=dao.getStmt();
		ResultSet rs=stmt.executeQuery(sql);
		if(rs.next())
		{
			%>
			<script type="text/javascript">
				alert("你已经留言过了！");
				location.replace("../index.jsp");
			</script>
			<%
		}
		else
		{
			sql1="insert into tb_liuyan values('" + username + "','"
					+ lyxx + "','" + str_date1 + "','" + "" + "')";
			if (stmt.executeUpdate(sql1) != 0) {
				%>
				<script language="javascript">
						alert("留言成功！");
						location.replace("../index.jsp");
						</script>
					<%
						} else {
					%>
				<script language="javascript">
						alert("留言失败！");
						location.replace("../index.jsp");
				</script>

				<%}
		
	}}
%>