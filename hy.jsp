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
<td  width="1200" align="center" bgcolor="#D1E9EF">


<div align="center"><strong>��Ա����</strong></div>
<br><hr>
<table width="800" border="1" align="center" >
<tr>
    <td>�û�ID</td>
    <td>�û���</td>
    <td>�Ա�</td>
    <td>��ַ</td>
    <td>Email</td>
    <td>�绰</td>
</tr>
<%
try
{
//����������
String driverName="com.mysql.jdbc.Driver";
//�����ַ���

//������������
Class.forName(driverName).newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","123456");
//DriverManager.getConnection(ConnStr)
//����ִ�����
String sql="select * from bar.myusers";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //һҳ��ʾ�ļ�¼��
int intRowCount;      //��¼������
int intPageCount;     //��ҳ��
int intPage;         //����ʾ��ҳ��
String strPage;
int i;
//����һҳ��ʾ�ļ�¼��
intPageSize=2;
//ȡ�ô���ʾ��ҳ��
strPage=request.getParameter("page");
//�ж�strPage�Ƿ����null,����ǣ���ʾ��һҳ����
if(strPage==null)
{
intPage=1;
}else{
//���ַ���ת��Ϊ����
intPage=java.lang.Integer.parseInt(strPage);
}
if(intPage<1)
{
intPage=1;
}
//��ȡ��¼����
rs.last();
intRowCount=rs.getRow();
//�������ҳ��
intPageCount=(intRowCount+intPageSize-1)/intPageSize;
//��������ʾ��ҳ��
if(intPage>intPageCount) intPage=intPageCount;
if(intPageCount>0)
{
//����¼ָ�붨λ������ʾҳ�ĵ�һ����¼��
rs.absolute((intPage-1)*intPageSize+1);
}
//����������ʾ����
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
//�ر����ӡ��ͷ���Դ
rs.close();
stmt.close();
conn.close();
%>
</br></ br>
<p align="center">

<%

out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+(intPage-1)+"'>"+"["+"ǰһҳ"+"]"+"</a>"+"&nbsp;&nbsp;");
for(int j=1;j<=intPageCount;j++)
{

out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+j+"'>"+"["+j+"]"+"</a>");
}
out.print("&nbsp;&nbsp;<a href='hy.jsp?page="+(intPage+1)+"'>"+"["+"��һҳ"+"]"+"</a>"+"&nbsp;&nbsp;");
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