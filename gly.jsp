<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body>

<table bgcolor="#00CC00">
<tr>
<td width="200" height="150"><img src="image/logo.jpg" /></td>
<td width="1200"  height="150"><font size="+2"  color="#FFFFFF">小型酒吧在线管理系统后台 </font><font size="+1" color="#FFFFFF">Mini-line-management system 欢迎您的登陆：admin
 </font><font color="#993399">|<a href="gly.jsp">浏览个人信息 </a>|<a  href="login1.jsp">退出登录</a></font></td>

</tr>
</table>
<table>
<tr height="310">
<td  bgcolor="#CCCCCC"width="191"align="center">
<a  style="text-decoration:none" href="index.jsp">网站首页</a>
<br />
<br />
<a   style="text-decoration:none"href="article1.jsp">文章管理</a>
<br /><br />
<a  style="text-decoration:none" href="yg.jsp">员工管理</a>
<br /><br />
<a  style="text-decoration:none" href="hy.jsp">会员管理</a>
<br /><br />
<a    style="text-decoration:none"href="kc.jsp">库存管理</a>
<br /><br />
<a  style="text-decoration:none" href="dd.jsp">订单管理</a>

<br /><br />
<a   style="text-decoration:none"href="ws.jsp">网站设置</a>
<br /><br />
<a  style="text-decoration:none" href="">管理员信息</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">数据库备份/还原</a></td><td  width="17" align="center">
</td>
<td width="1010" align="center">
<table >
<tr height="310">
<td height="393">


<form action="xg.jsp">
	<p align="center">
    	<font size="-1">用户名：&nbsp;&nbsp;</font> <font color="#0033FF">admin</font>    </p>
	<p align="center">
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="-1">账户余额：</font><input  name="mony" type="text" width="200" value="1800.0">
    </p>
    <p align="center">
   	 &nbsp;性别：<font color="#09F1D1">男</font><input type="radio" name="sex" width="20">---<font color="#0C03E3">女</font><input type="radio" name="性别">
    </p>
    <p align="center"> 
    	&nbsp;&nbsp;&nbsp;&nbsp;生日：<input type="date" name="birth" height="30" width="200" value="650106">
    </p>
    <p align="center">
    	<font><font >&nbsp;&nbsp;&nbsp;&nbsp; Email：</font></font><input type="text" name="email" height="30" width="200" value="2229153423@qq.com">
    </p>
    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;安全问题：</font></font><input name="qu" type="text" width="200" height="30" value="admin">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;姓名：</font></font><input type="text" name="un" width="200" height="30" value="yanjiangdi">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;电话：</font></font><input name="tel" type="text" width="200" height="30" value="15702494595">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;答案：</font></font><input  name="an" type="text" width="200" height="30" value="yes">
    </p>
    <p align="center">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" color="#333333">
        <input name="submit" type="submit"  value="修改" />
        </font>&nbsp;&nbsp; <font size="+1" color="#333333">
		<input type="reset" value="重置"></font>	</p>
</form></td>
</tr>
</table>


</td>

</tr>
</table>
</body>
</html>