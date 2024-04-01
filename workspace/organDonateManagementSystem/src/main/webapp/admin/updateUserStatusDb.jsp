<%@page import="organDonor.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    
 String id=request.getParameter("id");
 String status=request.getParameter("status");
 String usertype=request.getParameter("userType");
 
if(User.updateStatus(id, status, usertype))
{
	%>
	
Details are updated successfully

	<%
	
}
else
{%>

unable to updated details

<%
	
}
%>