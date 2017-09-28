<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body>

<br><hr>
<table width="800" border="0" align="center" >
<tr>

    <td><font size="+2">目录</font></td>

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
String sql="select * from bar.talk";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //一页显示的记录数
int intRowCount;      //记录的总数
int intPageCount;     //总页数
int intPage;         //待显示的页码
String strPage;
int i;
//设置一页显示的记录数
intPageSize=10;
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

    <td><%=rs.getString("content")%></td>


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

</body>
</html>