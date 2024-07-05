<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("images/ball7.jpg");
background-size:cover;
padding:10 10px;
background-repeat:no-repeat;

}
.form-container{
padding: 20px;
box-shadow: 0 0 10px black;
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
<%
List<String>li=(List<String>)request.getAttribute("errors");
if(li!=null){
	Iterator<String> itr=li.iterator();
	%>
	<ul>
	<%
	while(itr.hasNext()){%>
	<li><%= itr.next()  %>
	</li>
	<% } %>
	</ul>
<% } %>
<center>
<div class="form-container">
<form action="RegisterCont" method="post">
Name<input type="text" name='name'/><br><br>
DOB<input type="date" name='date'/><br><br>
Gender<input type="radio" name='gender' value='male'/>Male<br><br>
       <input type="radio" name='gender' value='female'/>Female<br><br>
Contact<input type="text" name='contact'/><br><br>
Experience Level<select name="experiencelevel" multiple>
<option value="">Select Any One</option>
<option value="Beginner">Beginner</option>
<option value="Intermediate">Intermediate</option>
<option value="Advanced">Advanced</option>
</select><br><br>
Position or Role<input type="text" name='position'/><br><br>
Address<input type="text" name="address" /><br><br>

Email<input type="email" name="email"/><br><br>
<button type="submit">Register</button>
</form>
</div>
</center>
</body>
</html>