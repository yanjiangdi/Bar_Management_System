<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
<tr height="400">
<td  bgcolor="#CCCCCC"width="240" align="center">
<a  style="text-decoration:none" href="index.jsp">��վ��ҳ</a>
<br /><br />
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
<a  style="text-decoration:none" href="gly.jsp">����Ա��Ϣ</a>
<br /><br />
<a   style="text-decoration:none"href="bfsjk.jsp">���ݿⱸ��/��ԭ</a></td>
<td  width="1200" align="center">
<form action="ws1.jsp" method="post">

<table width="960" border="0" align="center" cellpadding="0" cellspacing="0"  bgcolor="#D1E9EF">
  <tr>
    <td height="28" colspan="2" align="center" ><p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>��վ��������</p>
    <p>&nbsp;</p></td>
	    <td width="261" height="36" align="right"></td>
  </tr>
  <tr>
    <td width="253" height="36" align="right">��&nbsp;վ&nbsp;��&nbsp;�ƣ�</td>
    <td width="446">&nbsp;
      <input name="sitename" type="text" value="a_little_admin_bar" /></td>
  </tr>
  <tr>
    <td height="34" align="right">�ؼ������ã�</td>
    <td width="446">&nbsp;
      <input name="keywords" type="text" value="admin_system" /></td>
  </tr>
  <tr>
    <td height="24" align="right">��&nbsp;վ&nbsp;��&nbsp;��&nbsp;��</td>
    <td width="446">&nbsp;
      <input name="description" type="text" value="admin_system" /></td>
  </tr>
  <tr>
    <td height="25" align="right">��վ��ծ�ˣ�</td>
    <td width="446">&nbsp;
      <input name="author" type="text" value="yanjiangdi" /></td>
  </tr>
  <tr>
    <td height="26" align="right">��վE-mail��&nbsp;</td>
    <td> &nbsp;
      <input name="email" type="text" value="2229153423@qq.com" /></td>
  </tr>
  <tr>
    <td height="38" align="right">��&nbsp;ϵ&nbsp;��&nbsp;����&nbsp;</td>
    <td>&nbsp; <input name="tel" type="text" class="input2" value="15702494595" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center">&nbsp;&nbsp;<input name="sub" type="submit" value="�ύ" />      &nbsp;&nbsp;</td>
  </tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
