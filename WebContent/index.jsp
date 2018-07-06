<%@page session="false"%>
<head>
<link rel="stylesheet" href="css/content.css">
</head>
<%@include file="head.jsp"%>

<div id="content">
	<%
		String opt = request.getParameter("opt");
		
	if (opt != null) {

			int choice = Integer.parseInt(opt);
			switch (choice) {
			case 1:
	%><jsp:include page="register.jsp"></jsp:include>
	<%
		break;
			case 2:
	%><jsp:include page="login.jsp"></jsp:include>
	<%
		break;
			case 3:
	%><jsp:include page="aboutus.jsp"></jsp:include>
	<%
		break;
			case 4:
	%><jsp:include page="contact.jsp"></jsp:include>
	<%
		break;
			case 5:
	%><jsp:include page="service.jsp"></jsp:include>
	<%
		break;
			case 6:
	%><jsp:include page="admin_profile.jsp"></jsp:include>
	<%
		break;
			case 7:
	%><jsp:include page="getgarbage.jsp"></jsp:include>
	<%
		break;
			case 8:
	%><jsp:include page="feedback.jsp"></jsp:include>
	<%
		break;
			case 9:
				HttpSession hs1 = request.getSession(false);
				if (hs1 != null) {
					hs1.removeAttribute("user");
					hs1.invalidate();
					response.setHeader("refresh", "0");
				}
				break;
			}
		} else {
	%>
	<%@include file="content.jsp"%>

	<%
		}
	
	%>
</div>

<%@include file="foot.jsp"%>