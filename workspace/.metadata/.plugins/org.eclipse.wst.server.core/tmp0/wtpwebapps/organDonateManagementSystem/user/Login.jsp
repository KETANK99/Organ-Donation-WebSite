<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:35:11 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
    <jsp:include page="preloader.jsp"></jsp:include>
    <!-- preloader ending here -->


    <!-- ========== Mobile-nav section start here ========== -->
    <jsp:include page="mobileMenu.jsp"></jsp:include>
    <!-- ========== Mobile-nav section end here ========== -->


    <!-- ==========Header Section Starts Here========== -->
   	<jsp:include page="header.jsp"></jsp:include>
    <!-- ==========Header Section Ends Here========== -->
   


    <!-- ==========Page Header Section Start Here========== -->
    <section class="page-header-section service-title style-1"
        style="background-image: url(assets/images/pageheader/pageheader.jpg)">
        <div class="page-header-content">
            <div class="container">
                <div class="page-header-content-inner">
                    <div class="page-title">
                        <h2>Login</h2>
                    </div>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Login</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Page Header Section Ends Here========== -->



    <!--=============== Contact Us Section Start Here ========== -->
    <div class="contact-section">
        <div class="contact-top padding-tb aside-bg padding-b">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <article class="contact-form-wrapper">
                            <div class="">
                                <h4>Savior - Saving Lives Through Organ Donation</h4>
                                <p class="mb-5">
                                Welcome to Savior, an online platform dedicated to promoting organ donation and saving lives. 
                                </p>

                                <form action="LoginDb.jsp" method="POST" >
                                    <select class="form-control mb-5" name="AccountType">
									<option>Select Account Type</option>
									<option value="D">Organ Donor</option>
									<option value="R">Organ Recipient</option>
									</select>  
                                    <input type="text" name="userName" placeholder="UserName" required>
                                    <input type="password" name="password" placeholder="password" required>
                                    <p class="text-right">Don't have account ?  <a href="createAccount.jsp" class="text-primary">Create Account</a></p>
                                    <div class="button-msg d-flex flex-wrap justify-content-between align-items-center">
                                        <button type=" submit" class="lab-btn">
                                            <span>Login</span>
                                        </button>
                                    </div>

                                </form>
                                <p class="form-message mb-0"></p>
                            </div>
                        </article>
                    </div>
                    <div class="col-lg-4">
                        <div class="contact-info-wrapper">
                            <div class="contact-info-title">
                                <h5>Get Information</h5>
                                <p>Our Contact information Details and
                                    Follow us on social media</p>
                            </div>
                            <div class="contact-info-content">
                                <div class="contact-info-item">
                                    <div class="contact-info-inner">
                                        <div class="contact-info-thumb">
                                            <img src="assets/images/contact/01.png" alt="address">
                                        </div>
                                        <div class="contact-info-details">
                                            <span class="fw-bold">Office Address</span>
                                            <p>1201 park street, Fifth Avenue</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact-info-item">
                                    <div class="contact-info-inner">
                                        <div class="contact-info-thumb">
                                            <img src="assets/images/contact/02.png" alt="address">
                                        </div>
                                        <div class="contact-info-details">
                                            <span class="fw-bold">Phone Number</span>
                                            <p>+22698 745 632,02 982 745</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact-info-item">
                                    <div class="contact-info-inner">
                                        <div class="contact-info-thumb">
                                            <img src="assets/images/contact/03.png" alt="address">
                                        </div>
                                        <div class="contact-info-details">
                                            <span class="fw-bold">Send Mail</span>
                                            <p>yourmail@mail.com</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact-info-item">
                                    <div class="contact-info-inner">
                                        <div class="contact-info-thumb">
                                            <img src="assets/images/contact/04.png" alt="address">
                                        </div>
                                        <div class="contact-info-details">
                                            <span class="fw-bold">Our Website</span>
                                            <p>www.yoursite.com</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ==========Contact Us Section ENding Here ============ -->


    <!-- ==========Map Section Start Here========== -->
    <div class="map-section">
        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3127181.2559635043!2d-76.96814581236825!3d40.05560151944853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c0fb959e00409f%3A0x2cd27b07f83f6d8d!2sNew%20Jersey%2C%20USA!5e0!3m2!1sen!2sbd!4v1634624531864!5m2!1sen!2sbd"
                allowfullscreen="" aria-hidden="false" tabindex="0" id="g-map"></iframe>
        </div>
    </div>
    <!-- ==========Map Section Ends Here========== -->



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


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:35:13 GMT -->
</html>