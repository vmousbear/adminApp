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
    <title>Mousbear Dashboard</title>

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
        
        <jsp:include page="templates/defaultHeader.jsp" /> 
        
        <!--/Top Navigation-->

        <!-- Sidebar Wrapper-->
        <jsp:include page="templates/defaultMenu.jsp" /> 

        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->

      <!-- <tiles:insertAttribute name="body" ></tiles:insertAttribute> -->
      <!-- experiment starts -->
      <div class="main_body">
 
 <div class="gif" id="giffy" style="display :none">
 		<img alt="" src="static/img/preloader.gif">
  </div>	
 
	<div class="container-fluid">
	<div class="conent_wrapper">
		<div class="top_head_area" style="margin-bottom:20px;">
			<div class="page_head">
				<h2>Dashboard <!-- <small>Welcome to the COVID 19 Screening Protocol</small> --></h2>
 			</div>
  		</div>
		 
		<div class="main_content">
			
			<div class="dashboard-static-grid mb-3">
				 <div class="row">
					
					<div class="col-lg-8 col-md-12 col-sm-12">
						 <!-- DONUT CHART -->
          <div class="cont_box">
		  
            <div class="box-header with-border">
             <div class="row">
            	 <div class="col-md-7 col-sm-6">
              <h3 class="box-title">Daily Sales Report</h3>
              
              </div>
              
               <c:if test="${roleType == 'Viewer'}">
           
            <div class="col-md-5  col-sm-6">
                                        <div class="form-group reg_filt">
                                                <label>Select Region</label>
                                                 <select class="form-control select2" id="itemId" name="region" onchange="ChangeRegion();">
													<option value="" Selected>All</option>
                                    								<c:forEach items="${regionList}" var="ListItem">
	                               									<option value="${ListItem.id}">${ListItem.name}</option>
	                               									</c:forEach>
                                                    
												  </select>
                                            </div>
                                     </div>	
            
									 
            </c:if>
              
              
              </div>
 
            </div>
            <div class="box-body">
            
           
            
            
            <div id="pieContainerId">
            
              <canvas id="pieChart" ></canvas>
			  </div>
			  <div class="chart_name">
          <ul>
            <li><span class="bggrn whct"></span> Beer</li>
            <li><span class="bgyl whct"></span> Whiskey</li>
            <li><span class="bgvl whct"></span> Rum</li>
            <li><span class="bgtst whct"></span> Vodka</li>
            <li><span class="bggry whct"></span> Others </li>
          </ul>
			  </div>
			  
            </div>
            <!-- /.box-body -->
          </div>
							 
						  </div>
						  
						  <div class="col-lg-4 col-md-12 col-sm-12">
						  
						  <div class="comb_box_ar">
						  
						  
						 <div class="dgrid-box four bg-blue1">
							<div class="inner">
							<h4 class="week_hd">Customer Status <%-- <span id="strDate" class="we_d">${dashData.wkStartDate}</span> to <span id="endDate" class="we_d">${dashData.wkEndDate}</span> --%></h4>
							  <div class="stat_head">
								<h3 style="color: #edb50e;">Existing User Order % : <span id="subId">25%</span></h3>
							  </div>
							  <div class="stat_body">
							  <p>New Users : <span id="strengthId">10</span></p>
							  <p>Total Users: <span id="perFormSubId">1000</span></p>
							   <%-- <p>Total Forms Submitted: <span id="totalForSubId">${dashData.formSubmitted}</span></p> --%>
							  </div>
							</div>
							  
						  </div>
						  
						   <div class="dgrid-box four bg-aqua">
							<div class="inner">
							   <div class="stat_head">
								<h3 style="color: #1b7456;">Today's Order Status: <span id="finDisId">18/06/2021</span></h3>
							  </div>
							  <div class="stat_body">
							  <p>Received : <span  id="isoId">45</span></p>
							   <p>Confirm: <span  id="QuaId"><%-- ${dashData.quarantine} --%>20</span></p>
							   <p>Picked Up: <span  id="testID">10</span></p>
							   <p>En-route: <span  id="addId">05</span></p>
							   <p>Delivered: <span  id="noActId">10</span></p>
							  </div>
							</div>
							</div>
						  
						   <div class="dgrid-box four bg-red">
							<div class="inner">
							   <div class="stat_head">
								<h3 style="color: #b51010;">Ordered Delayed: 02</h3>
							  </div>
							  <div class="stat_body">
							  <p> Average Delay Time  : <span id="postvCasesId">15 minutes</span></p>
							  
							  </div>
							</div>
							</div>
						  </div>
						  
						  
						  <%--  <div class="comb_box_ar">
						   
						   <div class="dgrid-box four bg-gr-drk">
							<div class="inner">
							   <div class="stat_head">
								<h3 style="color: #fad309;">Active  Disposal: <span id="actDis">${dashData.activeDisposals}</span></h3>
							  </div>
							  <div class="stat_body">
							 <p>Isolation : <span  id="actIsoId">${dashData.activeIsolation}</span></p>
							   <p>Quarantine: <span  id="actQuaId">${dashData.activeQuarantine}</span></p>
							  </div>
							</div>
							</div>
						  
						   <div class="dgrid-box four bg-red-drk">
							<div class="inner">
							   <div class="stat_head">
								<h3 style="color: #860000;">Total Covid-19 Positive:</h3>
							  </div>
							  <div class="stat_body">
							  <p> Cases  : <span id="actPostvCasesId">${dashData.activeCovidPostiveCases}</span></p>
							  
							  </div>
							</div>
							</div>
						  </div> --%>
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
					</div>	
					 
				 
					</div>	
				 
				</div>		  
			</div>		

			<div class="clearfix"></div>
			<div class="row">
				 <div class="col-md-6">
           

         
          <!-- /.box -->

        </div>
			
			</div>
			 
		</div> <!-- Main Content End -->
	</div>
	</div>
 
    
 <!-- page script -->
	<script src="static/js/chart.js/Chart.js"></script>
	 
	<script>
  $(function () {
	  
	  
	 /*  var iso=  $("#isoId").text();
	  var qua=   $("#quaId").text();
	    var tes= $("#testId").text();
	     var adm= $("#admId").text();
	     var finalDis='iso''+qua+tes+adm;
	      */
	    /* 	 var sum = 0;
	     $('.spanCl').each(function() {
	       sum += +$(this).text()||0;
	     });
	     $("#finDisId").text(sum);
	     
	     
	     console.log("finalDis       "+sum) */
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */
 
    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieChart       = new Chart(pieChartCanvas)
    var PieData        = [      
      {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        value    : ('20'),
        color    : '#72c141 ',
        highlight: '#72c141 ',
        label    : 'Beer'
      },
      {
        value    : ('20'),
        color    : '#f7ad16 ',
        highlight: '#f7ad16 ',
        label    : 'Whiskey'
      },
      {
        value    : ('20'),
        color    : '#7d5d9a  ',
        highlight: '#7d5d9a  ',
        label    : 'Rum'
      } ,
	  {
        value    : ('20'),
        color    : '#0092c5  ',
        highlight: '#0092c5  ',
        label    : 'Vodka'
      } ,
      {
          value    : ('20'),
          color    : '#7789a7  ',
          highlight: '#7789a7  ',
          label    : 'Others'
        } 
    ]
    var pieOptions     = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke    : true,
      //String - The colour of each segment stroke
      segmentStrokeColor   : '#fff',
      //Number - The width of each segment stroke
      segmentStrokeWidth   : 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps       : 100,
      //String - Animation easing effect
      animationEasing      : 'easeOutBounce',
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate        : true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale         : false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive           : true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio  : true,
      //String - A legend template
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions)

    //-------------
   
  });
  
  
  /**** Custom Scollbar ****/
	(function($) {
            $(window).on("load", function() {
                $(".main-sidebar").mCustomScrollbar({
                    setHeight: 300
                });
            });
        })(jQuery);
  
  
  
  
	function ChangeRegion() {

		//alert("test..")
	
		var refData = document.getElementById("itemId").value;
		console.log("refData   "+refData)
		
		$('#giffy').show();
		
      
		$.ajax({
			url : 'changeDashboard?refData=' + refData,
			type : 'get',
			data : {
				refData : refData
			},
			success : function(response) {
				var len = response.length;
				/* console.log("response    "+response.formSubmitted)
				console.log("response    "+response.strengthformSubmitted)
				console.log("response    "+response.submission)
				console.log("response    "+response.finalDisposal)
				console.log("response    "+response.covidPositiveCases)
				 */
				//alert("test Id=="+response.testing);
				 $('#strDate').text(response.wkStartDate);
					$('#endDate').text(response.wkEndDate);
				$('#subId').text(response.submission);
				$('#strengthId').text(response.cghqStrength);
				$('#perFormSubId').text(response.strengthformSubmitted);
				$('#totalForSubId').text(response.formSubmitted);
				$('#finDisId').text(response.finalDisposal);
				$('#isoId').text(response.isolation);
				$('#QuaId').text(response.quarantine);
				$('#testID').text(response.testing);
				$('#addId').text(response.admission);
				$('#noActId').text(response.noActionRqd);
				$('#postvCasesId').text(response.covidPositiveCases);
				
				$('#actDis').text(response.activeDisposals);
				$('#actIsoId').text(response.activeIsolation);
				$('#actQuaId').text(response.activeQuarantine);
				$('#actPostvCasesId').text(response.activeCovidPostiveCases);
				
				
				//  PIE CHART ON AJAX CALL ...................
				
				/*  if (window.MyChart != undefined)
{
    window.MyChart.destroy();
} */
				
				$('#pieChart').remove();
$('#pieContainerId').append('<canvas id="pieChart"><canvas>');
				 var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieChart       = new Chart(pieChartCanvas)
    
    var PieData        = [      
      {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        value    : response.quarantine,
        color    : '#72c141 ',
        highlight: '#72c141 ',
        label    : 'Quarantine'
      },
      {
        value    : response.admission,
        color    : '#f7ad16 ',
        highlight: '#f7ad16 ',
        label    : 'Admission'
      },
      {
        value    : response.isolation,
        color    : '#7d5d9a  ',
        highlight: '#7d5d9a  ',
        label    : 'Isolation'
      } ,
	  {
        value    : response.testing,
        color    : '#0092c5  ',
        highlight: '#0092c5  ',
        label    : 'Testing'
      } ,
      {
          value    : response.noActionRqd,
          color    : '#7789a7  ',
          highlight: '#7789a7  ',
          label    : 'No Action Required'
        } 
    ]
    var pieOptions     = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke    : true,
      //String - The colour of each segment stroke
      segmentStrokeColor   : '#fff',
      //Number - The width of each segment stroke
      segmentStrokeWidth   : 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps       : 100,
      //String - Animation easing effect
      animationEasing      : 'easeOutBounce',
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate        : true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale         : false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive           : true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio  : true,
      //String - A legend template
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions)
			
			},
			complete: function(){
				$('#giffy').hide();
		      } 
		});

	}
  
</script>
      
      <!-- experiment ends -->

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