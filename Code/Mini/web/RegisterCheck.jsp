<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page import = "javax.servlet.http.*,javax.servlet.*" %>
<html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>JSP Page</title> 
</head> 
<body> 
    <% 
        String username=request.getParameter("username");
        String surname=request.getParameter("surname");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String cpass=request.getParameter("cpass");
        try
        {  
            int n = password.length(); 
            boolean hasLower = false, hasUpper = false; 
            boolean hasDigit = false, specialChar = false; 
            char[] sta = password.toCharArray();
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini","root","");  
        PreparedStatement p=con.prepareStatement("insert into login values (?,?,?,?,?)");
	p.setString(3,email);
	p.setString(4,password);
	p.setString(1, username);
	p.setString(2, surname);
	p.setString(5,cpass);
	p.executeUpdate();
        for (char output : sta) 
                {
                    if(output>='a' && output<='z') 
                        hasLower = true; 
                    if(output>='A' && output<='Z') 
                        hasUpper = true; 
                    if (output>=0) 
                        hasDigit = true; 
                    if (output== '@'||output=='<'||output=='>'||output=='-'||output=='_') 
                        specialChar = true; 
                }
        if(!password.equals(cpass))
            out.println("Password not equal to Confirm Password");
        if (hasLower && hasUpper && hasDigit && specialChar && (n >= 8)) 
                    response.sendRedirect("newjsp2.jsp");  
	else
             response.sendRedirect("Error.jsp"); 
	}
       
        catch(Exception e){ 
            response.sendRedirect("Error.jsp");
        }
        
        
    %> 
</body> 
</html>

