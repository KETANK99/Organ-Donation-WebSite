<%@page import="java.sql.ResultSet"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%Dbconnection.getCon(); %>

<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:33:48 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- preloader start here -->
	<jsp:include page="preloader.jsp"></jsp:include>
	<!-- preloader ending here -->


	<!-- ========== Mobile-nav section start here ========== -->
	<jsp:include page="mobileMenu.jsp"></jsp:include>
	<!-- ========== Mobile-nav section end here ========== -->


	<!-- ==========Header Section Starts Here========== -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- ==========Header Section Ends Here========== -->


	<!-- ==========Feature Section Start Here========== -->
	<section class="feature-section padding-tb bg-color">
		<div class="container-fluid px-5">
			<div class="feature-section-wrapper">

				<div class="section-content">
					<div class="row">
							<div class="col-2">
								<div class="list-group" id="list-tab" role="tablist">
								
									<%if(session.getAttribute("userType").toString().toLowerCase().equals("d")){ %>
									<a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#donate-organ" role="tab" aria-controls="home">Donate Organ</a> 
									<a class="list-group-item list-group-item-action " id="myDonation-list" data-toggle="list" href="#mydonation"role="tab" aria-controls="profile">My Donation</a>
									
									<%} %>
									
									<a class="list-group-item list-group-item-action " id="list-profile-list" data-toggle="list" href="#requestOrgan"role="tab" aria-controls="profile">Find Donor</a>
									<a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#my-requests" role="tab" aria-controls="settings">
									 <%=session.getAttribute("userType").toString().toLowerCase().equals("d")?"Recipient's Request":"My Request Status" %>
									     
									</a>
									<a class="list-group-item list-group-item-action " id="list-profile-list" href="<%=session.getAttribute("userType").toString().toLowerCase().equals("d")?"donorProfile.jsp":"reciepentProfile.jsp"%>?id=<%=session.getAttribute("userId")%>" aria-controls="profile">Profile</a>
									
								</div>
							</div>
							<div class="col-10">
								<div class="tab-content" id="nav-tabContent">
									<div class="tab-pane fade show <%=(session.getAttribute("userType").toString().toLowerCase().equals("d"))?"active":""%>" id="donate-organ"
										role="tabpanel" aria-labelledby="list-home-list">
										
												<form action="donateOrganDb.jsp" method="post">
											  <div class="form-group row">
											    <label for="inputEmail3" class="col-sm-2 col-form-label">Organs</label>
											   
											    <div class="col-sm-10">
											     <%
											     PreparedStatement ps=Dbconnection.con.prepareStatement("select * from organ");
											     ResultSet rs=ps.executeQuery();
											     while(rs.next())
											     {
											     %>
											     <div class="form-check w-50">
												  	<input class="form-check-input" type="checkbox" name="organs" id="inlineCheckbox1" value="<%=rs.getString(1)%>">
												 	 <label class="form-check-label" for="inlineCheckbox1"><%=rs.getString(2)%></label>
												</div>
											     <%
											     }
												     %>
												    </div>
												  </div>
												  <div class="form-group row">
												    <label for="inputPassword3" class="col-sm-3 col-form-label">Cause of Death</label>
												    <div class="col-sm-8">
												      <input type="text" class="form-control" id="inputPassword3"  name="causeofDeath" placeholder="Cause of Death">
												    </div>
												  </div>
												  <div class="form-group row">
												    <label for="inputPassword3" class="col-sm-3 col-form-label">Date of Death</label>
												    <div class="col-sm-8">
												      <input type="date" class="form-control" id="inputPassword3"  name="date" placeholder="Cause of Death">
												    </div>
												  </div>
												  <div class="form-group row">
												    <label for="inputPassword3" class="col-sm-3 col-form-label">Guardian Name</label>
												    <div class="col-sm-8">
												      <input type="text" class="form-control" id="inputPassword3" name="gname" placeholder="Guardian Name">
												    </div>
												  </div>
												  <div class="form-group row">
												    <label for="inputPassword3" class="col-sm-3 col-form-label">Guardian Contact</label>
												    <div class="col-sm-8">
												      <input type="tel" class="form-control" id="inputPassword3" name="gcontact" placeholder="Mobile No">
												    </div>
												  </div>
												  
												  <div class="form-group row">
												    <div class="col-sm-10">
												      <button type="submit" class="btn btn-primary">Donate</button>
												    </div>
												  </div>
												</form>
	
		
									</div>
									<div class="tab-pane fade show <%=(session.getAttribute("userType").toString().toLowerCase().equals("r"))?"active":""%>" id="requestOrgan" role="tabpanel"
										aria-labelledby="list-profile-list">
										
											  <div class="form-group row">
											    <label for="inputEmail3" class="col-sm-2 col-form-label">Select Organ </label>
											    <select class="form-control mb-3" id="Oid">
											     <%
											      ps=Dbconnection.getCon().prepareStatement("select * from organ");
											      rs=ps.executeQuery();
											     while(rs.next())
											     {
											     %>
											    <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
											     <%
											     }
												     %>
												    </select> 
												  <div class="form-group row">
												    <div class="col-sm-10">
												      <button type="button" class="btn btn-primary" onclick="searchDonar()">Find Donor</button>
												    </div>
												  </div>
										</div>
										 <div class="form-group row">
														
														<table class="table table-hover">
														  <thead >
														    <tr>
														      <th scope="col">Sr.No</th>
														      <th scope="col">Donor Name and Contact</th>
														      <th scope="col">Donor Age</th>
														      <th scope="col">Organ</th>
														      <th scope="col">Guardian Details</th>
														      <%if(!session.getAttribute("userType").toString().toLowerCase().equals("d")){ %>
														      <th scope="col">Action</th>
														      <%} %>
														    </tr>
														  </thead>
														  <tbody id="donorsList">
														   
														  </tbody>
														</table>
																										
												   </div>
	
									</div>
									<div class="tab-pane fade show <%=(session.getAttribute("userType").toString().toLowerCase().equals("d"))?"":""%>" id="mydonation" role="tabpanel"
										aria-labelledby="list-profile-list">
										
											  <div class="form-group row">
											   
											    
											     <%
											      ps=Dbconnection.getCon().prepareStatement("select o.organ_name, do.donation_date,do.gaurdian_name,do.gaurdian_contact,do.cause_of_death from donation as do  inner join organ as o  on do.organ_id=o.organ_id where do.donor_id=?");
											      ps.setString(1,session.getAttribute("userId").toString());
											      rs=ps.executeQuery();
											     %>
												
				
										</div>
										 <div class="form-group row">
														
														<table class="table table-hover">
														  <thead >
														    <tr>
														      <th scope="col">Sr.No</th>
														      <th scope="col">Donated Organ</th>
														      <th scope="col">Donated Date</th>
														      <th scope="col">Cause of Date</th>														      
														      <th scope="col">Guardian Details</th>
														    </tr>
														  </thead>
														  <tbody id="donotedsList">
														   	<%
														   	int i=1;
														   	while(rs.next()){ %>
														   	 <tr>
														   	  <td scope="col"><%=i%></td>
														   	  <td scope="col"><%=rs.getString(1)%></td>
														   	  <td scope="col"><%=rs.getString(2)%></td>
														   	  <td scope="col"><%=rs.getString(5)%></td>
														   	  <td scope="col">
														   	  	<p><%=rs.getString(3)%></p>
														   	  	<p><%=rs.getString(4)%></p>
														   	  	
														   	  	</td>
														   	 </tr>
														   	<%} %>
														  </tbody>
														</table>
																										
												   </div>
	
									</div>
									<div class="tab-pane fade" id="my-requests" role="tabpanel"
										aria-labelledby="list-settings-list">
										<div class="form-group row">
										<div class="col-12">
										<h3>
										 <%=session.getAttribute("userType").toString().toLowerCase().equals("d")?"Recipient's Request":"My Requests" %>
														     
										</h3>
										<table class="table table-hover">
														  <thead >
														    <tr>
														      <th scope="col">Sr.No</th>
														      <th scope="col">
														      <%=session.getAttribute("userType").toString().toLowerCase().equals("d")?"Recipient Name and Contact":"Donor Name and Contact" %>
														      
														      </th>
														      
														      <th scope="col">
														       <%=session.getAttribute("userType").toString().toLowerCase().equals("d")?"Recipient Age":"Donor Age" %>
														     
														      </th>
														      
														      <th scope="col">Organ</th>
														    <%  if(!(session.getAttribute("userType").toString().toLowerCase().equals("d"))){%>
														      <th scope="col">Guardian Details</th>
														      <%} %>
														      <th scope="col">Transplantation Location</th>
														      <th scope="col">Transplantation Date</th>
														      <th scope="col">Transplantation Status</th>
														    </tr>
														  </thead>
														  <tbody id="donorsList">
														   <%
														   String query=(session.getAttribute("userType").toString().toLowerCase().equals("d"))?														
														   "select r.Recipient_name,r.Recipient_contact,FLOOR((TIMESTAMPDIFF(MONTH, r.Recipient_dob, CURDATE()) / 12)) as Age,do.gaurdian_name,do.gaurdian_contact,o.organ_name,t.transplantation_location,t.transplantation_date,t.status,t.transplantation_id from transplantation as t inner join donation as do on t.donation_id=do.donation_id inner join donor as d on d.donor_id=do.donor_id inner join  organ as o on o.organ_id=do.organ_id inner join recipient as r on t.recipient_id=r.Recipient_id where d.donor_id=?"
														   :"select d.donor_name,d.donor_contact,FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age,do.gaurdian_name,do.gaurdian_contact,o.organ_name,t.transplantation_location,t.transplantation_date,t.status from transplantation as t inner join donation as do on t.donation_id=do.donation_id inner join donor as d on d.donor_id=do.donor_id inner join  organ as o on o.organ_id=do.organ_id inner join recipient as r on t.recipient_id=r.Recipient_id where t.recipient_id=?";
														   
														   
														   
														   ps=Dbconnection.con.prepareStatement(query);
														   ps.setString(1,session.getAttribute("userId").toString());
														   rs=ps.executeQuery();
														    i=1;
														   while(rs.next())
														   {
														   %>
														    <tr>
														    	<td scope="col"><%=i %></td>
														    	<td scope="col">
														    					<p><%=rs.getString(1) %></p>
														    					<p><%=rs.getString(2) %></p>														    					
														    					</td>
														    	<td scope="col"><%=rs.getString(3)%></td>
														    	<td scope="col"><%=rs.getString(6)%></td>
														    	<% if(!(session.getAttribute("userType").toString().toLowerCase().equals("d"))){%>
														    	<td scope="col">
														    		<p><%=rs.getString(4) %></p>
														    	    <p><%=rs.getString(5) %></p>
														    	</td>
														    	<%} %>
														    	<td scope="col"><%=rs.getString(7)%></td>
														    	<td scope="col"><%=rs.getString(8)%></td>
														    	
														    	
														    	<td scope="col">
														    	<% if((session.getAttribute("userType").toString().toLowerCase().equals("d"))){%>
														    	
														    	<select id="status" class="form-control rstatus" transplantId="<%=rs.getString(10) %>" >
														    	<option value="Pending" <%=(rs.getString(9).equals("Pending"))?"selected":""%>>Pending</option>
														    	<option value="Approved" <%=(rs.getString(9).equals("Approved"))?"selected":""%>>Approved</option>
														    	<option value="Rejected" <%=(rs.getString(9).equals("Rejected"))?"selected":""%>>Rejected</option>
														    	</select>
														    	<%}else{ %>
																<%=(rs.getString(9).equals("Pending"))?"<p class='btn btn-sm btn-warning'>"+rs.getString(9)+"</p>":
																	(rs.getString(9).equals("Approved"))?"<p class='btn btn-sm btn-success'>"+rs.getString(9)+"</p>":
																	(rs.getString(9).equals("Rejected"))?"<p class='btn btn-sm btn-danger'>"+rs.getString(9)+"</p>":""
																%>
														    
														    	<%} %>
														    	
														    	<%} %>
														    	</td>
														    </tr>
														   <%
														   %>
														  </tbody>
														</table>
										</div>
										</div>
										</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Feature Section Ends Here========== -->




	<!-- ==========Footer Section Ends Here========== -->
	<section class="footer-section style-1">
		<div class="container">
			<div class="section-wrapper">
				<div class="footer-top">
					<div class="row">
						<div class="col-12 col-sm-6 col-xl-3 wow fadeInUp"
							data-wow-duration="1s" data-wow-delay=".1s">
							<div class="contact-info">
								<h3>Contact Info</h3>
								<p>Rapidiously seize wireless strategic theme areas and
									corporate testing procedures. Uniquely</p>
								<ul class="lab-ul">
									<li><i class="icofont-home"></i> Suite 02 New Jersey Road
										usa</li>
									<li><i class="icofont-phone"></i> +880 142 258 123,
										02-96936</li>
									<li><i class="icofont-envelope"></i> <a href="#">
											info@example.com</a></li>
									<li><i class="icofont-globe"></i> <a href="#">
											info@example.com</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-xl-3 wow fadeInUp"
							data-wow-duration="1s" data-wow-delay=".2s">
							<div class="doctor-info mb-5 mb-sm-0">
								<h3>Our Doctors</h3>
								<ul class="lab-ul">
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Nick Sims</a></li>
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Michael Linden</a></li>
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Max Turner</a></li>
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Amy Adams</a></li>
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Julia Jameson</a></li>
									<li><i class="icofont-double-right"></i><a href="#">
											Dr. Michael Linden</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-xl-3 wow fadeInUp"
							data-wow-duration="1s" data-wow-delay=".3s">
							<div class="service-info  mb-5 mb-sm-0">
								<h3>Our Services</h3>
								<ul class="lab-ul">
									<li><i class="icofont-double-right"></i><a href="#">Outpatient
											Surgery</a></li>
									<li><i class="icofont-double-right"></i><a href="#">Cardiac
											Clinic</a></li>
									<li><i class="icofont-double-right"></i><a href="#">Ophthalmology
											Clinic</a></li>
									<li><i class="icofont-double-right"></i><a href="#">Gynaecological
											Clinic</a></li>
									<li><i class="icofont-double-right"></i><a href="#">Outpatient
											Rehabilitation</a></li>
									<li><i class="icofont-double-right"></i><a href="#">Ophthalmology
											Clinic</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-xl-3 wow fadeInUp"
							data-wow-duration="1s" data-wow-delay=".4s">
							<div class="time-info">
								<h3>opening hours</h3>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Satarday</div>
										<div class="day-time">8:00 am-10:00 pm</div>
									</div>
								</div>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Sunday</div>
										<div class="day-time">6:00 am-8:00 pm</div>
									</div>
								</div>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Monday</div>
										<div class="day-time">6:00 am-2:00 pm</div>
									</div>
								</div>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Tuesday</div>
										<div class="day-time">7:00 am-9:00 pm</div>
									</div>
								</div>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Widnessday</div>
										<div class="day-time">10:00 am-12:00 pm</div>
									</div>
								</div>
								<div class="dep-item">
									<div class="dep-item-inner d-flex justify-content-between">
										<div class="day-name">Thirsday</div>
										<div class="day-time">2:00 am-6:00 pm</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-bottom">
					<div class="copyright text-center wow fadeInUp"
						data-wow-duration="1s" data-wow-delay=".1s">
						<span>Copyright &copy; 2021 <a href="index.html">Medixin</a>.
							Designed by <a
							href="https://www.templatemonster.com/authors/labartisan/">LabArtisan</a></span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Footer Section Ends Here========== -->

	<!-- scrollToTop start here -->
	<a href="#" class="scrollToTop"><i class="icofont-rounded-up"></i></a>
	<!-- scrollToTop ending here -->




	<!-- All Scripts -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/swiper.min.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/circularProgressBar.min.js"></script>
	<script src="assets/js/hc-offcanvas-nav.js"></script>
	<script src="assets/js/functions.js"></script>
	<script>
		function searchDonar()
		{
			let Oid=$("#Oid").val();
			 $.ajax({
			        type: "POST",
			        url: "searchDonar.jsp",
			        data:"id="+Oid, // serializes the form's elements.
			        success: function(data)
			        {
			          $("#donorsList").html(data);
			        }
			    });
		}
		
		function ask(id,organName)
		{
			if(Confirm=confirm("Are you sure to ask for Donate"+organName))
				{
				location.href="transplantation.jsp?did="+id;
				}	
		}
		
		$('.rstatus').change(function()
		{
			let status=$(this).val();
			let id=$(this).attr("transplantId");
			
			 $.ajax({
			        type: "POST",
			        url: "updateStatusDb.jsp",
			        data:"id="+id+"&status="+status, // serializes the form's elements.
			        success: function(data)
			        {
			         alert("Status Updated Successfully");
			         
			        }
			    });
		});
	</script>
</body>


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:34:31 GMT -->
</html>