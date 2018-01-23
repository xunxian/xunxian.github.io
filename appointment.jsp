<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>预约维修</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/menu/jquery.min.js"></script>
<script type="text/javascript" src="js/menu/nav.js"></script>
<style type="text/css">
.fcon {
	width: 804px;
	height: 450px;
	border: 1px solid gray;
	margin: 1px auto;
	/* font-family:22px; */
}
.fcon_1{
width:400px;
height:300px;
/* border:1px solid red; */
margin:50px 200px 0px 200px;
}
</style>
<%
	if(session.getAttribute("se_name")==null){
		%>
		<script type="text/javascript">
		alert("请先登录！");
		location.replace("login.jsp");
	</script>
		<%
		return;
	}
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");

	java.util.Date currentTime = new java.util.Date();//得到当前系统时间

	String str_date1 = formatter.format(currentTime).toString(); //将日期时间格式化
%>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="main_con">
			<div class="fcon">
			<div class="fcon_1">
				<form name="apptt_form" method="post" action="handle/appointment_do.jsp">
					用户名： <br><input type="text" name="username"
						value="<%=session.getAttribute("se_name").toString()%>"
						readonly="readonly" /> <br> 请选择汽车型号： <br><select name="qcxh">
						<option>请选择车型</option>
						<option value="2014 LP610-4">2014 LP610-4</option>
						<option value="2011 LP700-4">2011 LP700-4</option>
						<option value="2013 LP700-4">2013 LP700-4</option>
						<option value="2015 LP750-4">2015 LP750-4</option>
					</select> <br> 请描述下故障信息：<br>
					<textarea rows="8" cols="49" name="gzms"></textarea>
					<br> 预约时间：<br><input type="text" name="yyrq"
						value="<%=str_date1%>">
					<br>
					<input type="submit" value="提交">
				</form>
			</div></div>
		</div>
	</div>
</body>
</html>