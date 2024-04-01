<%@page import="organDonor.Donation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if(Donation.add(request,session.getAttribute("userId").toString()))
{
%>
<script>
alert("details added successfull");
location.href="MyAccount.jsp";
</script>
<%}
else{
	%>
	<script>
alert("details not added successfull");
location.href="MyAccount.jsp";
</script>
<%}
%>