<%@page import="organDonor.transplant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 
 if(transplant.UpdateStatus(request))
 {
	 %>
	 Details are added successfully
	 <%
 }
 else
 {
	 %>
	 unable to update request,please try again later 
	 <%
 }
 
 %>