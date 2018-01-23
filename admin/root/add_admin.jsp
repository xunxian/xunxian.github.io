<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加管理员</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form_zhuce" action="add_admin_action.jsp" method="post"> 
				<table width="300px" height="200px" align="center">
					<tr>
						<td><label>用&nbsp&nbsp户&nbsp&nbsp名：</label></td>
						<td><input name="rootname" type="text" /></td>
					</tr>
					<tr>
						<td><label>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</label></td>
						<td><input name="password" type="password" /></td>
					</tr>
					<tr>
						<td><label>重复密码：</label></td>
						<td><input name="password1" type="password" /></td>
					</tr>
					<tr>
						<td><label>电子邮箱：</label></td>
						<td><input name="mail" type="text" /></td>
					</tr>
					<tr align="center">
						<td><input type="submit" value="添加"/></td>
						<td><input type="reset" value="重置" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>