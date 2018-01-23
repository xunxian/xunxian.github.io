<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- 基于jQuery菜单功能 -->
<script type="text/javascript" src="js/menu/jquery.min.js"></script>
<script type="text/javascript" src="js/menu/nav.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>车型报价</title>
<style>
.xxp {
	width: 788px;
	margin: 0px auto;
	padding: 10px;
	height: 400px;
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="main_con">
			<div class="xxp">
				<h2>车型报价</h2>
				<div class="interact"></div>
				<div class="rside">

					<div style="border:1px solid blue;">
						<div style="width: 780px; margin: 0px 2px 0px 3px;">
							<div class="rmcx">关注车型</div>
							<div class="rmcx">&nbsp&nbsp&nbsp&nbsp厂商报价</div>
							<div class="rmcx">报价日期</div>
						</div>
						<table width="785px" height="400px" border="0px;">
							<tr>
								<td width="82px"><img src="images/index_main/car_4.jpg" /></td>
								<td width="210px"><a href="lp750_4_sv_2015.jsp">2015款Aventador
										LP750-4 SV</a></td>
								<td><center>
										<span class="price">801.15万</span>无优惠
									</center></td>
								<td><center>2015-3-27</center></td>
							</tr>
							<tr>
								<td width="82px"><img src="images/index_main/car_1.jpg" /></td>
								<td width="210px"><a href="lp610_4_2014.jsp">2014款Huracan
										LP610-4</a></td>
								<td><center>
										<span class="price">429.09万</span>无优惠
									</center></td>
								<td><center>2015-3-27</center></td>
							</tr>
							<tr>
								<td width="82px"><img src="images/index_main/car_2.jpg" /></td>
								<td width="210px"><a href="lp700_4_2011.jsp">2011款Aventador
										LP700-4</a></td>
								<td><center>
										<span class="price">648.80万</span>无优惠
									</center></td>
								<td><center>2015-3-27</center></td>
							</tr>
							<tr>
								<td width="82px"><img src="images/index_main/car_3.jpg" /></td>
								<td width="210px"><a href="lp700_4_roadster_2013.jsp">2013款Aventador
										LP700-4 Roadster</a></td>
								<td><center>
										<span class="price">738.88万</span>无优惠
									</center></td>
								<td><center>2015-3-27</center></td>
							</tr>
						</table>
					</div>

				</div>
			</div>
		</div>
		<br> <br> <br>
		<div class="interact"></div>
		<div id="footer">
			<div style="text-align: center;">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>