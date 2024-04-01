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
                        <h2>Create An Account</h2>
                    </div>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Create An Account</li>
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

                                 <form action="accountRegisterDb.jsp" method="POST" id="createAccount" enctype="multipart/form-data">
                                    <input type="text" name="name" placeholder="Name*" required>
                                    <input type="email" name="email" placeholder="Email*" required>
                                    <input type="tel"  pattern="[0-9]{10}" maxlength="12"  title="Ten digits number" name="mobileNo" placeholder="Mobile Number*" required>
                                    <label>Profile Pic*</label>
                                    <input type="file" name="profile" placeholder="Profile" required>
                                    <label>Date of Birth</label>
                                    <input type="date" name="dob" placeholder="Date of Birth" required>
									
									<select class="form-control mb-3" name="gender" id="AccountType" required>
									<option value="">Gender</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									</select>  
									
									<select class="form-control mb-3" name="bloodgroup"  id="bloodgroup" required>
									<option value="">Blood Group</option>
									<%
									PreparedStatement ps=Dbconnection.getCon().prepareStatement("select * from bloodgroups");
									ResultSet rs=ps.executeQuery();
									while(rs.next()){
									%>
									<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
									<%} 
									Dbconnection.con.close();
									%>
									</select>   
									           
									<select class="form-control mb-3" name="AccountType" id="AccountType" required>
									<option value="">Select Account Type</option>
									<option value="D">Organ Donor</option>
									<option value="R">Organ Recipient</option>
									</select>
									   
									  
                                    
                                    
                                    <input type="password" name="password" id="password" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required>
                                    <input type="password" name="cpassword" id="cpassword" placeholder="confirm password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required>
                                    
                                    <textarea name="address" cols="30" rows="2" placeholder="Address" required></textarea>
                                     <p class="text-right">Already have account? <a href="Login.jsp" class="text-primary">Login</a></p>
                                   
                                    <div class="button-msg d-flex flex-wrap justify-content-between align-items-center">
                                        <button type=" submit" class="lab-btn">
                                            <span>Create Account</span>
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
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60572.37491795666!2d76.56696765!3d18.40315995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf83bd7132cd29%3A0x83629bac5848da3e!2sLatur%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1685667191549!5m2!1sen!2sin" style="width:100%;height:100%"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>   
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
    
    <script type="text/javascript">
    
    $("#createAccount").submit(function(e){
    	
    	let accountType=$("AccountType").val();
    	let bg=$("#bloodgroup").val();
    	let password=$("#password").val();
    	let cpassword=$("#cpassword").val();
    
    	if(accountType!="" || accountType!=null )
    		{
    		if(bg!="" || bg!=null)
    			{
    			if(password==cpassword)
    				{
    				return true;
    				}
    			
    		else{
    			alert("Password not matched");
    			e.preventDefault();
    		}
    			}else{
        			alert("please select boodgroup");
        			e.preventDefault();
        		}
    		}else{
    			alert("please select account type");
    			e.preventDefault();
    		}
    	
    });
    
    </script>
    
    
</body>


<!-- Mirrored from labartisan.net/demo/template/medixin/medixin/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 May 2023 19:35:13 GMT -->
</html>