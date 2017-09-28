<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码</title>
<style type="text/css" >
body {font-family:Georgia, "Times New Roman", Times, serif; font-size:14px}
.input1{width:100px; height:25px; background-color: #09F; color:#FFF ; border:1px}
.input2{width:200px; height:25px; background-color: #FFC}
</style>
</head>
<body bgcolor="#F4FFFE">
<br>
<br><br><br><br><p align="center">找回密码</p><br><br><br><br><br>
<p align="center">
<form name="form1" action="mm2.jsp" method="post" target="_self">
<font style="color:#F00; font-size:14px;">请输入您的用户名：</font>
<input name="UserName" type="text" class="input2">&nbsp;
<input name="sub" type="submit" class="input1" value="取回密码">
</p>
</form>
</body>
</html>
