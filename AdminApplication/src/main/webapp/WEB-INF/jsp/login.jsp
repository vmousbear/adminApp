<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css"/>

<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icon-font.min.css" type='text/css' />



<style>
 .modal-dialog {
  
    z-index: 99999;
}
 
 </style>
</head>


<body class="dash-bg">


<!-- <div class="header" align="center">
		<font size="30" color="white">Indian Coast Guard</font>
		<br>
		<font size="3" color="white">Ministry of Defence</font>
	</div> -->



<script type="text/javascript">
          function login() {
        	  document.loginProcess.action="loginProcess";
			
		}
</script>

   
 

  
  <div class="login_div">
  <div class="login">
    
    <div class="pg_hd">
    <h2> <img src="${pageContext.request.contextPath}/static/img/mousbear.jpeg"></h2>
       <h1> Mousbear </h1>
    <h3> Admin Panel </h3>
         <p class="error1 msg-sh">${error}</p>
         <p class="mess_succes msg-sh">${loggedout}</p>
    </div>
    
    
    
     <form class="login-form" method="post" name="loginProcess" modelAttribute="user" autocomplete="off">
      <div class="uname">
        <input name="userId" type="text" required placeholder="userId"/>
        </div>
         <div class="passd">
        <input name="password" type="password" value="" size="20" placeholder="password" required maxlength="48" />
        </div>
        <div class="submit">
          <input type="submit" value="Login" onclick="login()">
        </div>
        <div class="clearfix"></div>
        <div class="new">
          <p>
              All rights reserved, copyright <br/> <b>2021</b>
          </p>
          
          <div class="clearfix"></div>
        </div>
      </form>
    </div>
  
  </div>
 
 
 <div class="copy_rg">
 <div class="container-fluid">
	<%-- <ul>
		<li><a href="${pageContext.request.contextPath}/readfaq" target="_blank">FAQs</a>
		 
	</ul>
	
	<p>&copy; 2020 Indian Coast Guard. All Rights Reserved</p>
	<p style="line-height:20px;">Designed and Developed by Software Development Overseeing Team of Directorate of IT, Indian Coast Guard Headquarters.</p>
	 --%><!-- <p class="site_view">Site best viewed in Mozilla Firefox, Chrome, Safari, 1280X720 Screen Resolution</p> -->
 
</div>
</div>
 
 
 
<!-- Modal -->

<%-- <c:if test="${empty error && empty loggedout}">
<div class="modal fade message_alert" id="covidMessage" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-dialog-centered" role="document" style="max-width: 582px;">
    <div class="modal-content">
       
      <div class="modal-body mdlbg">
	  
	  <div class="close_area pull-right">
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
	  </div>
	   <div class="lgmessage_area">
	  <img src="${pageContext.request.contextPath}/static/img/icon-cgofficer.png" alt="covid" class="img-fluid" />
        <h2>Indian Coast Guard Personnel <br> COVID-19 Screening Protocol</h2>
		<p>This form is to be filled  <span class="sund">Every Sunday</span> commencing 26 Apr 2020 by all Officers, Enrolled Personnel and Civilian Personnel. 
In case you experience any known symptoms OR might have come in contact with a known positive case, please make a submission on this Application.</p>
		
		<button type="button" class="btn btn-danger btn-sm2" data-dismiss="modal" aria-label="Close">Close 
        </button>
      </div>
	  </div>
      
    </div>
  </div>
</div>
</c:if> --%>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-v3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(window).on('load',function(){
       /*  $('#myModal').modal('show'); */
        $('#myModal').modal({
        
        backdrop:'static'
        
        });
    });
    
    $(document).ready(function(){

        $("#covidMessage").modal('show');

    });
    
    setTimeout(function() {					
        $('.msg-sh').fadeOut(4000);
      
       
    },2000);
</script>
