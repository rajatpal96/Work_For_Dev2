
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<spring:url var="css" value="/resources/css/" />
<spring:url var="js" value="/resources/js/" />
<spring:url var="image" value="/resources/image/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>${title}</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- bootstrap & fontawesome -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="${css}/common/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<%-- <link rel="stylesheet" href="${css}/common/bootstrap.min.css"/> --%>
<link rel="stylesheet" href="${css}/loginPageCss.css" />   
<link rel="stylesheet" href="${css}/common/css/font-awesome.min.css" />
<script type="text/javascript" src="${js}/loginpage.js"></script>
</head>

<%--some of values used in ${}  is defined in modelandview object and some is defined in header part of same page using spring:url tag --%>

<body class="top_border">
	<!-- Modal HTML -->
<%-- register model --%>
	<div id="registerModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<!-- <h4 class="modal-title">Enter Your Details</h4> -->
  <ul class="nav nav-tabs nav-justified">
    <li class="active"><a href="#dev_register" data-toggle="tab">Developer</a></li>
    <li ><a href="#student_register" data-toggle="tab">Student</a></li>
  </ul>
				</div> <%--model header closed here --%>
	<div class="modal-body">
				
	<!--registration/sign up form  for superAdmin starts from here...  -->
			<div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="dev_register">		
                    
					<form:form class="form-horizontal" action="developer/register" modelAttribute="developer" method="post">
						<div class="form-group">
							<label for="dname" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dname"
									placeholder="Enter Your Name.." path="name" />
							</div>
						</div>
						<div class="form-group">
							<label for="demail" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="demail"
									placeholder="Enter Your Email.." path="email" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="dpassword" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dpassword"
									placeholder="Enter Your Email.." path="password" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="dmob" class="col-sm-2 control-label">Mobile</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dmob"
									placeholder="Enter Your Mobile No..." path="mob" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="dcompany_name" class="col-sm-2 control-label">Company Name</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dcompany_name"
									placeholder="Enter Your Company Name..." path="company.name" />
							</div>
						</div>
						<div class="form-group">
							<label for="dcompany_city" class="col-sm-2 control-label">Company City</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dcompany_city"
									placeholder="Enter Your Company City..." path="company.city" />
							</div>
						</div>
						<div class="form-group">
							<label for="dcompany_country" class="col-sm-2 control-label">Company Country</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="dcompany_country"
									placeholder="Enter Your Company Country..." path="company.country" />
							</div>
						</div>
						
						
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="submit_button">Register</button>
						</div>
						
					</form:form>
				</div>
			
				
				
				
                    <div class="tab-pane active fade" id="student_register">		
                    
					<form:form class="form-horizontal" action="student/register" modelAttribute="student">
						<div class="form-group">
							<label for="dname" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="sname"
									placeholder="Enter Your Name.." path="name" />
							</div>
						</div>
						<div class="form-group">
							<label for="semail" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="semail"
									placeholder="Enter Your Email.." path="email" />
							</div>
						</div>
						<div class="form-group">
							<label for="spassword" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="spassword"
									placeholder="Create Your Password..." path="password" />
							</div>
						</div>
						<div class="form-group">
							<label for="smob" class="col-sm-2 control-label">Mobile</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="smob"
									placeholder="Enter Your Mobile No..." path="mob" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="sskills" class="col-sm-2 control-label">Skills</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="sskills"
									placeholder="EX. Java,PHP,Phython..." path="Skills" />
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="submit_button">Register</button>
						</div>
						
					</form:form>
				</div>
				</div>
				</div>
			</div> <%--model content closed here --%>
		</div> <%--modal-dialog closed here --%>
	</div>
<%--register modal closed here--%>


<div id="forgotModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Forgot Password??</h4>
				</div>
				<div class="modal-body">
				
	<!--registration/sign up form  for superAdmin starts from here...  -->
					
					<form:form class="form-horizontal" action="forgotPassword" modelAttribute="student">			
															<%-- superAdmin bean is received from LoginControllerPage --%>
						<div class="form-group">
							<label for="sname" class="col-sm-5 control-label">Enter Email or Mobile No. : </label>
							<div class="col-sm-6">
								<form:input type="text" class="form-control" id="email_mobile"
									placeholder="Enter Your Email or Mobile No..." path="name"/>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="submit_button">Submit</button>
						</div>
						
					</form:form>
					
				</div>

			</div>
		</div>
	</div>
