<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>�ޱ����ĵ�</title>
</head>

<body>

<% 
String u=(String)session.getAttribute("uname");
%>


<%

	String s1=request.getParameter("mony");
	String s2=request.getParameter("birth");
	String s3=request.getParameter("email");
	String s4=request.getParameter("qu");
	String s5=request.getParameter("un");
	String s6=request.getParameter("tel");
	String s7=request.getParameter("an");
	
	

%>
<table bgcolor="#00CC00">
<tr>
<td width="200" height="150"><img src="image/logo.jpg" /></td>
<td width="1200"  height="150"><font size="+2"  color="#FFFFFF">С�;ư����߹���ϵͳ��̨ </font><font size="+1" color="#FFFFFF">Mini-line-management system ��ӭ���ĵ�½��admin
 </font><font color="#993399">|<a href="gly.jsp">���������Ϣ </a>|<a  href="login1.jsp">�˳���¼</a></font></td>

</tr>
</table>
<table>
<tr height="310">
<td  bgcolor="#CCCCCC"width="191"align="center">
<a  style="text-decoration:none" href="index.jsp">��վ��ҳ</a>
<br />
<br />
<a   style="text-decoration:none"href="article1.jsp">���¹���</a>
<br /><br />
<a  style="text-decoration:none" href="yg.jsp">Ա������</a>
<br /><br />
<a  style="text-decoration:none" href="hy.jsp">��Ա����</a>
<br /><br />
<a    style="text-decoration:none"href="kc.jsp">������</a>
<br /><br />
<a  style="text-decoration:none" href="dd.jsp">��������</a>

<br /><br />
<a   style="text-decoration:none"href="ws.jsp">��վ����</a>
<br /><br />
<a  style="text-decoration:none" href="">����Ա��Ϣ</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">���ݿⱸ��/��ԭ</a></td><td  width="17" align="center">
</td>
<td width="1010" align="center">
<table >
<tr height="310">
<td height="393">


<form action="xg.jsp">
	<p align="center">
    	<font size="-1">�û�����&nbsp;&nbsp;</font> <font color="#0033FF">admin</font>    </p>
	<p align="center">
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="-1">�˻���</font><input type="text" width="200" value=<%=s1 %>>
    </p>
    <p align="center">
   	 &nbsp;�Ա�<font color="#09F1D1">��</font><input type="radio" name="�Ա�" width="20">---<font color="#0C03E3">Ů</font><input type="radio" name="�Ա�">
    </p>
    <p align="center"> 
    	&nbsp;&nbsp;&nbsp;&nbsp;���գ�<input type="date"  height="30" width="200" value=<%=s2 %>>
    </p>
    <p align="center">
    	<font><font >&nbsp;&nbsp;&nbsp;&nbsp; Email��</font></font><input type="text" height="30" width="200" value=<%=s3 %>>
    </p>
    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ȫ���⣺</font></font><input type="text" width="200" height="30" value=<%=s4 %>>
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;������</font></font><input type="text" width="200" height="30" value=<%=s5 %>>
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;�绰��</font></font><input type="text" width="200" height="30" value=<%=s6 %>>
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;�𰸣�</font></font><input type="text" width="200" height="30" value=<%=s7 %>>
    </p>
    <p align="center">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" color="#333333">
        <input name="submit" type="submit"  value="�޸�" />
        </font>&nbsp;&nbsp; <font size="+1" color="#333333">
		<input type="reset" value="����"></font>	</p>
</form></td>
</tr>
</table>


</td>

</tr>
</table>
</body>
</html>