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
    <title>Mousbear</title>

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
      	<!-- Actual Body Starts -->
      	<div class="main_body">
 <div class="gif" id="giffy" style="display :none">
 		<img alt="" src="static/img/preloader.gif">
	</div>
      	<div class="container-fluid">
	<div class="conent_wrapper">
		<div class="top_head_area">
			<div class="eqdiv">
			<div class="page_head">
				<h2>Add Category</h2>
			</div>
			 
			</div>
			<!-- Message Area --->
				<div class="eqdiv">
					<span style="display:none;" class="alert alert-success"><i class="fa  fa-check-circle"></i> Data Submitted Successfully</span>
					<span style="display:none;"  class="alert alert-error"><i class="fa  fa-close"></i> Data Not Submitted</span>
					<span style="display:none;" class="alert alert-warning"><i class="fa  fa-info-circle"></i>Total Post Not exceed</span>
				</div>
				<!-- Message Area End--->
 		</div>
						
		<!-- Head Accrd area start -->		
		<div class="hdr_acd" >
			<p id="add_deta_area" class="grid_lab_act"><span><i class="fa fa-chevron-right"></i></span> Input Detail</p>
		</div>
		<!-- Head Accrd area End -->			
		<div class="main_content" id="form_area">
			<div class="cont_box">
				 
							 <div class="row">
								 
								
								<div class="col-md-3">
									<div class="form-group">
										<label>Category</label>
										
										<input class="form-control" id="category_name" name="category_name" required="required" autocomplete="off"  title="Category Name">
       
										
										</div>
								</div>
							
								<div class="col-md-3">
									<div class="form-group">
										<label>Category</label>
									<div class="custom-file">
    									<input type="file" class="custom-file-input" id="categoryFile">
    									<label class="custom-file-label" for="customFile">Choose file</label>
  									</div>
  									</div>
								</div>
								<div class="col-md-3">
									<div style="margin-top: 1.4rem;">
										 <input type="button" id="btn_search" class="btn btn-dark" value="Add"> 
										
									</div>
								</div>
							 
							</div>
							
							 
							 
							
							<div class="clear-10"></div>
							
			</div>  	 <!-- Cont Box End -->				 	
		</div>  <!-- Main Content End -->
						  
		<!-- Head Accrd area start -->		
		<div class="hdr_acd">
			<p id="view_deta_area"><span><i class="fa fa-chevron-right"></i></span> View Category</p>
		</div>
		<!-- Head Accrd area End -->	
		<div id="data_table_view" style="display:none;">		
			  <!-- Table Start -->
			 <div id="table_view" >
			 
				<div class="table-responsive-lg table-responsive-md">
				
				<table id="search_tab" class="table table-striped table-bordered" style="width: 100%;">
								<thead  class="thead-dark">
									<tr class="info tb-hd">
	<!-- Date of submission,View form ,Final Disposal by medical officer, Remarks(if any) -->								
									
							<th>Category Name</th>
							<th>View</th>
							<th>Edit</th>
							
									</tr>
								</thead>
								<tbody class="tbd1">
									
								</tbody>
							</table>
				</div>
				
			  <!-- Table Start End -->
				 
		</div>
  <!-- /Table end -->
 </div>
		
	</div>
	</div>
 </div>
      	
      	<!-- Actual Body Ends -->

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
	    
	    $("#data_table_view").show();
    	$("#add_deta_area").trigger('click');
    	
    	$('#search_tab').DataTable({
			dom: 'Bfrtip',
			 "bSortable": false, 
			 "ordering": false
			
		} );
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