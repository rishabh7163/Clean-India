<%@page session="false" %>
<head>
<link rel="stylesheet" href="css/form.css">
</head>
<div align="center" id="form">
<form action="usercontroller?opt=2" method="post">
<table>
<tr><th colspan="2">Admin Login Details</th></tr>
<tr><td align="center" colspan="2"><img src="image/police.png" width="150" height="100"></td></tr>
<tr><td colspan="2"><input type="text" placeholder="User Name" required="required" name="uname"></td></tr>
<tr><td colspan="2"><input type="password" placeholder="Password" required="required" name="pass"></td></tr>
<tr><td align="center"><input type="submit" value="Login" id="login"></td></tr>
</table>
</form>

</div>
