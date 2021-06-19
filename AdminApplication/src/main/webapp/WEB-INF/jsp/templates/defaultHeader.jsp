 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!-- Header Start -->  
  <header class="navbar navbar-expand header-blue flex-column flex-md-row bd-navbar fixed-top">
   
   <a class="navbar-brand mr-0 mr-md-2"  id="close-sidebar"><i class="fa  fa-navicon"></i></a>
   <span class="ap_name_hd hidex"><img src="static/img/1146.jpg" alt="fpq-logo"> <name class="cvnm">Cheers!!</name>    <!-- <span1>Cheers!!</span1> --> </span>
  <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
    <!-- <li class="nav-item dropdown">
      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Admin<span class="direct">(Dte of IT)</span> - <span class="role">Creator</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">       
        <a class="dropdown-item" href="#">Creator</a>
        <a class="dropdown-item" href="#">Viewer</a>      
      </div>
    </li> -->
    
     <li class="nav-item dropdown"> 
         
         <a class="nav-item nav-link dropdown-toggle mr-md-2" href="" id="bd-versions" data-toggle="dropdown" data-target="#menu-messages" aria-haspopup="true" aria-expanded="false">
       <span title="${name} - (${unit} - ${roleType} " class="avtr"><i class="fa fa-user"></i></span> </span> <span class="empname">${name}</span><span class="direct">(${unit})</span> - <span class="role">${roleType}</span>
        
      </a>

    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">  
       <ul>
        	<div class="mob-view">
       	 <p>${name} - (${unit} - ${roleType}</p>
       	</div>
       <c:forEach items="${rolesList}" var="ListItem">
      
          <form method="post" action="roles" name="roleForm">
             <c:if test="${ListItem == 'Medical Officer'}">
              <input type="hidden" name="role" id="role" value="${ListItem}">
              <li><button class="hvr-pop btnPop" type="submit" name="role" value="${ListItem}">${ListItem}</button></li>
             </c:if>
          </form>
         <form method="post" action="roles" name="roleForm">
           <c:if test="${ListItem == 'Viewer'}">
            <input type="hidden" name="role" id="role" value="${ListItem}">
           <li><button class="hvr-pop btnPop" type="submit" name="role" value="${ListItem}" >${ListItem}</button> </li>
           </c:if>
       </form>
        <form method="post" action="roles" name="roleForm">
           <c:if test="${ListItem == 'Creator'}">
            <input type="hidden" name="role" id="role" value="${ListItem}">
           <li><button class="hvr-pop btnPop" type="submit" name="role" value="${ListItem}">${ListItem}</button> </li>
           </c:if>
       </form>
         <!-- <li class="divider"></li> -->
        </c:forEach>
       <li><a class="hvr-pop"  href="${pageContext.request.contextPath}/loggedOut" style="color: #e31919;font-weight: 600;"><i class="fa fa-sign-out"></i> Log Out</a>
        </ul>
       </div>
    </li>
 
  </ul>
   
 
 </header>
 <!-- Header End --> 