<%--forgotModal closed here --%>
	<div class="main_div container-fluid">
		<div class="">
			<div class="row main_row">
				<%-- style="background:url(${image}/loginpage_bk.png);   background-position: center; background-position-y: 80px;
 background-repeat:repeat-x;" --%>
				<div class="col-lg-12 top_col ">
					<!-- style="max-height: 75px!important; background-color: #fff;  margin-bottom: 20px!important;" -->
					<h3 style="text-align: left;">
						<img src="${image}/logo.jpgq" class="logo_image">${name} <small
							style="color: #468FCA;"> <i class="fa fa-copyright"
							aria-hidden="true"></i> KsSoftech
						</small>
					</h3>
					<h4 class="pull-right" style="margin-top: -33px !important;">Mob
						. 98765*****</h4>
					<small id="clock" class="right_side_clock"></small>
					<div class="hr hr-double hr-dotted hr18"></div>
				</div>
				
				<div class="col-sm-8 left_side_div img-thumbnail top_border">
					<div class="panel panel-default">
						<div class="panel-body" style="height: 405px !important;">
							<div class="first_div">
								<div class="name_div">
									<p>
										&mdash;** Go Online With us ** &mdash; <span> Ks Soft
											Tech </span> &mdash; ${comp} &mdash;
									</p>
								</div>
								<div class="intro_div hide">
									<h3 id="" class="clock_intro">dadad</h3>
								</div>
							</div>
						</div>
						<div class="panel-footer">
								<p class="typewrite" data-period="1000"
									data-type='[ "Hi , Now you can get a android app -->>", "IOS comming soon..." ]'
									style="color: #fff;"></p>
						</div>
					</div>

				</div>
				<div
					class="col-sm-6  col-md-offset-4 col-sm-offset-3  col-xs-12 col-lg-4 col-lg-offset-0 login_form_div ">
					<div class="paneldiv">
						<div class="panel panel-default top_border login_panel">
							<div class="panel-body">
								<h4 style="text-align: center; color: #478FCA;">
									<i class="fa fa-info-circle"></i> Please Enter Your Information
									<hr style="margin-top: 0px !important; margin-bottom: 0px !important; width: 255px !important;" />
									<small style="font-size: 0.6em;">Howdy! Plese don't
										tell anyone your login deatils..</small>
								</h4>
								<hr style="margin-top: 0px;">


				<!--right side login form  -->
			<form:form class=" login_form" action="login" onsubmit="return validate()" modelAttribute="login" method="post">
									<div class="form-group  has-feedback">
										<form:select class="form-control" name="role" path="role" autofocus="autofocus">
											<option value="">--- Select Login Option ---</option>
											<option value="developer" selected="selected">Developer</option>
											<option value="student">Student</option>
											<option value=""></option>
										</form:select>
									</div>
									<div class="form-group  has-feedback">
										<form:input type="text" class="form-control"
											placeholder="Enter Email" autocomplete="false" path="email"/> <span
											class="glyphicon glyphicon-user form-control-feedback"
											aria-hidden="true"></span>
									</div>
									<div class="form-group  has-feedback">
										<form:input type="password" class="form-control"
											placeholder="Enter Password" autocomplete="false" path="password"/> <span
											class="glyphicon glyphicon-lock form-control-feedback"
											aria-hidden="true"></span>
									</div>
								<%-- 	<div class="form-group">
										<div class="checkbox form-control">
											<label> <form:input type="checkbox"/> Remember me
											</label>
										</div>
									</div> --%>
									<div class="form-group">
										<a href="${contextRoot}/developer">
											<button class="btn btn-block btn-default" id="login_btn"
												type="submit">Login</button>
										</a>
									</div>
									<hr>
										<p class="typewrite" data-period="1000"
											data-type='[ "Hi , Now you can get a android app -->>", "IOS comming soon..." ]'
											style="color: #5090C1;"></p>
									<div class="pull-right" style="margin-top: -30px !important;">
										<a href="#"> <i class="fa fa-android fa-2x"
											aria-hidden="true"></i>
										</a> <a href="#"> <i class="fa fa-apple fa-2x"
											aria-hidden="true" style="color: black;"></i>
										</a>
									</div>

								</form:form>
							</div>
							<div class="panel-footer">
								<a href="#forgotModal" 
									 data-toggle="modal" >
									<h5>
										<i class="fa fa-arrow-left fa-1x"></i> Can't access your
										account?
									</h5>
								</a> 
      <div class="alert alert-success alert-dismissable" style="display:none;">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Congrats!!! Registration is successfull
        </div>					
        <c:if test = "${flag==true}">
         <p>My salary is:  <c:out value = "${flag}"/><p>
      </c:if>
        
        
        			<a href="#registerModal" class="pull-right"
									style="margin-top: -30px !important;" data-toggle="modal">
									<h5>
										I want to register <i class="fa fa-arrow-right fa-1x"></i>
									</h5>
					</a>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!-- login_div -->
		<div class="footer_div navbar-fixed-bottom ">
			<div class="hr hr-double hr-dotted hr18"></div>
			<h4>
				Sky Application © 2017-2018 <small> <a href="#">${company}</a>
				</small>
			</h4>
		</div>

	</div>
	<!-- mani_div -->

	<script type="text/javascript" src="${js}/commonJs/jquery.js"></script>
	<script type="text/javascript" src="${js}/commonJs/bootstrap.min.js"></script>
</body>
</html>
