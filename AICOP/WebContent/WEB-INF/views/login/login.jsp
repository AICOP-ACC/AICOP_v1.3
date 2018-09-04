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


	<div class="page-header header-filter"
		style="background-image: url('resources/images/ai_login_bg.jpg'); background-size: cover; background-position: top center;">

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

		<footer class="footer">
		<div class="container">

			<div class="copyright float-right">
				<img alt="" src="resources/images/accenture_logo.png">
			</div>
		</div>
		</footer>

	</div>




</body>
</html>