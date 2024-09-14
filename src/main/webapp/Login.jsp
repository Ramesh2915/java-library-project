<%@page import="com.java.lib.LibraryDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    body {
         background-image:url("https://4kwallpapers.com/images/walls/thumbs_2t/10874.jpg");
         background-size:cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
    }
    form {
        border: 1px solid #ccc;
        height: auto;
        width: 350px;
        background-color: #ffffff;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        text-align: center;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 10px;
        cursor: pointer;
        border-radius: 4px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .message {
        color: red;
        margin-top: 10px;
    }
</style>
</head>
<body>
	
	<form method="get" action="Login.jsp">
		<center>
			User Name : 
			<input type="text" name="user" /> <br/><br/>
			Password : 
			<input type="password" name="pwd" /> <Br/><br/>
			<input type="submit" value="Login" />
		</center>
	</form>
	<%
		if (request.getParameter("user")!=null && request.getParameter("pwd")!=null) {
			String user = request.getParameter("user").trim();
			String pwd = request.getParameter("pwd").trim();
			LibraryDaoImpl impl = new LibraryDaoImpl();
			int count = impl.authenticateUser(user, pwd);
			if (count==1) {
				session.setAttribute("user", user);
	%>
		<jsp:forward page="Menu.jsp" />
	<%
			} else {
				out.println("Invalid Credentials...");
			}
		}
	%>
</body>
</html>