<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.Dbconnection"%>
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
		PreparedStatement ps = null;
		ResultSet rs = null;
		%>
		<div class="page-content">
			<div class="container-fluid">
			<div class="row">
			<h3>Donated Organs info</h3>
			<%
			ps=Dbconnection.con.prepareStatement("select  do.organ_id, o.organ_name, count(do.organ_id) as count from donation do inner join organ as o on do.organ_id=o.organ_id inner join donor as d on do.donor_id=d.donor_id where d.status='active' group by do.organ_id");
			String[]  color={"primary","success","warning","info","danger"};
			rs=ps.executeQuery();
			int j=0;
			while(rs.next()){
				j=(j==4)?0:j+1;
			%>
			<div class="col p-2">
			
				<div class="card shadow py-0 px-0 text-center text-white bg-<%=color[j]%> text-white ">
				<a href="donationList.jsp?id=<%=rs.getString(1)%>">
					<p class="mt-3 mb-0 h4 text-white fw-bold"><%=rs.getString("organ_name") %></p>
					<i class="h4 fas fa-briefcase-medical text-white"></i>
					<p class="h3 text-bold text-white my-0 py-0"><%=rs.getString("count") %></p>
				</a>
				</div>
			</div>
			<%
			
			
			} %>
		</div>
			
				<!-- Page-Title -->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<div class="row align-items-center">
									<div class="col">
										<h4 class="card-title">Donor's List (Recently Added) </h4>
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</div>
							<!--end card-header-->
							<div class="card-body">
								<div class="table-responsive">
									<table class="table mb-0">
										<thead class="table-light">
											<tr>
												<th>Sr.No</th>
												<th>Donor Name</th>
												<th data-priority="1">Mobile No</th>
												<th data-priority="2">Email Id</th>
												<th data-priority="3">Blood Group</th>
												<th data-priority="1">Date of Birth</th>
												<th data-priority="1">Age</th>
											</tr>
											<!--end tr-->
										</thead>
										<tbody>
											<%
											ps = Dbconnection.con.prepareStatement(
													"select b.BloodGroupName,d.*,FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age from donor as d inner join bloodgroups as b on d.blood_category=b.id order by d.donor_id desc limit 10");
											rs = ps.executeQuery();
											int i = 0;
											while (rs.next()) {
											%>
											<tr>
												<td><%=++i%></td>
												<td><%=rs.getString(3)%></td>
												<td data-priority="1"><%=rs.getString(7)%></td>
												<td data-priority="2"><%=rs.getString(6)%></td>
												<td data-priority="3"><%=rs.getString(1)%></td>
												<td data-priority="1"><%=rs.getString(5)%></td>
												<td data-priority="1"><%=rs.getString("Age")%></td>
											</tr>
											<%
											}
											%>
										</tbody>
									</table>
									<!--end table-->
								</div>
								<!--end /div-->
							</div>
							<!--end card-body-->
						</div>
						<!--end card-->
					</div>
					<!--end col-->
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<div class="row align-items-center">
									<div class="col">
										<h4 class="card-title">Recipient's List (Recently Added)</h4>
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</div>
							<!--end card-header-->
							<div class="card-body">
								<div class="table-responsive">
									<table class="table mb-0">
										<thead class="table-light">
											<tr>
												<th>Sr.No</th>
												<th>Donor Name</th>
												<th data-priority="1">Mobile No</th>
												<th data-priority="2">Email Id</th>
												<th data-priority="3">Blood Group</th>
												<th data-priority="1">Date of Birth</th>
												<th data-priority="1">Age</th>
											</tr>
											<!--end tr-->
										</thead>
										<tbody>
											<%
											 ps=Dbconnection.con.prepareStatement("select b.BloodGroupName,r.*,FLOOR((TIMESTAMPDIFF(MONTH, r.Recipient_dob, CURDATE()) / 12)) as Age from Recipient as r inner join bloodgroups as b on r.blood_category=b.id order by r.Recipient_id desc limit 15");
                                            rs=ps.executeQuery();
                                          	 i=0;
											while (rs.next()) {
											%>
											<tr>
												<td><%=++i%>
												</th>
												<td><%=rs.getString(3)%></td>
												<td data-priority="1"><%=rs.getString(7)%></td>
												<td data-priority="2"><%=rs.getString(6)%></td>
												<td data-priority="3"><%=rs.getString(1)%></td>
												<td data-priority="1"><%=rs.getString(5)%></td>
												<td data-priority="1"><%=rs.getString("Age")%></td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
									<!--end table-->
								</div>
								<!--end /div-->
							</div>
							<!--end card-body-->
						</div>
						<!--end card-->
					</div>
					
					<!--end col-->
				</div>
				
			</div>
		</div>
	</div>









	<jsp:include page="footer.jsp"></jsp:include>
	
	<jsp:include page="assetLinks.jsp"></jsp:include>
</body>
</html>