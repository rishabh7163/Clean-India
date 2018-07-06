<%@page import="com.exampl.model.User"%>
<%@page session="false" %>
<head>
<link rel="stylesheet" href="css/head.css">
</head>
<div id="head">

	<div id="logo">
		<div id="logoleft">
			<img src="image/logo.png" width="50px" height="50px">
		</div>
		<div id="logoright">
			<h1>CI</h1>
		</div>
	</div>

	<div id="nav">
		<%
		HttpSession hs=request.getSession(false);
		if(hs!=null){%>
			<ul>
			<li><a href="index.jsp?opt=6">Profile</a></li>
			<li><a href="index.jsp?opt=7">Get Garbage</a></li>
			<li><a href="index.jsp?opt=8">Feedback</a></li>
			<li><a href="index.jsp?opt=9">Logout</a></li>
		</ul>
		<%}else{%>
			<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="index.jsp?opt=1">Register</a></li>
			<li><a href="index.jsp?opt=2">Login</a></li>
			<li><a href="index.jsp?opt=3">About Us</a></li>
			<li><a href="index.jsp?opt=4">Contact Us</a></li>
			<li><a href="index.jsp?opt=5">Services</a></li>
		</ul>
		<%}%> 
	</div>
</div>


