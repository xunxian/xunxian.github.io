<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册会员</title>
<style type="text/css">
.main_l {
	width: 1000px;
	margin: 0 auto;
}

.top_l {
	width: 1150px;
	margin: 0 auto;
}

.mid_l {
	width: 800px;
	height: 550px;
	/* border: 2px solid blue; */
	margin: 0 auto;
}

body {
	font: 14px/28px "微软雅黑";
}

.contact *:focus {
	outline: none;
}

.contact {
	width: 700px;
	height: auto;
	background: #f6f6f6;
	margin: 40px auto;
	padding: 10px;
}

.contact ul {
	width: 650px;
	margin: 0 auto;
}

.contact ul li {
	border-bottom: 1px solid #dfdfdf;
	list-style: none;
	padding: 12px;
}

.contact ul li label {
	width: 120px;
	display: inline-block;
	float: left;
}

.contact ul li input[type=text],.contact ul li input[type=password] {
	width: 220px;
	height: 25px;
	border: 1px solid #aaa;
	padding: 3px 8px;
	border-radius: 5px;
}

.contact ul li input:focus {
	border-color: #c00;
}

.contact ul li input[type=text] {
	transition: padding .25s;
	-o-transition: padding .25s;
	-moz-transition: padding .25s;
	-webkit-transition: padding .25s;
}

.contact ul li input[type=password] {
	transition: padding .25s;
	-o-transition: padding .25s;
	-moz-transition: padding .25s;
	-webkit-transition: padding .25s;
}

.contact ul li input:focus {
	padding-right: 70px;
}

.btn {
	position: relative;
	left: 300px;
}

.tips {
	color: rgba(0, 0, 0, 0.5);
	padding-left: 10px;
}

.tips_true,.tips_false {
	padding-left: 10px;
}

.tips_true {
	color: green;
}

.tips_false {
	color: red;
}
</style>

</head>
<body>
	<div class="container">
		<div class="top_l">
			<img src="images/logo.gif">
		</div>
		<span style="float:right;margin:0 150px 0 0;"><a href="personal.jsp">>>回到个人中心</a></span>
		<div class="main_l">

			<div class="mid_l">
				<div class="contact">
					<form name="form1" method="post" action="handle/change_pass_do.jsp">
						<ul>
							<li><label>新密码：</label> <input type="password"
								name="password1" placeholder="请输入你的密码" required /><span
								class="tips" id="divpassword1">密码必须由字母和数字组成</span></li>
							<li><label>重复密码：</label> <input type="password"
								name="password2" placeholder="请再次输入你的密码" required /><span
								class="tips" id="divpassword1">密码必须由字母和数字组成</span></li>
						</ul>
						<b class="btn"><input type="submit" value="提交" /> <input
							type="reset" value="取消" /></b>
					</form>

				</div>

			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
</body>
</html>