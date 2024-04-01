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
	   %>
	 
	      <div class="row my-5">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Transplantation List</h4>
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive mb-0" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped mb-0">
                                                <thead>
                                                <tr>
                                                	<th>Sr.No</th>
                                                    <th>Recipient Name</th>
                                                    <th data-priority="1">Contact No</th>
                                                    <th>Donor Name</th>
                                                    <th data-priority="1">Contact No</th>
                                                    <th>Guardian Name</th>
                                                    <th data-priority="1">Contact No</th>
                                                    <th>Transplantation Location</th>
                                                    <th>Transplantation date</th>
                                                    <th>Transplantation status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                String query=(request.getParameter("id")==null)?"select r.Recipient_name,r.Recipient_contact,d.donor_name,d.donor_contact,do.gaurdian_name,do.gaurdian_contact,t.transplantation_location,t.transplantation_date,t.status from transplantation as t inner join donation as do on t.donation_id=do.donation_id inner join donor as d on d.donor_id=do.donor_id inner join organ as o on o.organ_id=do.organ_id inner join recipient as r on t.recipient_id=r.Recipient_id"
                                                		:"select r.Recipient_name,r.Recipient_contact,d.donor_name,d.donor_contact,do.gaurdian_name,do.gaurdian_contact,t.transplantation_location,t.transplantation_date,t.status from transplantation as t inner join donation as do on t.donation_id=do.donation_id inner join donor as d on d.donor_id=do.donor_id inner join organ as o on o.organ_id=do.organ_id inner join recipient as r on t.recipient_id=r.Recipient_id where t.status=?";
                                               
                                                PreparedStatement ps=Dbconnection.con.prepareStatement(query);
                                                if (request.getParameter("id")!=null)
                                                ps.setString(1,request.getParameter("id"));
                                              	ResultSet rs=ps.executeQuery();
                                              	int i=0;
                                              	while(rs.next()){
                                                %>
                                                 <tr>
                                                    <td><%=++i%></th>
                                                    <td><%=rs.getString("Recipient_name")%></td>
                                                    <td><%=rs.getString("Recipient_contact")%></td>
                                                    <td><%=rs.getString("donor_name")%></td>
                                                    <td><%=rs.getString("donor_contact")%></td>
                                                    <td><%=rs.getString("gaurdian_name")%></td>
                                                    <td><%=rs.getString("gaurdian_contact")%></td>
                                                    <td><%=rs.getString("transplantation_location")%></td>
                                                    <td><%=rs.getString("transplantation_date")%></td>
                                                    <td>
                                                    
                                                    <span class="badge shadow bg-<%=(rs.getString("status")!=null && rs.getString("status").equals("Pending"))?"warning":
                                                    		(rs.getString("status")!=null && rs.getString("status").equals("Approved"))?"success":
                                                    		(rs.getString("status")!=null && rs.getString("status").equals("Rejected"))?"danger":""%>"><%=rs.getString("status")%></span>
                                                    
                                                    
                                                    </td>
                                                   
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