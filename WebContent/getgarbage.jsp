<%@page import="com.exampl.model.User"%>
<%@page session="false" %>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/getgarbage.css">
</head>
<body>

<% for (int i=0;i<=5;i++){%>
<div class="card" text-align="center">
  <img src="image/user.jpg" alt="John" style="width:100px">
   <h1>User 1</h1>
     <table id="1" align="center">
      <tr>
    	<th>Location</th> 
    	<th>Problem</th>
    	<th>Condition</th>
  	 </tr>
    <tr>
        <td>Ghaziabad</td>
   		<td>Sewer</td>
   		<td>Pending</td>
  </tr>
  
</table>
  
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
 </div>
 <p><button>Contact</button></p>
</div>
<% }%>
<div class="center" align="center">
  <div class="pagination" align="center">
    <a href="#">&laquo;</a>
    <a href="#"class="active">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">&raquo;</a>
  </div>
  </div>

</body>
</html>
