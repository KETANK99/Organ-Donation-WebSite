<%@page import="organDonor.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String Username=request.getParameter("username");
String password=request.getParameter("password");
String accountType=request.getParameter("AccountType");
if(Username.equals("admin") && password.equals("admin@123"))
{
	session.setAttribute("userType","admin");
	session.setAttribute("userId",0);
%>
<script>
alert("Admin login Successfull");
location.href="index.jsp";
</script>
<%
}
else
{
	%>
	<script>
	alert("Unalbe to login with given credential, please try again later");
	location.href="auth-login.html";
	</script>
	<%
	
}

%>