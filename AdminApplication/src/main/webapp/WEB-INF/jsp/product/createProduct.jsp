<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML>
<html class="no-js">

 <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Covid 19 Screening Protocol</title>

	 <!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" >
	<!-- Custom styles for this template -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/components/myalert/css/bundled.css">
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/static/components/myalert/css/jquery-confirm.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery-ui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-open/stylesheet.css">
	<!-- Datepicker -->
    
     <link rel="stylesheet"  href="${pageContext.request.contextPath}/static/components/bootstrap-datepicker/css/bootstrap-datepicker.standalone.min.css"/>
	 <!-- custom scrollbar stylesheet -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery.mCustomScrollbar.css">
	 
	
	 
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/components/select2/select2.min.css" rel="stylesheet" />

	<!-- select2-bootstrap4-theme -->
	<link href="${pageContext.request.contextPath}/static/components/select2/select2-bootstrap4.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/components/DataTables/datatables.css" rel="stylesheet">
 
<link href="${pageContext.request.contextPath}/static/css/style_new.css" rel="stylesheet">


<!--Multiselect css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static\components\multiselect\bootstrap-select.css" >


<script src="${pageContext.request.contextPath}/static/js/jquery-v3.3.1.min.js"></script>
    
  </head>
<body class="hold-transition skin-blue sidebar-mini">
   <div class="se-pre-con"></div>

<div class="common-wrapper">
        <!--Top Navigation-->
        
        <jsp:include page="../templates/defaultHeader.jsp" /> 
        
        <!--/Top Navigation-->

        <!-- Sidebar Wrapper-->
        <jsp:include page="../templates/defaultMenu.jsp" /> 

        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->

      <!-- <tiles:insertAttribute name="body" ></tiles:insertAttribute> -->
      

        <!--Bottom Bar-->
            <div>
           </div>
        <!--/Bottom Bar-->
        
    </div>

	
     <!-- Script Links start---> 
<script src="${pageContext.request.contextPath}/static/components/select2/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/components/myalert/js/jquery-confirm.js"></script>
 
<script src="${pageContext.request.contextPath}/static/js/jquery-ui.js"></script>

 
 <!-- custom scrollbar plugin -->
	<script src="${pageContext.request.contextPath}/static/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- select2 -->
<script src="${pageContext.request.contextPath}/static/components/select2/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/components/DataTables/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/custom_am.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/script.js"></script>  
<!--Multiselect-->
<script src="${pageContext.request.contextPath}/static\components\multiselect\bootstrap-select.min.js"></script>

<!-- Date Tiem Picker -->
<script src="${pageContext.request.contextPath}/static/components/datetime/moment.min.js" type="text/javascript"></script>




<script type="text/javascript" src="${pageContext.request.contextPath}/static/components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
 
 <!-- Script Links End--->
<script>
	//paste this code under head tag or in a seperate js file.
	 
	$( window ).on("load", function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	
	 });
	
	
	$(document).ready(function ($) {
	    var url = window.location.href;
	    var activePage = url;
	    //alert(activePage);
	    $('.sidebar-dropdown a').each(function () {
	    	 
	        var linkPage = this.href; 
	        if (activePage == linkPage) {
	            $(this).closest("li").addClass("active");
	            $(this).closest(".sidebar-dropdown").addClass("active");
	            $(this).closest(".sidebar-submenu").css("display",'block');
	        }
	    });
	});
	
	
</script>
 
 <!-- Script Links End--->
    <script>
        (function($) {
            $(window).on("load", function() {
                $(".sidebar-wrapper").mCustomScrollbar({
                    setHeight: 450
                });
            });
        })(jQuery);
    
        
        
        </script>
    <!-- Script Links End--->
</body>
</html>