<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function authorDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/authorDel.action?id="+id;
               }
           }
           
           function authorAdd()
           {
                 var url="<%=path %>/admin/author/authorAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="11" topmargin="11" background='<%=path %>/img/allbg.gif'>
			<table width="60%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" >
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="10%">序号</td>
					<td width="20%">姓名</td>
					<td width="20%">年龄</td>
					<td width="20%">国家</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.authorList}" var="author" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${sta.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${author.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${author.age}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${author.country}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="authorDel(${author.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			<br/>
			<input type="button" value="添加作者" style="width: 120px;" onclick="authorAdd()" />
	</body>
</html>
