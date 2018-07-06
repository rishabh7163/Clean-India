<%@page session="false" %>
<head>
<link rel="stylesheet" href="css/form.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/insert.js"></script>
</head>
<div align="center" id="form">

<table>
<tr><th colspan="2">Register Details</th></tr>
<tr><td colspan="2"><input type="text" placeholder="Full Name" required="required" id="name"></td></tr>
<tr><td colspan="2"><input type="text" placeholder="User Name" required="required" id="uname"></td></tr>
<tr><td colspan="2"><input type="password" placeholder="Password" required="required" id="pass"></td></tr>
<tr><td colspan="2"><input type="tel" placeholder="Mobile" required="required" id="mobile"></td></tr>
<tr><td colspan="2"><input type="text" placeholder="Email Id" required="required" id="email"></td></tr>
<tr><td align="center"><input type="button" value="Submit" id="reg"></td><td align="center"><input type="reset" value="Reset" id="reset"></td></tr>
</table>
<div id="result" style="color: white;">

</div>
</div>
