<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
    
    <link href="<%=path %>/css/login.css" rel="stylesheet" type="text/css" />
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
    <script language="javascript">
		 function check1()
		 {                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入账号");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		 }
		
		 function callback(data)
		 {
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		 }
    </script>
</head>
  
<body>
    <div class="login">
        <div class="loginbox">
            <!-- <div class="login_top" style="font-size: 28px;">000</div> -->
            <div class="loginmain">
                <form name="ThisForm" action="" method="post">
	                <div class="loginname">
	                                                         账号：<input id="txt_loginName" name="userName" type="text" class="">
	                </div>
	                <div class="loginpwd" style="margin-top: 10px;">
	                                                        密码：<input id="txt_pwd" name="userPw" type="password" class="">
	                </div>
	                <div class="loginyzm" style="margin-top: 10px;display: none">
	                                                        类型：
	                  <select name="userType" style="WIDTH: 158px;margin-left: 23px;">
	                      <option value="0">0</option>
	                      <option value="2">2</option>
	                  </select>
	                </div>
	                <!-- <div class="loginyzm">1111：<input id="txt_yzm" type="text" class=""></div> -->
	                <%-- <div class="yzm"><img src="<%=path %>/images/yzm.jpg" alt="" /></div> --%>
	                <input id="btn_login" type="button" value="" class="loginbtn" onclick="check1()"/>
	                <input id="btn_reset" type="button" value="" class="resetbtn"/>
	                <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
