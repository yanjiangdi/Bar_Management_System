<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" errorPage="" %>
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
<td  bgcolor="#CCCCCC"width="200" align="center">
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


<%
	response.setContentType("text/html;charset=gbk");
	PrintWriter pw=response.getWriter();
	
	FileReader fr=new FileReader("C:\\bar.sql");
	BufferedReader bw=new BufferedReader(fr);
	String s=bw.readLine();
	

	
	FileWriter fw=new FileWriter("D:\\���ݿ�\\bar.sql");
	BufferedWriter bw2=new BufferedWriter(fw);
	bw2.write(s);
	
	bw.close();
	bw2.close();
	fr.close();
	fw.close();
%>
<table>
<tr height="30">
<td  width="300"></td>
<td width="600" align="center"><font color="#993399">���ݿⱸ�ݳɹ��������ļ���  D:\���ݿ�\bar.sql</font></a></td>
</tr>
<tr height="30">
<td  width="300"></td>
<td width="600" align="center"> <a href="bfsjk.jsp">����</a></td>
<td  width="300"></td>
</tr>
</table>
</td>
</tr>
</table>

</body>
</html>