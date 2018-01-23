<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,com.org.dao.Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加配件</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<div class="container">
		<div class="a1">
			<form name="form_zhuce" action="add_peijian_do.jsp" method="post"> 
				<table width="300px" height="200px" align="center">
					<tr>
						<td><label>编号：</label></td>
						<td><input name="pjid" type="text" /></td>
					</tr>
					<tr>
						<td><label>配件名：</label></td>
						<td><input name="pjname" type="text" /></td>
					</tr>
					<tr>
						<td><label>配件类型</label></td>
						<td><input name="pjlx" type="text" /></td>
					</tr>
					<tr>
						<td><label>配件数量：</label></td>
						<td><input name="pjsl" type="text" /></td>
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