<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>

<%
	String u=(String)session.getAttribute("uname");
%>
<table bgcolor="#00CC00">
<tr>
<td width="200" height="100"><img src="image/logo.jpg" /></td>
<td width="1200"  height="100"><font size="+2"  color="#FFFFFF">С�;ư����߹���ϵͳ��̨ </font><font size="+1" color="#FFFFFF">
Mini-line-management system ��ӭ���ĵ�½��<%=u%>
 </font><font color="#993399">|<a href="gly.jsp">���������Ϣ </a>|<a  href="login1.jsp">�˳���¼</a></font></td>

</tr>
</table>
<table align="center" bgcolor="#CCCCCC">
<tr height="500">
<td width="500" height="503" align="left"><img src="image/01.jpg" width="400" height="500" /></td>
<td width="450" align="center">
<a  style="text-decoration:none" href="index.jsp">��վ��ҳ</a>
<br /><br />
<a   style="text-decoration:none"href="article1.jsp">���¹���</a>
<br /><br />
<a  style="text-decoration:none" href="yg.jsp">Ա������</a>
<br /><br />
<a  style="text-decoration:none" href="hy.jsp">��Ա����</a>
<br />
<br />
<a    style="text-decoration:none"href="kc.jsp">������</a>
<br /><br />
<a  style="text-decoration:none" href="dd.jsp">��������</a>
<br /><br />
 

<a   style="text-decoration:none"href="ws.jsp">��վ����</a>
<br /><br />
<a  style="text-decoration:none" href="gly.jsp">����Ա��Ϣ</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">���ݿⱸ��/��ԭ</a></td>

<td width="500" align="right"><img src="image/01.jpg" width="400" height="500" /></td>
</table>
<table>
<tr  height="30"><td width="1450" align="center" bgcolor="#666666"><font size="-1">COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;С�;ư����߹���ϵͳ .�཭�ܣ����£������������ ��Ȩ����&nbsp;&nbsp;&nbsp;&nbsp;��ֹ���������ƣ�Υ�߱ؾ���</font>
</td>
</tr>
</table>
</body>
</html>
