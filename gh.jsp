<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body bgcolor="#6F86E1">
<table>
<tr height="150"><td width="1450" align="center" bgcolor="#333333" ><font color="#FFFF00"><font size="+3">小</font><font size="+2">型</font><font size="+3">酒</font><font size="+2">吧</font><font size="+3">在</font><font size="+2">线</font><font size="+3">管</font><font size="+2">理</font><font size="+3">系</font><font size="+2">统</font></font>
</td>
</tr>
</table>


<table  align="center" bgcolor="#252525" width="1330" height="10" >
<tr height="10">

<td width="150"></td>
<td width="57"><a href="index.jsp"><font color="#FFFFFF">首页</font></a></td>
  <td width="90"><a href="jbxw.jsp"><font color="#FFFFFF">酒吧新闻</font></a></td>
<td width="90"><a href="jbjs.jsp"><font color="#FFFFFF">酒吧酒水</font></a></td>
<td width="90"><a href="jbxc.jsp"><font color="#FFFFFF">酒吧相册</font></a></td>
<td width="100"><a href="fk1.jsp"><font color="#FFFFFF">预定/付款</font></a></td>
<td width="100"><a href="wjmm.jsp"><font color="#FFFFFF">忘记密码</font></a></td>
</tr></table>



<div align="center"><strong>酒吧活动！</strong></div>
<br><hr>
<table width="800" border="1" align="center" >
<tr>
    <td>活动ID</td>
    <td>时间</td>
    <td>内容</td>
    <td>用户ID</td>
</tr>
<%
try
{
//驱动程序名
String driverName="com.mysql.jdbc.Driver";
//连接字符串

//加载驱动程序
Class.forName(driverName).newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","123456");
//DriverManager.getConnection(ConnStr)
//创建执行语句
String sql="select * from bar.music";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //一页显示的记录数
int intRowCount;      //记录的总数
int intPageCount;     //总页数
int intPage;         //待显示的页码
String strPage;
int i;
//设置一页显示的记录数
intPageSize=3;
//取得待显示的页码
strPage=request.getParameter("page");
//判断strPage是否等于null,如果是，显示第一页数据
if(strPage==null)
{
intPage=1;
}else{
//将字符串转换为整型
intPage=java.lang.Integer.parseInt(strPage);
}
if(intPage<1)
{
intPage=1;
}
//获取记录总数
rs.last();
intRowCount=rs.getRow();
//计算机总页数
intPageCount=(intRowCount+intPageSize-1)/intPageSize;
//调整待显示的页码
if(intPage>intPageCount) intPage=intPageCount;
if(intPageCount>0)
{
//将记录指针定位到待显示页的第一条记录上
rs.absolute((intPage-1)*intPageSize+1);
}
//下面用于显示数据
i=0;
while(i<intPageSize && !rs.isAfterLast())
{
%>
<tr>
    <td><%=rs.getString("musicid")%></td>
    <td><%=rs.getString("musicname")%></td>
    <td><%=rs.getString("musicurl")%></td>
    <td><%=rs.getString("userid")%></td>
</tr>
<%
rs.next();
i++;
}
//关闭连接、释放资源
rs.close();
stmt.close();
conn.close();
%>
</br></ br>
<p align="center">

<%

out.print("&nbsp;&nbsp;<a href='gh.jsp?page="+(intPage-1)+"'>"+"["+"前一页"+"]"+"</a>"+"&nbsp;&nbsp;");
for(int j=1;j<=intPageCount;j++)
{

out.print("&nbsp;&nbsp;<a href='gh.jsp?page="+j+"'>"+"["+j+"]"+"</a>");
}
out.print("&nbsp;&nbsp;<a href='gh.jsp?page="+(intPage+1)+"'>"+"["+"后一页"+"]"+"</a>"+"&nbsp;&nbsp;");
%>

</p>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</table>


<p align="center"><a href="article1.jsp">返回</a></p>

<br /><br />

<table>
<tr  height="40"><td width="1450" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;小型酒吧在线管理系统 .燕江弟，崔勇，王昊洋，周敏泽 版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>

</html>