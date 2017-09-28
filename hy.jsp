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
<td  width="1200" align="center" bgcolor="#D1E9EF">


<div align="center"><strong>会员管理</strong></div>
<br><hr>
<table width="800" border="1" align="center" >
<tr>
    <td>用户ID</td>
    <td>用户名</td>
    <td>性别</td>
    <td>地址</td>
    <td>Email</td>
    <td>电话</td>
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
String sql="select * from bar.myusers";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //一页显示的记录数
int intRowCount;      //记录的总数
int intPageCount;     //总页数
int intPage;         //待显示的页码
String strPage;
int i;
//设置一页显示的记录数
intPageSize=2;
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
    <td><%=rs.getString("myuserid")%></td>
    <td><%=rs.getString("myuname")%></td>
    <td><%=rs.getString("sex")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("tel")%></td>
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

out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+(intPage-1)+"'>"+"["+"前一页"+"]"+"</a>"+"&nbsp;&nbsp;");
for(int j=1;j<=intPageCount;j++)
{

out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+j+"'>"+"["+j+"]"+"</a>");
}
out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+(intPage+1)+"'>"+"["+"后一页"+"]"+"</a>"+"&nbsp;&nbsp;");
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




<br /><br />

<table>
</td>
</tr>
</table>
</body>
</html>