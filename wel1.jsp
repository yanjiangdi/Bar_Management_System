<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>

<%
	String u=(String)session.getAttribute("uname");
%>
<table bgcolor="#00CC00">
<tr>
<td width="200" height="100"><img src="image/logo.jpg" /></td>
<td width="1200"  height="100"><font size="+2"  color="#FFFFFF">小型酒吧在线管理系统后台 </font><font size="+1" color="#FFFFFF">
Mini-line-management system 欢迎您的登陆：<%=u%>
 </font><font color="#993399">|<a href="gly.jsp">浏览个人信息 </a>|<a  href="login1.jsp">退出登录</a></font></td>

</tr>
</table>
<table align="center" bgcolor="#CCCCCC">
<tr height="500">
<td width="500" height="503" align="left"><img src="image/01.jpg" width="400" height="500" /></td>
<td width="450" align="center">
<a  style="text-decoration:none" href="index.jsp">网站首页</a>
<br /><br />
<a   style="text-decoration:none"href="article1.jsp">文章管理</a>
<br /><br />
<a  style="text-decoration:none" href="yg.jsp">员工管理</a>
<br /><br />
<a  style="text-decoration:none" href="hy.jsp">会员管理</a>
<br />
<br />
<a    style="text-decoration:none"href="kc.jsp">库存管理</a>
<br /><br />
<a  style="text-decoration:none" href="dd.jsp">订单管理</a>
<br /><br />
 

<a   style="text-decoration:none"href="ws.jsp">网站设置</a>
<br /><br />
<a  style="text-decoration:none" href="gly.jsp">管理员信息</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">数据库备份/还原</a></td>

<td width="500" align="right"><img src="image/01.jpg" width="400" height="500" /></td>
</table>
<table>
<tr  height="30"><td width="1450" align="center" bgcolor="#666666"><font size="-1">COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;小型酒吧在线管理系统 .燕江弟，崔勇，王昊洋，周敏泽 版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>
</html>
