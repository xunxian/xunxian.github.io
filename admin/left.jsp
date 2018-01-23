<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(Image/left_Img/left.gif);
}
-->
</style>
<link href="CSS_Style/left.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
	function tupian(idt) {
		var nametu = "xiaotu" + idt;
		var tp = document.getElementById(nametu);
		tp.src = "Image/left_Img/ico05.gif";//图片ico04为白色的正方形

		for ( var i = 1; i < 30; i++) {

			var nametu2 = "xiaotu" + i;
			if (i != idt * 1) {
				var tp2 = document.getElementById('xiaotu' + i);
				if (tp2 != undefined) {
					tp2.src = "Image/left_Img/ico06.gif";
				}//图片ico06为蓝色的正方形
			}
		}
	}

	function list(idstr) {
		var name1 = "subtree" + idstr;
		var name2 = "img" + idstr;
		var objectobj = document.all(name1);
		var imgobj = document.all(name2);

		//alert(imgobj);

		if (objectobj.style.display == "none") {
			for ( var i = 1; i < 10; i++) {
				var name3 = "img" + i;
				var name = "subtree" + i;
				var o = document.all(name);
				if (o != undefined) {
					o.style.display = "none";
					var image = document.all(name3);
					//alert(image);
					image.src = "Image/left_Img/ico04.gif";
				}
			}
			objectobj.style.display = "";
			imgobj.src = "Image/left_Img/ico03.gif";
		} else {
			objectobj.style.display = "none";
			imgobj.src = "Image/left_Img/ico04.gif";
		}
	}
</SCRIPT>

<body>
	<table width="198" border="0" cellpadding="0" cellspacing="0"
		class="left-table01">
		<tr>
			<TD>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="207" height="55" background="Image/left_Img/nav01.gif">
							<table width="90%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="25%" rowspan="2"><img
										src="Image/left_Img/ico02.jpg" width="45" height="45" /></td>
									<td width="75%" height="22" class="left-font01">&nbsp您好，<span
										class="left-font02"><%=session.getAttribute("ad_name")%></span></td>
								</tr>
								<tr>
									<td height="22" class="left-font01">&nbsp[&nbsp;<a
										href="Login.html" target="_top" class="left-font01">退出</a>&nbsp;]
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!--  系统用户管理    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img8" id="img8"
										src="Image/left_Img/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('8');">系统用户管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu20"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="root/see_admin.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('20');">查看管理员</a></td>
					</tr>
					<tr>
						<td width="9%" height=21><img id="xiaotu22"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td width="91"><a href="root/add_admin.jsp" target="mainFrame"
							class="left-font03" onclick="tupian(22);">添加管理员</a></td>
					</tr>
				</table> <!--  客户信息管理  -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img7" id="img7"
										src="Image/left_Img/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('7');">客户信息管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree7" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu17"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="user/see_user.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('17');">客户信息</a></td>
					</tr>
				</table> <!--  客户预约管理    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img1" id="img1"
										src="Image/left_Img/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('1');">客户预约管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree1" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu1"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="yuyue/see_yuyue.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('1');">查看预约</a></td>
					</tr>
				</table> <!-- 库存信息管理 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%"><img name="img5" id="img5"
										src="Image/left_Img/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('5');">库存信息管理</a></td>
								</tr>
							</table></td>
					</tr>
				</table>

				<table id="subtree5" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu13"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="peijian/see_peijian.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('13');">查看库存</a></td>
					</tr>
					<tr>
						<td height="20"><img id="xiaotu14"
							src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
						<td><a href="peijian/add_peijian.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('14');">添加配件</a></td>
					</tr>
				</table> 
				<!-- 客户留言管理 -->
				 <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        	<tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="Image/left_Img/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('6');">留言信息管理</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="Image/left_Img/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="liuyan/see_liuyan.jsp" target="mainFrame" class="left-font03" onClick="tupian('15');">编辑留言</a></td>
        </tr>
      </table>
			</TD>
		</tr>

	</table>
</body>
</html>
