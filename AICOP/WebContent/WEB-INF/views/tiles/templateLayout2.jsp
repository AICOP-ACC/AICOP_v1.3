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
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<!--  <div class="navbar nav_title" style="border: 0;">
              <a class="site_title"><i class="fa fa-gears"></i> <span>AICOP!</span></a>
            </div> -->

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<tiles:insertAttribute name="header" />
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<tiles:insertAttribute name="leftNav" />
					<!-- /sidebar menu -->

				</div>
			</div>

			<!-- top navigation -->
			<tiles:insertAttribute name="topNav" />
			<!-- top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">
					<tiles:insertAttribute name="maincontent" />
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<tiles:insertAttribute name="footer" />
			<!-- /footer content -->
		</div>
	</div>


	<!-- Custom Theme Scripts -->
	<script src="resources/js/package/custom.min.js"></script>

</body>
</html>