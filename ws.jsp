<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
<tr height="400">
<td  bgcolor="#CCCCCC"width="240" align="center">
<a  style="text-decoration:none" href="index.jsp">网站首页</a>
<br /><br />
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
<a  style="text-decoration:none" href="gly.jsp">管理员信息</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">数据库备份/还原</a></td>
<td  width="1200" align="center">
<form action="ws1.jsp" method="post">

<table width="960" border="0" align="center" cellpadding="0" cellspacing="0"  bgcolor="#D1E9EF">
  <tr>
    <td height="28" colspan="2" align="center" ><p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>网站参数设置</p>
    <p>&nbsp;</p></td>
	    <td width="261" height="36" align="right"></td>
  </tr>
  <tr>
    <td width="253" height="36" align="right">网&nbsp;站&nbsp;名&nbsp;称：</td>
    <td width="446">&nbsp;
      <input name="sitename" type="text" value="a_little_admin_bar" /></td>
  </tr>
  <tr>
    <td height="34" align="right">关键字设置：</td>
    <td width="446">&nbsp;
      <input name="keywords" type="text" value="admin_system" /></td>
  </tr>
  <tr>
    <td height="24" align="right">网&nbsp;站&nbsp;描&nbsp;述&nbsp;：</td>
    <td width="446">&nbsp;
      <input name="description" type="text" value="admin_system" /></td>
  </tr>
  <tr>
    <td height="25" align="right">网站负债人：</td>
    <td width="446">&nbsp;
      <input name="author" type="text" value="yanjiangdi" /></td>
  </tr>
  <tr>
    <td height="26" align="right">网站E-mail：&nbsp;</td>
    <td> &nbsp;
      <input name="email" type="text" value="2229153423@qq.com" /></td>
  </tr>
  <tr>
    <td height="38" align="right">联&nbsp;系&nbsp;电&nbsp;话：&nbsp;</td>
    <td>&nbsp; <input name="tel" type="text" class="input2" value="15702494595" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center">&nbsp;&nbsp;<input name="sub" type="submit" value="提交" />      &nbsp;&nbsp;</td>
  </tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
