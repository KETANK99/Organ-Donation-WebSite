<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Left Sidenav -->
        <div class="left-sidenav">
            <!-- LOGO -->
            <div class="brand">
                <a href="index.jsp" class="logo">
                 <h3><span class="text-white">Organ</span> <span class="text-primary"> Donation</span></h3>
                </a>
            </div>
            <%
            Dbconnection.getCon();
            PreparedStatement ps=null;
            ResultSet rs=null;
            %>
            <!--end logo-->
            <div class="menu-content h-100" data-simplebar>
                <ul class="metismenu left-sidenav-menu">
                    <li class="menu-label mt-0">Main</li>
                    <li>
                        <a href="index.jsp"> <i data-feather="home" class="align-self-center menu-icon"></i><span>Dashboard</span><span class="menu-arrow"></span></a>  
                    </li>
    
                    <li>
                        <a href="javascript: void(0);"><i data-feather="grid" class="align-self-center menu-icon"></i><span>Donor</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                           
                            <li class="nav-item"><a class="nav-link" href="donor.jsp"><i class="ti-control-record"></i>All Donors</a></li>
                            <li class="nav-item"><a class="nav-link" href="donationList.jsp"><i class="ti-control-record"></i>All Organ Donation list</a></li>
                         
                         	<%
                         	ps=Dbconnection.con.prepareStatement("select * from organ");
                         	rs=ps.executeQuery();
                         	while(rs.next())
                         	{%>
                            <li class="nav-item"><a class="nav-link" href="donationList.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>"><i class="ti-control-record"></i><%=rs.getString(2)%> Donor List</a></li>
                            <%} %>
                            
                        </ul>
                    </li> 
                    <li>
                        <a href="javascript: void(0);"><i data-feather="grid" class="align-self-center menu-icon"></i><span>Recipient's</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                           
                            <li class="nav-item"><a class="nav-link" href="recipient.jsp"><i class="ti-control-record"></i>All Recipient's</a></li>                           
                        </ul>
                    </li> 
                     <li>
                        <a href="javascript: void(0);"><i data-feather="grid" class="align-self-center menu-icon"></i><span>Transplantation</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                           
                            <li class="nav-item"><a class="nav-link" href="transplantation.jsp"><i class="ti-control-record"></i>All Transplantation</a></li>
                            <li class="nav-item"><a class="nav-link" href="transplantation.jsp?id=Pending"><i class="ti-control-record"></i>Pending Transplantation</a></li>
                            <li class="nav-item"><a class="nav-link" href="transplantation.jsp?id=Approved"><i class="ti-control-record"></i>Approved Transplantation</a></li>
                            <li class="nav-item"><a class="nav-link" href="transplantation.jsp?id=Rejected"><i class="ti-control-record"></i>Rejected Transplantation</a></li>
                        </ul>
                    </li> 
                </ul>
            </div>
        </div>
        <!-- end left-sidenav-->