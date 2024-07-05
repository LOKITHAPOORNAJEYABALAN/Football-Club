<%@page import="com.model.MatchDao" %>
<%@page import="java.sql.ResultSet" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("images/foot2.jpg");
background-size:cover;
background-repeat:no-repeat;
}
table,th,tr{
border:1px solid;
}
h2{
color:MediumSeaGreen;
}
</style>
</head>
<body>
<center>
<h2>All Available Match Details are ---</h2>
<table>
<tr><th>SL NO</th>
<th>Title</th>
<th>Place</th>
<th>Match Date</th>
<% ResultSet rs=new MatchDao().retrieveMatch();
while(rs.next()){
%>
<tr><th><%= rs.getInt(1) %></th>
<th><%= rs.getString(2) %></th>
<th><%= rs.getString(3) %></th>
<th><%= rs.getString(4) %></th>
<% } %>
</tr></table>
</body>
</center>
</html>



