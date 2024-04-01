<%@page import="organDonor.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String Username=request.getParameter("userName");
String password=request.getParameter("password");
String accountType=request.getParameter("AccountType");
if(User.login(Username,password,accountType))
{
	session.setAttribute("userType",accountType);
	session.setAttribute("userId",User.getId());
%>
<script>
alert("login Successfull");
location.href="MyAccount.jsp";
</script>
<%
}
else
{
	%>
	<script>
	alert("login UnSuccessfull");
	location.href="Login.jsp";
	</script>
	<%
	
}

%>