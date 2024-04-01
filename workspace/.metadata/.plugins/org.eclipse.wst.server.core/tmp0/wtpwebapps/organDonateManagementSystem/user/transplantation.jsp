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
		<div class="container ">
			<div class="feature-section-wrapper">
				<div class="section-content">
					<div class="row">
						<div class="col-md-6">
						<%
						PreparedStatement ps = Dbconnection.con.prepareStatement(
								"select d.donor_name,d.donor_contact,donor_profile, FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age,do.gaurdian_name,do.gaurdian_contact,o.organ_name,do.donation_id  from donation as do inner join organ as o on do.organ_id=o.organ_id inner join donor as d on do.donor_id=d.donor_id where do.donation_id=?");
						ps.setString(1, request.getParameter("did"));
						ResultSet rs = ps.executeQuery();
						if(rs.next()){
						%>
							<H3>Organ Transplantation Form</H3>
							<form action="transplantationDb.jsp">
							<div class=" my-2">
								<label class="">Organ</label>
								<input type="text" class="form-control" value="<%=rs.getString(7) %>" readonly="readonly">
								<input type="hidden" class="form-control" name="donationId" value="<%=rs.getString(8)%>" >
								<input type="hidden" class="form-control" name="reciepentId" value="<%=session.getAttribute("userId") %>" >
							</div>
							<div class="my-2">
								<label class="">Donar Name</label>
								<input type="text" class="form-control" value="<%=rs.getString(1) %>" disabled>
							</div>
							<div class="my-2">
								<label class="">Date of transplantation</label>
								<input  class="form-control" type="date" name="date">
							</div>
							<div class="my-2">
								<label class="">Hospital Name</label>
								<input type="text"  name="name" class="form-control" placeholder="Hospital Name">
							</div>
							<div class="my-2">
								<label class="">Hospital Address</label>
								<textarea type="text"  name="address" class="form-control" ></textarea>
							</div>
							
							<div class="my-2">
								<button class="btn btn-success">Submit Request</button>
							</div>
							
							</form>
							<%} %>
						</div>	
						<div class="col-md-6 d-flex justify-content-center" style="align-items: center;">
							<img src="./assets/images/banner/4.jpg" class="img-fluid"/>
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
		
	</script>
</body>


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:34:31 GMT -->
</html>