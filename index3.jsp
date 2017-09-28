<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>

<%	

	response.setContentType("text/html;charset=gbk");
	PrintWriter pw=response.getWriter();
	String s1=request.getParameter("username");
	String s2=request.getParameter("pwd");
	String s3=request.getParameter("name");
	String s4=request.getParameter("sex");
	String s5=request.getParameter("birth");
	String s6=request.getParameter("address");
	String s7=request.getParameter("post");
	String s8=request.getParameter("tel");
	String s9=request.getParameter("email");


	FileWriter fw=new FileWriter("C:\\J\\webapps\\bar2\\yjd1.txt",true);
	BufferedWriter bw2=new BufferedWriter(fw);
	bw2.write(s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+s8+" "+s9+" ");

	bw2.close();
	fw.close();

%>

<table>
<tr height="150"><td width="1450" align="center" bgcolor="#333333" ><font color="#FFFF00"><font size="+3">
小</font><font size="+2">型</font><font size="+3">酒</font><font size="+2">吧</font><font size="+3">在
</font><font size="+2">线</font><font size="+3">管</font><font size="+2">理</font><font size="+3">系
</font><font size="+2">统</font></font>
</td>
</tr>
</table>


<table  align="center" bgcolor="#252525" width="1330" height="10">
<tr height="10">

<td width="300"></td>
<td width="57"><a href="index.jsp"><font color="#FFFFFF">首页</font></a></td>
  <td width="90"><a href="jbxw.jsp"><font color="#FFFFFF">酒吧新闻</font></a></td>
<td width="90"><a href="jbjs.jsp"><font color="#FFFFFF">酒吧酒水</font></a></td>
<td width="90"><a href="jbxc.jsp"><font color="#FFFFFF">酒吧相册</font></a></td>
<td width="100"><a href="fk1.jsp"><font color="#FFFFFF">预定/付款</font></a></td>
<td width="100"><a href="wjmm.jsp"><font color="#FFFFFF">忘记密码</font></a></td>
<td width="150"><font color="#FFFFFF">欢迎您：<%=s1 %></font></td>
<td width="150"><font color="#FFFFFF"><a href="index.jsp"><font color="#FFFFFF">退出登录</font></a></font></td>
<td width="29"></font>
<td width="183"></td>

</tr>
</table>




<table>
 <tr height="350">
 	 <td width="65"></td>
    <td  width="800" align="center"><img src="image/01.jpg" width="800"  height="350"border="0" /></td>
	<td width="500">
	<table   border="1" align="center">
	<tr height="30">
	<td width="300"><font size="-1">昆明百余警察出动......</font></td>
	</tr>
	<tr height="30">
	<td  width="300"><font size="-1">女星杨幂与男友亲吻......</font></td>
	</tr>
	<tr height="30">
	<td  width="300"><font size="-1">东方神起出演歌手.....</font></td>
	</tr>
	<tr heheight="30">
	<td  width="300"><font size="-1">酒吧员工煮水导致火灾.....</font></td>
	</tr>
	<tr height="30">
	<td  width="300"><font size="-1">天津出现爆炸！......</font></td>
	</tr>
		<tr height="30">
	<td  width="300"><font size="-1">北京出现暴雨！......</font></td>
	</tr>
		<tr height="30">
	<td  width="300"><font size="-1">上海出现大风！......</font></td>
	</tr>
		<tr heheight="30">
	<td  width="300"><font size="-1">酒吧服务员因玩手机而.....</font></td>
	</tr>
	<tr height="30">
	<td  width="300"><font size="-1">天津街道现不明白衣人......</font></td>
	</tr>
		<tr height="30">
	<td  width="300"><font size="-1">北京游客乱扔垃圾......</font></td>
	</tr>
		<tr height="30">
	<td  width="300"><font size="-1">重庆大学学生办校级大赛......</font></td>
	</tr>
	</table>	</td>
  </tr>
</table>

<table>
 <tr height="100">
 	 <td width="300"></td>
    <td  width="800" align="center"><img src="image/2008315124145514_2.jpg" width="1200"  height="100"border="0" /></td>
	<td width="300"></td>
  </tr>
</table>

<table>
<tr  height="40"><td width="1450" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;小型酒吧在线管理系统 .燕江弟，崔勇，王昊洋，周敏泽 版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>
</html>