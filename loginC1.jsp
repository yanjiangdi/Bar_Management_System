<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>

<% 
	String u=request.getParameter("uname");
	
	session.setAttribute("uname",u);
	
	String p=request.getParameter("pwd");
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","111111");
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery("select spwd from bar.users where uname='"+u+" '");
	if(rs.next()){
		if(rs.getString(1).equals(p)){
				response.sendRedirect("index1.jsp");
			}
			else{
				response.sendRedirect("index.jsp");
			}
	}else{
			response.sendRedirect("index.jsp");
		}
		
	
	
	
	
	
%>


</body>
</html>