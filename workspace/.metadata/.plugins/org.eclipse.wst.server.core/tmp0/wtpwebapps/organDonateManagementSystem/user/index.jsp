<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.Dbconnection"%>
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


    <!-- ==========Banner Section Start Here========== -->
    <section class="banner-section">
        <div class="banner-slider">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <div class="banner-item" style="background-image: url(assets/images/banner/1.jpg);">
                        <div class="container">
                            <div class="banner-inner">
                                <div class="row align-items-center">
                                    <div class="col-lg-6">
                                        <div class="banner-content">
                                            <h2 class="wow fadeInDown" data-wow-duration="2s" data-wow-delay=".1s">
                                               Savior
                                            </h2>
                                            <h1 class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay=".1s">
                                                <b>Give Life</b> Give Hope Be an Organ Donor
                                            </h1>
                                            <a href="#" class="lab-btn wow fadeInUp" data-wow-duration="2s"
                                                data-wow-delay=".1s"><span>
                                                Be a Donor
                                                 <i class="icofont-rounded-double-right"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="banner-thumb">
                                            <img src="assets/images/banner/1.png" alt="banner-img">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <div class="swiper-slide">
                    <div class="banner-item" style="background-image: url(assets/images/banner/1.jpg);">
                        <div class="container">
                            <div class="banner-inner">
                                <div class="row align-items-center">
                                    <div class="col-lg-6">
                                        <div class="banner-content">
                                            <h2 class="wow fadeInDown" data-wow-duration="2s" data-wow-delay=".1s">
                                             Savior
                                            </h2>
                                            <h1 class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay=".1s">
                                                <b>
                                                    Be Someone's Miracle</b> Donate Your Organs
                                            </h1>
                                            <a href="#" class="lab-btn wow fadeInUp" data-wow-duration="2s"
                                                data-wow-delay=".1s"><span> Be a Donor <i class="icofont-rounded-double-right"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="banner-thumb">
                                            <img src="assets/images/banner/2.png" alt="banner-img">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <div class="swiper-slide">
                    <div class="banner-item" style="background-image: url(assets/images/banner/1.jpg);">
                        <div class="container">
                            <div class="banner-inner">
                                <div class="row align-items-center">
                                    <div class="col-lg-6">
                                        <div class="banner-content">
                                            <h2 class="wow fadeInDown" data-wow-duration="2s" data-wow-delay=".1s">  Savior
                                               
                                            </h2>
                                            <h1 class="wow fadeInLeft" data-wow-duration="2s" data-wow-delay=".1s">
                                                <b>Join the Life Chain:</b> Support Organ Donation
                                            </h1>
                                            <a href="#" class="lab-btn wow fadeInUp" data-wow-duration="2s"
                                                data-wow-delay=".1s"><span>Be a Donor <i class="icofont-rounded-double-right"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="banner-thumb">
                                            <img src="assets/images/banner/3.png" alt="banner-img">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
            <div class="banner-pagination"></div>
        </div>
    </section>
    <!-- ==========Banner Section Ends Here========== -->


    <!-- ==========Feature Section Start Here========== -->
    <section class="feature-section padding-tb bg-color">
        <div class="container">
            <div class="feature-section-wrapper">
                <div class="section-header wow fadeInUp" data-wow-delay="" data-wow-duration="1s">
                    <h2><span>We Offer Specialized</span> </h2>
                    <h2> Orthopedics To Meet Your Needs</h2>
                </div>
                <div class="section-content">
                    <div class="row justify-content-center">
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <div class="lab-item feature-item wow fadeInLeft" data-wow-delay=".2s"
                                data-wow-duration="1s">
                                <div class="lab-inner">
                                    <div class="lab-thumb">
                                        <img src="assets/images/feature/1.png" alt="feature img">
                                    </div>
                                    <div class="lab-content">
                                        <h4>Medical Treatment</h4>
                                        <p>Medical Treatment
                                        </p>
                                        <a href="#" class=""><span>Read More <i
                                                    class="icofont-rounded-double-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <div class="lab-item feature-item wow fadeInUp" data-wow-delay=".2s" data-wow-duration="1s">
                                <div class="lab-inner">
                                    <div class="lab-thumb">
                                        <img src="assets/images/feature/2.png" alt="feature img">
                                    </div>
                                    <div class="lab-content">
                                        <h4>Emergency Help</h4>
                                        <p>Lorem ipsum dolor sit amete consectetur adipisicing elite. vlote optio animi?
                                        </p>
                                        <a href="#" class=""><span>Read More <i
                                                    class="icofont-rounded-double-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <div class="lab-item feature-item wow fadeInUp" data-wow-delay=".2s" data-wow-duration="1s">
                                <div class="lab-inner">
                                    <div class="lab-thumb">
                                        <img src="assets/images/feature/3.png" alt="feature img">
                                    </div>
                                    <div class="lab-content">
                                        <h4>Medical Professionals</h4>
                                        <p>Lorem ipsum dolor sit amete consectetur adipisicing elite. vlote optio animi?
                                        </p>
                                        <a href="#" class=""><span>Read More <i
                                                    class="icofont-rounded-double-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <div class="lab-item feature-item wow fadeInRight" data-wow-delay=".2s"
                                data-wow-duration="1s">
                                <div class="lab-inner">
                                    <div class="lab-thumb">
                                        <img src="assets/images/feature/4.png" alt="feature img">
                                    </div>
                                    <div class="lab-content">
                                        <h4>Qualified Doctors</h4>
                                        <p>Lorem ipsum dolor sit amete consectetur adipisicing elite. vlote optio animi?
                                        </p>
                                        <a href="#" class=""><span>Read More <i
                                                    class="icofont-rounded-double-right"></i></span></a>
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


        <!-- ==========Counter Section Start Here========== -->
    <div class="counter-section style-1 padding-60">
        <div class="container">
            <div class="section-wrapper">
                <div class="counter-item wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                    <div class="counter-item-inner">
                        <div class="counter-thumb">
                            <img src="assets/images/counter/01.png" alt="counter">
                        </div>
                        <div class="counter-content">
                            <h3 class="number"><span class="counter">500</span></h3>
                            <p class="post-content">Patients Every Day</p>
                        </div>
                    </div>
                </div>
                <div class="counter-item wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                    <div class="counter-item-inner">
                        <div class="counter-thumb">
                            <img src="assets/images/counter/02.png" alt="counter">
                        </div>
                        <div class="counter-content">
                            <h3 class="number"><span class="counter">400</span></h3>
                            <p class="post-content">Qualified Doctors</p>
                        </div>
                    </div>
                </div>
                <div class="counter-item wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
                    <div class="counter-item-inner">
                        <div class="counter-thumb">
                            <img src="assets/images/counter/03.png" alt="counter">
                        </div>
                        <div class="counter-content">
                            <h3 class="number"><span class="counter">12</span></h3>
                            <p class="post-content">Years Experience</p>
                        </div>
                    </div>
                </div>
                <div class="counter-item wow fadeInRight" data-wow-duration="1s" data-wow-delay=".4s">
                    <div class="counter-item-inner">
                        <div class="counter-thumb">
                            <img src="assets/images/counter/04.png" alt="counter">
                        </div>
                        <div class="counter-content">
                            <h3 class="number"><span class="counter">350</span></h3>
                            <p class="post-content">Diagnosis Verity</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ==========Counter Section Ends Here========== -->


  <!-- ==========Doctor Section Start Here========== -->
    <section class="doctor-section style-1 padding-tb">
        <div class="container">
            <div class="section-header wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                <h2><span>Meet Our</span></h2>
                <h2>Donors</h2>
            </div>
            <div class="section-wrapper">
                <div class="row justify-content-center">
                  <%
                  
                  Dbconnection.getCon();
                  PreparedStatement ps=Dbconnection.con.prepareStatement("select distinct d.* from donor as d inner join donation as do on d.donor_id=do.donor_id order by d.donor_id desc limit 4");
                  ResultSet rs=ps.executeQuery();
                 while(rs.next()){%>
                  
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="doctor-item style-1 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="../<%=rs.getString(7)%>" style="min-height: 290px;" alt="donor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="donorProfile.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a></h4>
                                        
                                    </div>
                                    <ul class="doctor-contact">
                                        <li><span>Phone :</span><%=rs.getString(6)%></li>
                                        <li><span>Email :</span><%=rs.getString(5)%></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                 <%} %>
                 </div>
            </div>
            <div class="doctor-btn text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                <a href="donor.jsp" class="lab-btn"><span> view all Donors <i
                            class="icofont-rounded-double-right"></i></span></a>
            </div>
        </div>
    </section>
    <!-- ==========Doctor Section Ends Here========== -->


    <!-- ==========Doctor Section Start Here========== -->
    <section class="doctor-section style-1 padding-tb">
        <div class="container">
            <div class="section-header wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                <h2><span>Meet Our</span></h2>
                <h2>Medixin Professional Doctors</h2>
            </div>
            <div class="section-wrapper">
                <div class="row justify-content-center">
                    <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="doctor-item style-1 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="assets/images/team/01.jpg" alt="doctor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="#">Dr. Jason Kovalsky</a></h4>
                                        <p class="digi">Cardiologist</p>
                                    </div>
                                    <ul class="doctor-contact">
                                        <li><span>Phone :</span> 658 222 127 964</li>
                                        <li><span>Email :</span> info@example.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="doctor-item style-1 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="assets/images/team/02.jpg" alt="doctor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="#">Patricia Mcneel</a></h4>
                                        <p class="digi">Pediatrist</p>
                                    </div>
                                    <ul class="doctor-contact">
                                        <li><span>Phone :</span> 658 222 127 964</li>
                                        <li><span>Email :</span> info@example.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="doctor-item style-1 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="assets/images/team/03.jpg" alt="doctor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="#">William Khanna</a></h4>
                                        <p class="digi">Throat Specialist</p>
                                    </div>
                                    <ul class="doctor-contact">
                                        <li><span>Phone :</span> 658 222 127 964</li>
                                        <li><span>Email :</span> info@example.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="doctor-item style-1 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                            <div class="doctor-inner">
                                <div class="doctor-thumb">
                                    <img src="assets/images/team/04.jpg" alt="doctor">
                                </div>
                                <div class="doctor-content">
                                    <div class="doctor-name">
                                        <h4><a href="#">Eric Patterson</a></h4>
                                        <p class="digi">Therapy</p>
                                    </div>
                                    <ul class="doctor-contact">
                                        <li><span>Phone :</span> 658 222 127 964</li>
                                        <li><span>Email :</span> info@example.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="doctor-btn text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                <a href="doctor.jsp" class="lab-btn"><span> view all doctors <i
                            class="icofont-rounded-double-right"></i></span></a>
            </div>
        </div>
    </section>
    <!-- ==========Doctor Section Ends Here========== -->



    <!-- ==========Blog Section Start Here========== -->
    <section class="blog-section padding-tb bg-color">
        <div class="container">
            <div class="section-header wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                <h2><span>News Feed</span></h2>
                <h2>Be The First To New Stories</h2>
            </div>
            <div class="section-wrapper">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                        <div class="post-item-inner">
                            <div class="post-thumb">
                                <a href="assets/images/blog/1.jpg" data-rel="lightcase:myCollection"><img
                                        src="assets/images/blog/1.jpg" alt="blog post images"></a>
                            </div>
                            <div class="post-content">
                                <span class="meta">By <a href="#">Admin</a> March 24, 2021</span>
                                <h4><a href="#">Globa Empoer Extenve Chanels Extensve Creat Method</a></h4>
                                <p>Complete actuaze centi centrcing colora and sharin without anstaled anding bases
                                    aweme medicalplus Template.</p>
                            </div>
                            <div class="blog-footer">
                                <a href="#" class="viewall">Read More <i class="icofont-double-right"></i></a>
                                <a href="#" class="blog-comment"><i class="icofont-comment"></i> 30</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                        <div class="post-item-inner">
                            <div class="post-thumb">
                                <a href="assets/images/blog/2.jpg" data-rel="lightcase:myCollection"><img
                                        src="assets/images/blog/2.jpg" alt="blog"></a>
                            </div>
                            <div class="post-content">
                                <span class="meta">By <a href="#">Admin</a> March 4, 2021</span>
                                <h4><a href="#">Why do you need dental check up regularly for better..</a></h4>
                                <p>Complete actuaze centi centrcing colora and sharin without anstaled anding bases
                                    aweme medicalplus Template.</p>
                            </div>
                            <div class="blog-footer">
                                <a href="#" class="viewall">Read More <i class="icofont-double-right"></i></a>
                                <a href="#" class="blog-comment"><i class="icofont-comment"></i> 30</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                        <div class="post-item-inner">
                            <div class="post-thumb">
                                <a href="assets/images/blog/3.jpg" data-rel="lightcase:myCollection"><img
                                        src="assets/images/blog/3.jpg" alt="blog"></a>
                            </div>
                            <div class="post-content">
                                <span class="meta">By <a href="#">Admin</a> June 02, 2021</span>
                                <h4><a href="#">Lorem ipsum dolor sit, amet consectetur adipisicing. </a></h4>
                                <p>Complete actuaze centi centrcing colora and sharin without anstaled anding bases
                                    aweme medicalplus Template.</p>
                            </div>
                            <div class="blog-footer">
                                <a href="#" class="viewall">Read More <i class="icofont-double-right"></i></a>
                                <a href="#" class="blog-comment"><i class="icofont-comment"></i> 30</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Blog Section Ends Here========== -->


    

    <!-- ==========Newsletter Section Ends Here========== -->
    <section class="newsletter-section style-1">
        <div class="container">
            <div class="section-wrapper">
                <div class="left wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                    <div class="news-title">
                        <h2>Saving Lives Together :</h2>
                    </div>
                </div> 
                 <div class="right wow fadeInRight" data-wow-duration="1s" data-wow-delay=".1s">
                   <div class="news-title">
                        <h2>Embrace Organ Donation</h2>
                    </div>
                </div>          
            </div>
        </div>
    </section>
    <!-- ==========Newsletter Section Ends Here========== -->


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