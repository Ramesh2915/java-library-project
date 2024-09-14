<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account Page</title>
<style>
    body {
        background-color: #f0f0f5;
        font-family: Arial, sans-serif;
    }
    .header {
        text-align: center;
        padding: 5px;
        background-color: #4CAF50;
        color: white;
    }
    .logout {
        display: grid;
        grid-gap: 10px;
        grid-template-columns: repeat(4, 1fr);
        background-color: #333;
        padding: 20px;
        border-radius: 8px;
    }
    .atwo {
        background-color: #ffffff;  
        border: 1px solid #cc;  
        padding: 5px;  
        font-size: 14px;  
        text-align: center;  
        border-radius: 1px;
  
    }
    .atwo:hover {
        background-color: #f0f0f5;
    }
    .atwo a {
        text-decoration: none;
        color: #4CAF50;
        font-weight: bold;
    }
    .welcome-message {
        text-align: center;
        font-size: 18px;
        margin-top: 20px;
        color: #333;
    }
    .logout-button {
        display: block;
        margin: 20px auto;
        padding: 10px 20px;
        background-color: #f44336;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    .logout-button:hover {
        background-color: #d32f2f;
    }
</style>
</head>
<body>
    <div class="header">
        <h1>User Account Page</h1>
    </div>
    <div class="welcome-message">
        <%
            String user = (String) session.getAttribute("user");
            out.println("Welcome <b>" + user + "</b>");
        %>
    </div>
    <button class="logout-button" onclick="window.location='Login.jsp'">Logout</button>
    <div class="logout">
        <div class="atwo">
            <a href="AccountDetails.jsp">Account Details</a> 
        </div>
        <div class="atwo">
            <a href="Search.jsp">Search / Issue</a>
        </div>
        <div class="atwo">
            <a href="Return.jsp">Return</a>
        </div>
        <div class="atwo">
            <a href="History.jsp">History</a>
        </div>
    </div>
</body>
</html>
