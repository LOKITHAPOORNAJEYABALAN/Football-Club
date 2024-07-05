<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("images/audience.jpg");
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
ArrayList<String> list=(ArrayList<String>)request.getAttribute("errors");
if(list!=null){
	Iterator<String> itr=list.iterator();
	%>
	<ul>
	<%
	while(itr.hasNext()){%>
	<li><%= itr.next() %> </li>
<% } %>	
	</ul>
<% } %>
</span>
<center><div class="form-container">
<h2> Add Player Details</h2>
<form action='AddPlayerCont' method='post' enctype='multipart/form-data'>
Name<input type='text' name='name'> <br/><br/>
Age<input type='integer' name='age' value='0'> <br><br>
Profile<input type='file' name='profile'> <br><br>
<input type='submit' value='Submit'> <br><br>
</form>
</div>
</center>
</body>
</html>