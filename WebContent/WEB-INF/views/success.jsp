<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="com.info.entity.Student" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <spring:url var="css" value="/resources/css/" />
<spring:url var="js" value="/resources/js/" />
<spring:url var="image" value="/resources/image/" />
<%HttpSession ht=request.getSession();
   ht.getAttribute("st_email");
   String email=(String)ht.getAttribute("st_email");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>
    
    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- SEO -->
    <meta name="description" content="150 words">
    <meta name="author" content="uipasta">
    <meta name="url" content="http://www.yourdomainname.com">
    <meta name="copyright" content="company name">
    <meta name="robots" content="index,follow">
    
    
    <title>Student Profile</title>
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="${image}/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="${image}/favicon/apple-touch-icon.png">
    
    <!-- All css Plugins -->
    <link rel="stylesheet" type="text/css" href="${css}/plugin.css">
    
    <!-- Main css Stylesheet -->
    <link rel="stylesheet" type="text/css" href="${css}/style.css">
    
    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
    
    
    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

 </head>

  <body>
    
    
	
	<!-- Preloader Start -->
    <div class="preloader">
	  <p>Loading...</p>
     </div>
     <!-- Preloader End -->

    
    
    <!-- Menu Section Start -->
    <header id="home">
        
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                
                    <div class="col-sm-3">
                        <div class="logo">
                            <a href="index-2.html">Work4Developer</a>
                        </div>
                    </div>
                    
                    <div class="col-sm-9">
                        <div class="navigation-menu">
                            <div class="navbar">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a class="smoth-scroll" href="#home">Home <div class="ripple-wrapper"></div></a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#">Developer</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#">Student</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#">New Projects</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#">Inbox</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="#"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </header>
     <!-- Menu Section End -->  
    
    
    <!-- Home Section Start -->
    <section class="home-section">
        <div class="container">
            <div class="row">
                
                 <div class="col-sm-offset-2 col-md-4 col-sm-6 margin-left-setting">
                    <div class="margin-top-150">
                      <!-- Retrieve session obejct --> 
                    
                         
                        
                     <div class="table-responsive">
					    <table class="table">
					      <c:forEach var="tempStudent" items="${student}">
							<tr>
							    <td>Name</td>
								<td>${tempStudent.name}</td>
							 </tr>
                             <tr>
								<td>Email</td>
								<td>${tempStudent.email}</td>
							</tr>
							<tr>
								<td>Mobile</td>
								<td>${tempStudent.mobile}</td>
							 </tr>
							<tr>
								<td>Skills</td>
								<td>${tempStudent.skills }</td>
							</tr>
                           </c:forEach>
						</table>
					  </div>
                     </div>
                   </div>
                 
                 <div class="col-md-5 col-sm-6">
                    <div class="me-image">
                      <img src="${image}/bg/profile.png" alt="">
                  </div>
                </div>
              </div>
            </div>
        </section>
        <!-- Home Section End -->
        
        
        
    <!-- Experience Start -->
    <section class="section-space-padding">
        <div class="container">
           <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h2>My Experience.</h2>
                         <div class="divider dark">
						   <i class="icon-graduation"></i>
						  </div>
                        <p>and education</p>
                    </div>
                </div>
            </div>
            
            <div class="row">
            
            <div class="col-md-6 col-sm-6">
				<div class="experience">
				
				<div class="experience-item">
					<div class="experience-circle">
					   <i class="icon-graduation"></i> 
                       <p>8, Nov 2016</p>
					</div>
					<div class="experience-content experience-color-blue">
						<h4>Bachelor Degree in Computer Science</h4>
                        <h6>College Name here</h6>
						<p>Feroze Gandhi institute of Engineering &Technology</p>
					</div>
				 </div>
				
				<div class="experience-item">
					<div class="experience-circle">
						<i class="icon-trophy"></i> 
                        <p>June 2018</p>
					</div>
					<div class="experience-content experience-color-blue">
						<h4>Experience in Programming</h4>
                        <h6>2 years</h6>
						<p>    </p>
					</div>
				 </div>
				
				<div class="experience-item">
					<div class="experience-circle">
						<i class="icon-book-open"></i> 
                        <p>8, Nov 2016</p>
					</div>
					<div class="experience-content experience-color-blue">
						<h4>High School Education</h4>
                        <h6>School Name here</h6>
						<p></p>
					</div>
				 </div>
				
			 </div>
			</div>

			<div class="col-md-6 col-sm-6">
				<div class="experience">
				
				<div class="experience-item">
					<div class="experience-circle experience-company pink-color-bg">
					   <i class="icon-energy"></i>
					</div>
					<div class="experience-content">
						<h4>Internship</h4>
                        <h6>Currently Working, Backend Developer</h6>
						<p>at Udemy inc.</p>
					</div>
				 </div>
				
				<div class="experience-item">
					<div class="experience-circle experience-company pink-color-bg">
						<i class="icon-ghost"></i>
					</div>
					<div class="experience-content">
						<h4>Rolling System PVT. LTD.</h4>
                        <h6>June 2016 to July 2016, Tranee Engineer</h6>
						<p>at Facebook </p>
					</div>
				 </div>
				
				
					
				 </div>
				
			 </div>
			</div>
            
           </div>
        </div>
    </section>
    <!-- Experience End -->
    
    
    <!-- About Start -->
          
             
             <hr>  
               <ul class="social-icon">
            View Linked Profile<li><a href="#" target="_blank" class="facebook"><i class="icon-social-linkedin"></i></a></li>
               </ul>
               
             
       <hr>
       
      <!-- Skills Modal Start -->
      <div class="modal fade padding-top-70" id="skillmodal" role="dialog">
        <div class="modal-dialog">
    
      
      <div class="modal-content pattern-bg">
        <div class="modal-body">
           <div class="row">
                <div class="col-sm-12">
                    <div class="section-title margin-top-30">
                      <button type="button" class="btn pull-right" data-dismiss="modal"><i class="fa fa-close"></i></button>
                        <h2>My Skills.</h2>
                         <div class="divider dark">
						   <i class="icon-energy"></i>
						  </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                </div>
            </div>
            
          <div class="row">
           <div class="col-sm-offset-2 col-xs-offset-0 col-md-8 col-sm-8">
          
            <div class="my-skill margin-bottom-50">
                    <strong>Graphic Design</strong>
                       <span class="pull-right">80%</span>
                            <div class="progress">
                                 <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                                </div>
                              </div>

                     <strong>Website Design</strong>
                         <span class="pull-right">99%</span>
                             <div class="progress">
                                  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="99" aria-valuemin="0" aria-valuemax="100" style="width: 99%;">
                                </div>
                              </div>

                      <strong>HTML5/css3</strong>
                         <span class="pull-right">85%</span>
                             <div class="progress">
                                  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;">
                              </div>
                           </div>
                          
                       <strong>Javascript</strong>
                         <span class="pull-right">90%</span>
                             <div class="progress">
                                  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                              </div>
                           </div>
                        </div>
          
                   </div>
               </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Skills Modal End -->
      
      
      
      <!-- Subscribe Modal Start -->
      <div class="modal fade subscribe padding-top-120" id="subscribemodal" role="dialog">
        <div class="modal-dialog">
    
      
      <div class="modal-content">
        <div class="modal-body">
           <div class="row">
                <div class="col-sm-12">
                    <div class="section-title margin-top-30">
                      <button type="button" class="btn pull-right" data-dismiss="modal"><i class="fa fa-close"></i></button>
                        <h2>Subscribe.</h2>
                         <div class="divider dark">
						   <i class="icon-envelope-letter"></i>
						  </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                </div>
            </div>
            
          <div class="row">
           <div class="col-sm-offset-2 col-xs-offset-0 col-md-8 col-sm-8">
          
            <div class="margin-bottom-50">
                    <form id="mc-form" method="post" action="http://uipasta.us14.list-manage.com/subscribe/post?u=854825d502cdc101233c08a21&amp;id=86e84d44b7">
								
						  <div class="subscribe-form">
							 <input id="mc-email" type="email" placeholder="Email Address" class="text-input">
							  <button class="submit-btn" type="submit">Submit</button>
								</div>
								<label for="mc-email" class="mc-label"></label>
							  </form>
                           </div>
                        </div>
                     </div>
                 </div>
             </div>
          </div>
       </div>
       <!-- Subscribe Modal End -->
       <!-- About End -->
    

    
    <!-- Portfolio Start -->
    <section id="portfolio" class="portfolio section-space-padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h2>My Portfolio.</h2>
                          <div class="divider dark">
						   <i class="icon-picture"></i>
						   </div>
                        <p>Projects done by me</p>
                    </div>
                </div>
            </div>
            
            <div class="row">
              <div class="col-md-2">
                <ul class="portfolio">
                    <li class="filter" data-filter="all">all</li>
                    <li class="filter" data-filter=".apps">Desktop Application</li>
                    <li class="filter" data-filter=".mockups">Web Application</li>
                    <li class="filter" data-filter=".wordpress">Android Apps</li>
                </ul>
              </div>
            
            <div class="col-md-10">
                <div class="portfolio-inner margin-top-30">
                
                
                    <div class="col-md-4 col-sm-6 col-xs-12 mix apps">
                        <div class="item">
                            <a href="${image}/portfolio/1.jpg" class="portfolio-popup" title="Project Title">
                                <img src="${image}/portfolio/1.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 col-xs-12 mix mockups">
                        <div class="item">
                            <a href="${image}/portfolio/2.jpg" class="portfolio-popup" title="Project Title">
                                <img src="${image}/portfolio/2.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 col-xs-12 mix apps">
                        <div class="item">
                            <a href="${image}/portfolio/3.jpg" class="portfolio-popup" title="Project Title">
                                <img src="${image}/portfolio/3.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 col-xs-12 mix mockups wordpress">
                        <div class="item">
                            <a href="${image}/portfolio/4.jpg" class="portfolio-popup" title="Project Title">
                                <img src="${image}/portfolio/4.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 col-xs-12 mix wordpress apps">
                        <div class="item">
                            <a href="${image}/portfolio/5.jpg" class="portfolio-popup" title="Project Title">
                                <img src="${image}/portfolio/5.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 col-xs-12 mix apps mockups wordpress" title="Project Title">
                        <div class="item">
                            <a href="${image}/portfolio/6.jpg" class="portfolio-popup">
                                <img src="${image}/portfolio/6.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
       </div>
        
        <div class="text-center margin-top-50">
          <a class="button button-style button-style-dark button-style-color-2 smoth-scroll" href="#contact">Hire Me!</a>
          </div>
     
    </section>
    <!-- Portfolio End -->
    
    
    
     <!-- Testimonial Start -->
    
           
    <!-- Testimonial End -->
    
    
    
      <!-- statistics -->
      <section class="statistics-section section-space-padding bg-cover text-center">
         <div class="container">     

            <div class="row">

           <div class="col-md-3 col-sm-6 col-xs-6">
            <div class="statistics bg-color-1">
              <div class="statistics-icon"><i class="icon-mustache"></i>
              </div>
              <div class="statistics-content">
                <h5><span data-count="2025" class="statistics-count">2025</span></h5><span>Projects Done</span>
              </div>
            </div>
          </div>
          
          <div class="col-md-3 col-sm-6 col-xs-6">
            <div class="statistics bg-color-6">
              <div class="statistics-icon"><i class="icon-emotsmile"></i>
              </div>
              <div class="statistics-content">
                <h5> <span data-count="1200" class="statistics-count">1200</span></h5><span>Happy Clients</span>
              </div>
            </div>
          </div>
          
          <div class="col-md-3 col-sm-6 col-xs-6">
            <div class="statistics bg-color-4">
              <div class="statistics-icon"><i class="icon-hourglass"></i>
              </div>
              <div class="statistics-content">
                <h5><span data-count="8000" class="statistics-count">8000</span></h5><span>Hours of Work</span>
              </div>
            </div>
          </div>
          
          <div class="col-md-3 col-sm-6 col-xs-6">
            <div class="statistics bg-color-5">
              <div class="statistics-icon"><i class="icon-cup"></i>
              </div>
              <div class="statistics-content">
                <h5><span data-count="4000" class="statistics-count">4000</span></h5><span>Cup of Coffee</span>
              </div>
            </div>
            </div>

         </div>
       </div>
    </section>
    <!-- statistics end -->

    
    
    
    <!-- Services Start -->
    <section id="services" class="services-section section-space-padding">
        <div class="container">
           <div class="row">
                <div class="col-sm-12">
                    <div class="section-title">
                        <h2>My Services.</h2>
                          <div class="divider dark">
						   <i class="icon-drop"></i>
						 </div>
                        <p>Services Provided by me</p>
                    </div>
                </div>
            </div>
            
            <div class="row margin-top-30">
            
            <div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="icon-screen-smartphone color-1"></i>
					<h3>Mobile Application</h3>
					<hr>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="icon-screen-tablet color-2"></i>
					<h3>J2EE</h3>
					<hr>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="fa fa-code color-3"></i>
					<h3>Java Desktop Application</h3>
					<hr>
				</div>
			</div>
            
            <div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="icon-support color-4"></i>
					<h3>Angular Js</h3>
					<hr>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="fa fa-html5 color-5"></i>
					<h3>Spring Web MVC</h3>
					<hr>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="services-detail">
					<i class="icon-bulb color-6"></i>
					<h3>css3 Design</h3>
					<hr>
				</div>
			</div>
    
            </div>
        </div>
    </section>
    <!-- Services End -->
    
    
    
    <!-- Call to Action Start -->
  
       <!-- Call to Action End -->
       
       
       
       
    <!-- Contact Start -->
    
            
         
         
								
                       
     <!-- Contact End -->
       
        
        
        
    <!-- Footer Start -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
               
            <div class="col-md-12">
              <ul class="social-icon margin-bottom-30">
                 <li><a href="#" target="_blank" class="facebook"><i class="icon-social-facebook"></i></a></li>
                 <li><a href="#" target="_blank" class="twitter"><i class="icon-social-twitter"></i></a></li>
                 <li><a href="#" target="_blank" class="google-plus"><i class="icon-social-google"></i></a></li>
                 <li><a href="#" target="_blank" class="instagram"><i class="icon-social-instagram"></i></a></li>
                 <li><a href="#" target="_blank" class="dribbble"><i class="icon-social-dribbble"></i></a></li>
               </ul>
          </div>
              
             <div class="col-md-12 uipasta-credit">
                <p>Design By <a href="http://www.uipasta.com" target="_blank" title="UiPasta">UiPasta</a></p>
                </div>
                
             </div>
        </div>
    </footer>
    <!-- Footer End -->
    
    
    <!-- Back to Top Start -->
    <a href="#" class="scroll-to-top"><i class="icon-arrow-up-circle"></i></a>
    <!-- Back to Top End -->
    
    
    <!-- All Javascript Plugins  -->
    <script type="text/javascript" src="${js}/jquery.min.js"></script>
    <script type="text/javascript" src="${js}/plugin.js"></script>
    
    <!-- Main Javascript File  -->
    <script type="text/javascript" src="${js}/scripts.js"></script>
  
  
  </body>
 </html>