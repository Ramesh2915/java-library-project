<%@page import="com.java.lib.LibraryDaoImpl"%>
<%@page import="com.java.lib.LibUsers"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    body {
        background-image:url("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg");
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
        width: 400px;
         background: linear-gradient(135deg, #00c6ff, #0072ff);
     
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
        border-radius: 8px;
    }
    table {
        width: 100%;
        text-align: left;
    }
    th, td {
        padding: 10px;
        color: #333;
    }
    th {
        text-align: left;
    }
    h3 {
        color: #4CAF50;
        text-align: center;
        margin-bottom: 20px;
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
</style>
</head>
<body>
	<form method="post" action="AddUser.jsp">
		<center>
			User Name : 
			<input type="text" name="userName" /> <br/><br/>
			Password : 
			<input type="password" name="passWord" /> <br/><br/>
			ReType Password : 
			<input type="password" name="retypePassword" /> <br/><br/>
			<input type="submit" value="Add User" />
		</center>
	</form>
	<%
		if (request.getParameter("userName")!=null && request.getParameter("passWord")!=null) {
			String pwd = request.getParameter("passWord").trim();
			String retype = request.getParameter("retypePassword").trim();
			if (pwd.equals(retype)) {
				LibUsers users = new LibUsers();
				users.setUserName(request.getParameter("userName"));
				users.setPassWord(request.getParameter("passWord"));
				LibraryDaoImpl impl = new LibraryDaoImpl();
				out.println(impl.createUser(users));
		%>
			<jsp:forward page="Login.jsp" />
		<%
			}
		}
	%>
</body>
</html>