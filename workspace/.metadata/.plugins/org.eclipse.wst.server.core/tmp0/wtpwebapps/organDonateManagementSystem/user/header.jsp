<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <header class="header-section d-none d-lg-block">
        <div class="header-top">
            <div class="container">
                <div class="row justify-content-between align-items-center px-15">
                    <div class="header-logo">
                        <a href="index.jsp" class="logo"><img src="assets/images/logo/logo3.png" alt="logo"></a>
                    </div>
                    <ul class="header-contact-info d-flex align-items-center">
                        <li class="item">
                            <div class="item-inner">
                                <div class="item-thumb">
                                    <img src="assets/images/header/1.png" alt="">
                                </div>
                                <div class="item-content">
                                    <span>Number :</span>
                                    <p>+880123456789</p>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="item-inner">
                                <div class="item-thumb">
                                    <img src="assets/images/header/2.png" alt="">
                                </div>
                                <div class="item-content">
                                    <span>Email :</span>
                                    <p>info@example.com</p>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="item-inner">
                                <div class="item-thumb">
                                    <img src="assets/images/header/3.png" alt="">
                                </div>
                                <div class="item-content">
                                    <span>Address :</span>
                                    <p>12 North West New York 100</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="header-bottom">
            <nav class="container">
                <div class="primary-menu">
                    <div class="menu-area">
                        <div class="row justify-content-between px-15">
                            <ul class="main-menu d-flex">
                                <li class="active">
                                    <a href="index.jsp">Home</a>
                                   
                                </li>
                              <li><a href="donor.jsp">Donors</a> 
                                </li>
                                
                                <li><a href="doctor.jsp">Doctors</a>
                                    
                                </li>
                                
                                
                                <%
                                if(session.getAttribute("userType")!=null)
                                {%>
                                 <li><a href="MyAccount.jsp">My Dashboard</a>
                                    
                                </li>
                                <%} %>
                                
                                 <li><a href="about.jsp">About</a>
                                    
                                </li>
                              
                            </ul>
                            <ul class="nav-widget d-flex justify-content-between align-items-center">
                               
                                <%if(session.getAttribute("userId")==null){%>
                                <li class="buy-cart ml-3">
                                   
                                   <a href="Login.jsp" title="login"><i class="icofont-ui-user text-white"></i></a> 
                                     
                                </li>
                                <%}else{ %>
                                 <li class="buy-cart ml-3">
                                   <a href="Logout.jsp" title="logout"> <i class="icofont-logout text-white"></i></a>
                                </li>
                                <%} %>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
   