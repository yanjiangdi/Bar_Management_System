<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>

<% 
	String u=request.getParameter("userName");
	
	session.setAttribute("uname",u);
	
	String p=request.getParameter("passWord");
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","123456");
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery("select spwd from bar.users where uname='"+u+" '");
	if(rs.next()){
		if(rs.getString(1).equals(p)){
				response.sendRedirect("wel1.jsp");
			}
			else{
				response.sendRedirect("login1.jsp");
			}
	}else{
			response.sendRedirect("login1.jsp");
		}
		
	
	
	
	
	
%>


</body>
</html>
