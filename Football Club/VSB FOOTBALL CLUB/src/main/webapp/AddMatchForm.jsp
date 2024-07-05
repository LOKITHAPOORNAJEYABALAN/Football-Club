<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-image:url("images/foot2.jpg");
background-size:cover;
padding:10 10px;
background-repeat:no-repeat;
background-position:center center;
min-height:100vh;
}
.form-container{
padding: 20px;
box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
width: 300px;
}
form{
display:flex;
flex-direction:column;
font-size:21px;
font-weight:bold;
}
input{
 margin-bottom: 15px;
    padding: 8px;
    border: 1px solid black;
    border-radius: 5px;
}
button{
padding: 10px;
    background-color:red;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
button:hover {
    background-color:blue;
}
.error {
  color: yellow;
  font-size: smaller;
}
</style>
</head>
<body>
<span class="error"><% 
List<String>li=(List<String>)request.getAttribute("errors") ;
if(li!=null){
	Iterator<String> itr=li.iterator();
	%>
	<ul>
	<%
	while(itr.hasNext()){%>
	<li><%= itr.next() %> </li>
<% } %>	
	</ul>
<% } %>
</span>
<center>
<div class="form-container">
<form action="AddMatchCont" method="post">
Title<input type="text" name='title'/><br><br>
Place<input type="text" name='place'/><br><br>
Match Date<input type='datetime' name='date'/><br><br>
<input type='submit' value='submit'>
</form>
</div>
</center>
</body>
</html>