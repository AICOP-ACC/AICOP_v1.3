<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AICOP |</title>
<jsp:include page="templateHeadLayout.jsp" />
</head>
<body >
	
			<div class="wrapper ">

					<!-- sidebar menu -->
					<tiles:insertAttribute name="leftNav" />
					<!-- /sidebar menu -->

			
			<div class="main-panel ps-container ps-theme-default" data-ps-id="797a7f09-075a-37c5-2bac-7d22c8efe4d2">
					
					<!-- top navigation -->
						<tiles:insertAttribute name="topNav" />
					<!-- top navigation -->
					
					      	<!-- page content -->
						<div class="content">
  							<div class="container-fluid">
								<div class="row">
									<tiles:insertAttribute name="maincontent" />
								</div>
							</div>
						</div>	
							<!-- /page content -->
					      
					
					<!-- footer content -->
					<tiles:insertAttribute name="footer" />
				<!-- /footer content -->
					
			</div>
			
			</div>
 <script type="text/javascript">
 
$(document).ready(function()
{
	 $("#minimizeSidebar").click(function()
			 {
	  $("body").toggleClass('sidebar-mini');
	});
 });
 
 </script>

</body>
</html>