
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discover SJSU</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String user=request.getParameter("userid"); 
session.putValue("userid", user); 
String pwd=request.getParameter("comment"); 
try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"ayesha","1234"); 
Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select * from subway where userid='"+user+"' and comment='"+pwd+"'"); 
try{
rs.next();
if(rs.getString("password").equals(pwd)&&rs.getString("userid").equals(user)) 
{ 
out.println("Commented"); 
} 
else{
out.println("Invalid comment or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}


%>
<a href="subway.jsp">Go back</a>
</body>
</html>