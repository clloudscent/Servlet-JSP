<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
    String id = "airplane";
    String pw = "airplane1234";
    String url  = "jdbc:mysql://localhost:3306/practice";
    String sql = "";
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, id, pw);
%>