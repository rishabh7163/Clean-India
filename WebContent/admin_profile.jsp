<%@page import="com.exampl.model.User"%>
<%@ page session="false"%>
<%@page session="false" %>
<head>
<link rel="stylesheet" href="css/form.css">
</head>
<%HttpSession hs= request.getSession(false);
if(hs!=null){
User u=(User)hs.getAttribute("user");
%>
	<div align="center" id="form">

<table>
<tr><th colspan="2">Admin Details</th></tr>
<tr><td colspan="2"><input type="text" placeholder="Full Name" required="required" id="name" value="<%=u.getName()%>"></td></tr>
<tr><td colspan="2"><input type="text" placeholder="User Name" required="required" id="uname" value="<%=u.getUname()%>"></td></tr>
<tr><td colspan="2"><input type="password" placeholder="Password" required="required" id="pass" value="<%=u.getPass()%>"></td></tr>
<tr><td colspan="2"><input type="tel" placeholder="Mobile" required="required" id="mobile" value="<%=u.getMobile()%>"></td></tr>
<tr><td colspan="2"><input type="text" placeholder="Email Id" required="required" id="email" value="<%=u.getEmail()%>"></td></tr>
<tr><td align="center"><input type="button" value="Submit" id="reg"></td><td align="center"><input type="reset" value="Reset" id="reset"></td></tr>
</table>
<div id="result" style="color: white;">

</div>
</div>
<%}%>
