<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


 <!-- Sidebar Start -->
 <aside class="sidemenu">
 <div class="logo_area">
	<a href="#">
		<img src="static/img/mousbear.jpeg" alt="logo" />
		
	</a>
 
  </div>
 
 
 <div class="sidebar-sticky">
 <div class="page-wrapper am-nav">
         <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
     
      
       <!-- sidebar-Menu  -->
      <div class="sidebar-menu">
      <c:if test="${roleType != 'Creator'}">
        <ul>
          <li>
            <a href="${pageContext.request.contextPath}/home">
              <i class="fa fa-home"></i>
              <span>Dashboard</span>
            </a>
          </li>
          <li class="sidebar-dropdown">
            <a>
              <i class="fa fa-gear"></i>
              <span>Category</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="${pageContext.request.contextPath}/createCategory">Add</a>
                </li>
                <li>
                  <a href="${pageContext.request.contextPath}/searchCategory">Search</a>
                </li>
                           
              </ul>
            </div>
          </li>
          <c:if test="${roleType == 'Medical Officer' }">
          <li>
            <a href="${pageContext.request.contextPath}/finalDisposal">
              <i class="fa fa-user"></i>
              <span>Final Disposal</span>
            </a>
          </li>
          </c:if>
          
          
          
		   <li>
            <a href="${pageContext.request.contextPath}/search">
              <i class="fa fa-search"></i>
              <span>Search Details</span>
            </a>
          </li>
           <li class="sidebar-dropdown">
            <a>
              <i class="fa fa-gear"></i>
              <span>Setting</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="${pageContext.request.contextPath}/version">Version History</a>
                </li>
                           
              </ul>
            </div>
          </li>
		 
     
        </ul>
        </c:if>
        
         <c:if test="${roleType == 'Creator'}">
          <ul>
          <li>
            <a href="${pageContext.request.contextPath}/addForm">
              <i class="fa fa-edit"></i>
              <span>Self Assess</span>
            </a>
          </li>
          
          <li>
            <a href="${pageContext.request.contextPath}/viewForm">
              <i class="fa fa-eye"></i>
              <span>View Form</span>
            </a>
          </li>
          
          <li>
            <a href="${pageContext.request.contextPath}/faqs">
              <i class="fa fa-question-circle"></i>
              <span>FAQs</span>
            </a>
          </li>
          <%-- <li class="sidebar-dropdown">
            <a href="">
              <i class="fa fa-gear"></i>
              <span>Setting</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="${pageContext.request.contextPath}/version">Version History</a>
                </li>
                           
              </ul>
            </div>
          </li>
           --%>
           <li class="sidebar-dropdown">
            <a>
              <i class="fa fa-gear"></i>
              <span>Setting</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                 
                <li><a href="${pageContext.request.contextPath}/version">Version History</a></li>
				       
              </ul>
            </div>
          </li>
          
          
          
          
          </ul>
         
         
         </c:if>
      </div>
      <!-- sidebar-menu  -->
    </div>
    </nav>
</div>
      </div>
	  
  <div class="foot_ver" data-position="fixed">
   <p>Version: 2.0.1</p>
   <p>Build: 200427</p>
  </div>
	  
	  
	  
  </aside> <!-- Side Menu Page -->
  
  <div class="clearfix"></div>
        
        <script>
        
        	$(document).ready(function ($) {
    var url = window.location.href;
    var activePage = url;
    $('.sidebar-menu a').each(function () {
        var linkPage = this.href;

        if (activePage == linkPage) {
            $(this).closest("li").addClass("active");
        }
    });
});
        
        </script>