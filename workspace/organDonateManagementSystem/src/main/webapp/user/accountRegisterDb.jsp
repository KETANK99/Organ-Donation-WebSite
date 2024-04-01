
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="organDonor.User"%>
<%@page import="organDonor.path"%>
<%@page import="organDonor.customeMethods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
customeMethods.createTempDirectory(path.profilePathtemp);
int maxsize=100000*1024; 
MultipartRequest m=new MultipartRequest(request,User.getTempProfilePic(),maxsize);
User user=new User();
if(user.addUser(m))
{
	%>
	<script>
	alert("Account Created successfully");
	location.href="Login.jsp";
	</script>
	
	<% 
}
else
{
%>
<script>
	alert("Unable to create account, please try again");
	location.href="createAccount.jsp";
	</script>
<% 
}
%>
