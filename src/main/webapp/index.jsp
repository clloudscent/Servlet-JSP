<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
    <% System.out.println("이거는 콘솔창에 출력되는 문구입니다."); %>
    <% int num = 7;
       num = num*2;
    %>
<br/>
    <%= num%>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>