<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html> 
<style> 
* {
  box-sizing: border-box;
}
div {
  width: 50%;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}
</style>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> 
    </head> 
    <body> 
        <br><br><br><br><br>
        <center>
            <% session.removeAttribute("username");
            session.removeAttribute("password");
            session.invalidate(); %> 
        <div>
            <h1>Logout was done successfully.</h1> 
        </div>
    </center>
</body> 
</html>

