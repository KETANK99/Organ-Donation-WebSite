<%@page import="java.sql.ResultSet"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<jsp:include page="head.jsp"></jsp:include>
    <body class="dark-sidenav">
      <jsp:include page="sidebar.jsp"></jsp:include>
	   <div class="page-wrapper">
	   <jsp:include page="topbar.jsp"></jsp:include>
	   
	   <%
	   Dbconnection.getCon();
	   PreparedStatement ps=null;
	   ResultSet rs=null;
	   %>
	      <div class="row my-5">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title"><%=(request.getParameter("name")!=null)?request.getParameter("name"):""%>Donor Donated Organ List</h4>
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive mb-0" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped mb-0">
                                                <thead>
                                                <tr>
                                                	<th>Sr.No</th>
                                                    <th>Donor Name</th>
                                                    <th data-priority="1">Mobile No</th>
                                                    <th data-priority="2">Email Id</th>
                                                    <th data-priority="1">Date of Birth</th> 
                                                    <th data-priority="1">Age of Donor</th> 
                                                    <th data-priority="1">Gender</th> 
                                                    <th data-priority="1">Guardian Name</th> 
                                                    <th data-priority="1">Guardian Contact</th> 
                                                    <th data-priority="1">Donated Organ</th>                                                     
                                                    <th data-priority="1">Cause of Death</th> 
                             
                                                   
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                String query=(request.getParameter("id")==null)?"select d.*, do.gaurdian_name, do.gaurdian_contact, do.cause_of_death, o.organ_name,FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age from donation as do inner join donor as d on do.donor_id=d.donor_id inner join organ as o on do.organ_id=o.organ_id and d.status='active'"
                                                		:"select d.*, do.gaurdian_name, do.gaurdian_contact, do.cause_of_death, o.organ_name,FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age from donation as do inner join donor as d on do.donor_id=d.donor_id inner join organ as o on do.organ_id=o.organ_id where do.organ_id=? and d.status='active'";
                                                ps=Dbconnection.con.prepareStatement(query);
                                              	
                                                if(request.getParameter("id")!=null)
                                              	{
                                              		ps.setString(1,request.getParameter("id"));
                                              	}
                                    
                                                rs=ps.executeQuery();
                                              	int i=0;
                                              	while(rs.next()){
                                                %>
                                                 <tr>
                                                    <td><%=++i%></th>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td data-priority="1"><%=rs.getString(6) %></td>
                                                    <td data-priority="2"><%=rs.getString(5) %></td>
                                                    <td data-priority="1"><%=rs.getString(4)%></td> 
                                                    <td data-priority="1"><%=rs.getString("Age")%></td> 
                                                    <td data-priority="1">
                                                    	<p><%=rs.getString(10)%></p>
                                                    	
                                                    </td> 
                                                    <td data-priority="1">
                                                    	<p><%=rs.getString(12)%></p>
                                                    	
                                                    </td> 
                                                    <td data-priority="1"><%=rs.getString(13)%></td> 
                                                    <td data-priority="1"><%=rs.getString(15)%></td> 
                                                    <td data-priority="1"><%=rs.getString(14)%></td> 
                                                </tr>
                                                <%} %>
                                             </tbody>
                                            </table>
                                        </div>    
                                    </div>    
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div> <!-- end col -->
                    </div> <!-- end row -->
	   
	   <jsp:include page="footer.jsp"></jsp:include>
	   </div>
	   <jsp:include page="assetLinks.jsp"></jsp:include>
	</body>
</html>