<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>�ޱ����ĵ�</title>
</head>

<body>

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
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="-1">�˻���</font><input  name="mony" type="text" width="200" value="1800.0">
    </p>
    <p align="center">
   	 &nbsp;�Ա�<font color="#09F1D1">��</font><input type="radio" name="sex" width="20">---<font color="#0C03E3">Ů</font><input type="radio" name="�Ա�">
    </p>
    <p align="center"> 
    	&nbsp;&nbsp;&nbsp;&nbsp;���գ�<input type="date" name="birth" height="30" width="200" value="650106">
    </p>
    <p align="center">
    	<font><font >&nbsp;&nbsp;&nbsp;&nbsp; Email��</font></font><input type="text" name="email" height="30" width="200" value="2229153423@qq.com">
    </p>
    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ȫ���⣺</font></font><input name="qu" type="text" width="200" height="30" value="admin">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;������</font></font><input type="text" name="un" width="200" height="30" value="yanjiangdi">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;�绰��</font></font><input name="tel" type="text" width="200" height="30" value="15702494595">
    </p>
	    <p align="center">
    	<font><font>&nbsp;&nbsp;&nbsp;&nbsp;�𰸣�</font></font><input  name="an" type="text" width="200" height="30" value="yes">
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