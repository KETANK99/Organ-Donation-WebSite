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
    <section class="doctor-section style-2 padding-tb">
        <div class="container">
            <div class="section-header wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                <h2><span>Meet Our</span></h2>
                <h2>Donors</h2>
            </div>
            <div class="section-wrapper">
                <div class="row justify-content-center">
                    
                    <%
                    Dbconnection.getCon();
                    PreparedStatement ps=Dbconnection.con.prepareStatement("select distinct d.* from donor as d inner join donation as do on d.donor_id=do.donor_id where d.status='active' order by d.donor_id desc");
                    ResultSet rs=ps.executeQuery();
                    
                    while(rs.next()){%>
                    <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
                        <div class="doctor-item style-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="../<%=rs.getString(7)%>" style="min-height: 290px;" alt="donor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="donorProfile.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a></h4>
                                        <p class="digi"><%=rs.getString(5)%></a></p>
                                        <p class="digi"><%=rs.getString(6)%></a></p>
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