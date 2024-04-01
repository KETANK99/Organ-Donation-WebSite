<%@page import="java.sql.ResultSet"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


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


 
    <!-- ==========Doctor Section Start Here========== -->
    <section class="doctor-section style-2 padding-tb" style="background-image: url(assets/images/service/bg.jpg); background-size: cover;">
        <div class="container">
           
            <div class="section-wrapper">
                <div class="row no-gutters">
                    
                    <%
                    Dbconnection.getCon();
                    PreparedStatement ps=Dbconnection.con.prepareStatement("select distinct d.*,b.BloodGroupName from donor as d inner join bloodgroups as b on d.blood_category=b.id where donor_id=?");
                    ps.setString(1,request.getParameter("id"));
                    ResultSet rs=ps.executeQuery();
                    
                    while(rs.next()){%>
                    <div class="col-lg-10 col-12 bg-white p-3 shadow">
                    <div class="row">
                    	<div class="col-4">
                        <div class="service-item">
                            <div class="service-thumb">
                               <img src="../<%=rs.getString(7)%>" style="min-height: 290px;" alt="donor">
                            </div>
                           </div>
                           </div>
                           <div class="col-8">
                            <div class="service-content" style="position: absolute;">
                                
                                <h4><%=rs.getString(2)%></h4>
                                
                                <div class="row">
                                <div class="col-6 text-right"><b>Date of Birth : </b></div><div class="col-6"><%=rs.getString(4)%></div>
                                </div>
                                <div class="row">
                                <div class="col-6 text-right"><b>Blood Group : </b></div><div class="col-6"><%=rs.getString("BloodGroupName")%></div>
                               </div>
                               <div class="row">
                                <div class="col-6 text-right"><b>Mobile Number: </b></div><div class="col-6"><%=rs.getString(6)%></div>
                                </div>
                               <div class="row">
                                <div class="col-6 text-right"><b>Gender </b></div><div class="col-6"><%=rs.getString(10)%></div>
                                </div>
                                <div class="row">
                                <div class="col-6 text-right"><b>Email Id : </b></div><div class="col-6"><%=rs.getString(5)%></div>
                               </div>
                                <div class="row">
                                <div class="col-6 text-right"><b>Address : </b></div><div class="col-6"><%=rs.getString(8)%></div>
                                </div>
                                
                                
                            </div>
                            </div>
                            </div>
                        </div>
                    
                    <%} %>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Doctor Section Ends Here========== -->

   <jsp:include page="footer.jsp"></jsp:include>

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
</body>


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:34:31 GMT -->
</html>