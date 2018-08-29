<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AICOP</title>
</head>
<%--<body>
 	<div class="row justify-content-center pt-5">	
		<img alt="loginLogo" src="resources/images/aicop_login_logo.png">
	 </div>

<div class="container">    
<form id="loginForm" name="loginForm" action="authenticate.do" modelAttribute="loginForm" method="POST">
        <div id="loginbox" style="margin-top:50px;" class="row justify-content-center mainbox">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                    	<div class="text-danger">${errorMsg}</div>
                        <!-- <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div> -->
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="userId" type="text" class="form-control" name="userId" value="" placeholder="Username">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                                    </div>
                                    

                                
                           <!--  <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>
 -->

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <button type="submit" class="btn btn-success">Login  </button>
                                      

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                                



                        </div>                     
                    </div>  
        </div>
        </form>
        <div id="signupbox" style="display:none; margin-top:50px" class="mainbox">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="passwd" placeholder="Password">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="icode" placeholder="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                        
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 
    </div> 
    
</body> --%>

<body class="login-page sidebar-collapse">

	
<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		<a class="navbar-brand" href="../presentation.html">Material Kit PRO</a>
        	</div>

        	<div class="collpase navbar-collapse">
        		<ul class="nav navbar-nav navbar-right">
    				<li>
    					<a href="../index.html">
    						<i class="material-icons">apps</i> Components
    					</a>
    				</li>

    				<li class="dropdown">
    					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
    						<i class="material-icons">view_day</i> Sections
    						<b class="caret"></b>
    					</a>
    					<ul class="dropdown-menu dropdown-with-icons">
    						<li>
    							<a href="../sections.html#headers">
    								<i class="material-icons">dns</i> Headers
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#features">
    								<i class="material-icons">build</i> Features
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#blogs">
    								<i class="material-icons">list</i> Blogs
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#teams">
    								<i class="material-icons">people</i> Teams
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#projects">
    								<i class="material-icons">assignment</i> Projects
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#pricing">
    								<i class="material-icons">monetization_on</i> Pricing
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#testimonials">
    								<i class="material-icons">chat</i> Testimonials
    							</a>
    						</li>
    						<li>
    							<a href="../sections.html#contactus">
    								<i class="material-icons">call</i> Contacts
    							</a>
    						</li>

    					</ul>
    				</li>

    				<li class="dropdown">
    					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
    						<i class="material-icons">view_carousel</i> Examples
    						<b class="caret"></b>
    					</a>
    					<ul class="dropdown-menu dropdown-with-icons">
    						<li>
    							<a href="../examples/about-us.html">
    								<i class="material-icons">account_balance</i> About Us
    							</a>
    						</li>
    						<li>
    							<a href="../examples/blog-post.html">
    								<i class="material-icons">art_track</i> Blog Post
    							</a>
    						</li>
    						<li>
    							<a href="../examples/blog-posts.html">
    								<i class="material-icons">view_quilt</i> Blog Posts
    							</a>
    						</li>
    						<li>
    							<a href="../examples/contact-us.html">
    								<i class="material-icons">location_on</i> Contact Us
    							</a>
    						</li>
    						<li>
    							<a href="../examples/landing-page.html">
    								<i class="material-icons">view_day</i> Landing Page
    							</a>
    						</li>
    						<li>
    							<a href="../examples/login-page.html">
    								<i class="material-icons">fingerprint</i> Login Page
    							</a>
    						</li>
    						<li>
    							<a href="../examples/pricing.html">
    								<i class="material-icons">attach_money</i> Pricing Page
    							</a>
    						</li>
							<li>
								<a href="../examples/ecommerce.html">
									<i class="material-icons">shop</i> Ecommerce Page
								</a>
							</li>
    						<li>
    							<a href="../examples/product-page.html">
    								<i class="material-icons">beach_access</i> Product Page
    							</a>
    						</li>
    						<li>
    							<a href="../examples/profile-page.html">
    								<i class="material-icons">account_circle</i> Profile Page
    							</a>
    						</li>
    						<li>
    							<a href="../examples/signup-page.html">
    								<i class="material-icons">person_add</i> Signup Page
    							</a>
    						</li>
    					</ul>
    				</li>

    				<li>
    					<a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank" class="btn btn-white btn-simple">
    						<i class="material-icons">shopping_cart</i> Buy Now
    					</a>
    				</li>
        		</ul>
        	</div>
    	</div>

	<div class="page-header header-filter"
		style="background-image: url('resources/images/2.png'); background-size: cover; background-position: top center;">

		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 ml-auto mr-auto">
					<div class="card card-login">
						<form class="form" id="loginForm" name="loginForm"
							action="authenticate.do" modelAttribute="loginForm" method="POST">
							<div class="card-header card-header-primary text-center">
								<h3 class="card-title">AICOP</h3>

								<div class="social-line">

									<a class="btn btn-just-icon btn-link"> <i
										class="fa fa-user"></i>
									</a>
								</div>
							</div>
							<div class="panel-heading">
								<div class="text-danger text-center">${errorMsg}</div>
							</div>


							<!-- <p class="description text-center">Or Be Classical</p> -->
							<div class="card-body">

								<span class="bmd-form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="material-icons">face</i>
											</span>
										</div>
										<input id="userId" type="text" class="form-control"
											name="userId" value="" placeholder="User Name...">
									</div>
								</span> <span class="bmd-form-group"><div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="material-icons">lock_outline</i>
											</span>
										</div>

										<input id="password" type="password" class="form-control"
											name="password" placeholder="Password...">
									</div></span>

							</div>
							<div class="footer text-center">
								<button type="submit"
									class="btn btn-primary btn-link btn-wd btn-lg-custom">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- <footer class="footer">
		<div class="container">

			<div class="copyright float-right">
				<img alt="" src="resources/images/accenture_logo.png">
			</div>
		</div>
		</footer>
 -->		
		<footer class="footer">
	        <div class="container">
	            <nav class="pull-left">
				</nav>
	            <div class="copyright pull-right">
	                © 2018   <i class="fa fa-hand-o-right"></i>   Accenture Technology
	            </div>
	        </div>
	    </footer>

	</div>




</body>
</html>