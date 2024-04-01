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
                                    <h4 class="card-title">Donor List</h4>
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
                                                    <th data-priority="3">Blood Group</th>
                                                    <th data-priority="1">Date of Birth</th> 
                                                    <th data-priority="1">Age</th> 
                                                    <th data-priority="1">Status</th> 
                                                    <th data-priority="1">
                                                    Action
                                                    </th> 
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                PreparedStatement ps=Dbconnection.con.prepareStatement("select b.BloodGroupName,d.*,FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age from donor as d inner join bloodgroups as b on d.blood_category=b.id");
                                              	ResultSet rs=ps.executeQuery();
                                              	int i=0;
                                              	while(rs.next()){
                                                %>
                                                 <tr>
                                                    <td><%=++i%></th>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td data-priority="1"><%=rs.getString(7) %></td>
                                                    <td data-priority="2"><%=rs.getString(6) %></td>
                                                    <td data-priority="3"><%=rs.getString(1) %></td>
                                                    <td data-priority="1"><%=rs.getString(5)%></td> 
                                                    <td data-priority="1"><%=rs.getString("Age")%></td> 
                                                    <td data-priority="1">
                                                    <span class="badge shadow bg-<%=(rs.getString("status").equals("Active"))?"success":"danger"%>">
                                                     <%=rs.getString("status")%>
                                                    </span>
                                                    </td> 
                                                    <td class="text-right">
                                                    <select onchange="updatStatus(<%=rs.getString(2) %>,this.value)">
                                                    	<option value="Active" <%=(rs.getString("status").equals("Active")?"selected":"")%>>Active</option>
                                                    	<option value="Inactive" <%=(rs.getString("status").equals("Inactive")?"selected":"")%>>Inactive</option>                                                    	
                                                    </select>
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
	   <script>
	   	function updatStatus(id,a)
	   	{
	   		
			 $.ajax({
			        type: "POST",
			        url: "updateUserStatusDb.jsp",
			        data:"id="+id+"&status="+a+"&userType=d", // serializes the form's elements.
			        success: function(data)
			        {
			         alert(data.trim());
			         location.reload();
			         
			        }
			    });
	   	}
	   </script>
	</body>
</html>