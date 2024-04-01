<%@page import="organDonor.transplant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if(transplant.addDetails(request))
{
	%>
	<script>
alert("Details are added successfully");
location.href="MyAccount.jsp";
</script>	
	<%
	
}
else
{%>
<script>
alert("unable to add details");
location.href="MyAccount.jsp";
</script>
<%
	
}
%>