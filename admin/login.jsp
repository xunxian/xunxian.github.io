<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>汽车4S店客户管理系统——后台登陆</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<div style="width:400px;height:200px;margin:0 auto;margin-top:200px;">
	<form name="form" method="post" action="handle/login_do.jsp">
		<ul>
		<li>
		<label>管理员名：</label>
		<input type="text" name="adname"></li>
		<li>
		<label>密码：</label>
		<input type="password" name="password"></li>
		<li>
		<input type="submit" value="登陆"></li>
		</ul>
	</form>
</div>
</body>
</html>