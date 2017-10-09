<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	-->
	</style>
	</head>

	<body>
	<body bgcolor="D6EBBD">
		<table width="173" height="100%" border="0" cellpadding="0"
			cellspacing="0" style="table-layout:fixed;">
			<tr>
				<td
					style="width:4px; background-image:url(<%=path%>/img/main_16.gif)">
					&nbsp;
				</td>
				<td width="169" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="20" background="<%=path%>/img/main_11.gif">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/authorMana.action" target="I2" style="text-decoration:none">作者信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/author/authorAdd.jsp" target="I2" style="text-decoration:none">添加作者信息</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/goodsMana.action" target="I2" style="text-decoration:none">图书信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/goods/goodsAdd.jsp" target="I2" style="text-decoration:none">添加图书信息</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/goods/goodsSea.jsp" target="I2" style="text-decoration:none">图书信息查询</a>
									</td>
								</table>
							</td>
						</tr>
						
						<%-- <tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/111" target="I2" style="text-decoration:none">1111</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/111" target="I2" style="text-decoration:none">1111</a>
									</td>
								</table>
							</td>
						</tr> --%>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
