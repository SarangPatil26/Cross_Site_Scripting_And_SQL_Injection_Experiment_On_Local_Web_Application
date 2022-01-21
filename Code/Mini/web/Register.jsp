<%-- 
    Document   : newjsp2
    Created on : Oct 2, 2019, 2:26:50 PM
    Author     : Mayura Rane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html> 
    <style> 
* {
  box-sizing: border-box;
}
div {
    width: 25%;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}
input[type=submit]:hover {
  background-color: #45a049;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}
a1 {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

</style>
    <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Register Page</title> 
    </head> 
    <body> 
        
    <center>
        <h1>Register Page</h1>
        <div> 
        <form action="RegisterCheck.jsp" method="get"> 
            <br>Username:<input type="text" name="username"> <br>
            <br>Surname<input type="text" name="surname"> <br>
            <br>Password:<input type="password" name="password"> <br>
            <br>EmailID<input type="text" name="email"> <br>
            <br>Confirm Password:<input type="password" name="cpass"> <br>
            <br><input type="submit" value="Register"> <br>
        </form>  
            <a href="newjsp2.jsp">Login</a>
        </div>
        
    </center> 
</body> 
</html>
