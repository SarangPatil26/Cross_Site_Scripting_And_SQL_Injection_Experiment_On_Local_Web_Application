<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>JSP Page</title> 
</head> 
<body> 
    <% 
        String email=request.getParameter("email");
        String password=request.getParameter("password"); 
        try{  
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");  
        Statement st=con.createStatement();
        //PreparedStatement stmt=con.prepareStatement("select * from login where EmailID='"+email+"' and Password='"+password+";");
	//int count = stmt.executeUpdate();
        ResultSet zoeken = st.executeQuery("select * from login where EmailID='"+email+"' and Password='"+password+"'");
        boolean val = zoeken.next();
        
	if(val)
	{ 
            response.sendRedirect("Home.jsp"); 
            
	}
        }
       
        catch(Exception e){ 
                        response.sendRedirect("Error.jsp"); 
        }  
     
  
        
        
    %> 
</body> 
</html>

