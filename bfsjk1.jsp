<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" errorPage="" %>
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
<td  bgcolor="#CCCCCC"width="200" align="center">
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


<%
	response.setContentType("text/html;charset=gbk");
	PrintWriter pw=response.getWriter();
	
	FileReader fr=new FileReader("C:\\bar.sql");
	BufferedReader bw=new BufferedReader(fr);
	String s=bw.readLine();
	

	
	FileWriter fw=new FileWriter("D:\\数据库\\bar.sql");
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
<td width="600" align="center"><font color="#993399">数据库备份成功！备份文件在  D:\数据库\bar.sql</font></a></td>
</tr>
<tr height="30">
<td  width="300"></td>
<td width="600" align="center"> <a href="bfsjk.jsp">返回</a></td>
<td  width="300"></td>
</tr>
</table>
</td>
</tr>
</table>

</body>
</html>