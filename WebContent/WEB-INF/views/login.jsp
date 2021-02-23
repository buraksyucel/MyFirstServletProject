<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
		<form method="post">
	User Name: <input type="text" name="userName"  style="margin-left: 1%"/>
	</br>
	Password: <input type="password" name="password" style="margin-left: 1.6%"/>
	</br>
	<input type="submit" style="margin-left: 11.5%">
</form>

	<%
	String message = null;
	
	if (request.getParameter("Login") != null) {
		String uName = request.getParameter("userName");
		String uPass = request.getParameter("password");
		session.setAttribute("userName", "ishita");

		if (uName == "ishita" && uPass == "123") {
			response.sendRedirect("success.jsp");
		} else {
			message = "Please enter UserName and Password";
		}
	}
	
%>

<%
	if(message != null) {
		out.print(message);
	}
%>

	
</body>
</html>