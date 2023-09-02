<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formateo fechas (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>CarpInfo Inicio</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/style.css">
</head>

<body>
<div id="wrapper_outter">
  <div id="wrapper_inner">
    <div id="wrapper">
      <div id="container">
        <div id="header">
          <div id="header_left">
          	<div id="site_title">
              <h1><a href="/"> <img src="images/logo.png" alt="" /> <span>free website template</span> </a></h1>
            </div>
            <div id="menu">
              <ul>
                <li><a href="/info">INFO UTIL</a></li>
                <li><a href="/turismo">TURISMO</a></li>
                <li><a href="/vecinos">VECINOS</a></li>
                <li><a href="/contacto">CONTACTO</a></li>
              </ul>
            </div>
            <!-- end of menu -->
          </div>
         
          <!-- end of header right -->
          <div class="cleaner"></div>
        </div>
        <!-- end of header -->
        <div id="content_wrapper">
          <div id="content_outer">
            <div id="content">
              <div class="content_section">
                
                <div class=" offset-1 formulario-registro">
            <h2>Register!</h2>
            <div class="text-danger">
                <form:errors class="text-danger" path="user.*" />
            </div>

            <form:form method="POST" action="/registration"
                modelAttribute="user">
                <div class="mb-3">
                    <form:label path="nombre" class="form-label">First Name:</form:label>
                    <form:input type="text" path="nombre" class="form-control" />
                </div>
          
                <div class="mb-3">
                    <form:label path="email" class="form-label">Email:</form:label>
                    <form:input type="email" path="email" class="form-control" />
                </div>
            
                <div class="mb-3">
                    <form:label path="password" class="form-label">Password:</form:label>
                    <form:password path="password" class="form-control" />
                </div>
                <div class="mb-3">
                    <form:label path="passwordConfirmation" class="form-label">Password Confirmation:</form:label>
                    <form:password path="passwordConfirmation" class="form-control" />
                </div>
                <input type="submit" value="Register!" class="btn btn-primary" />
            </form:form>
            <p class="text-success">
                <c:out value="${registro }"></c:out>
            </p>
        </div>
                
                
              
              </div>
            </div>
            <!-- end of content -->
            <div id="content_bottom"></div>
            <div class="cleaner"></div>
          </div>
          <!-- end of content_outer -->
          <div id="template_sidebar">
            <div class="sidebar_section">
              <h2>New Destinations</h2>
              <div class="image_wrapper"> <a href="#"><img src="images/image_01.jpg" alt="" width="260" height="120" /></a> </div>
              <h3>Lorem ipsum dolor sit amet</h3>
              <p>Sed et quam vitae ipsum vulputate varius vitae semper nunc. Quisque eget elit quis augue pharetra feugiat. </p>
              <div class="button_01"><a href="#">Read more</a></div>
              <div class="cleaner_h30"></div>
              <div class="image_wrapper"> <a href="#"><img src="images/image_02.jpg" alt="" width="260" height="120" /></a> </div>
              <h3>Maecenas scelerisque porttitor</h3>
              <p>Donec augue sem, interdum sed elementum a, feugiat id ligula. Sed id blandit dolor. Curabitur nibh ligula. </p>
              <div class="button_01"><a href="#">Read more</a></div>
            </div>
          </div>
          <!-- end of template_sidebar -->
          <div class="cleaner"></div>
        </div>
        <!-- end of content_wrapper -->
        <div id="footer">
          <ul class="footer_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Tours</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Gallery</a></li>
            <li class="last_menu"><a href="#">Contact</a></li>
          </ul>
          Copyright &copy; 2048 <a href="#">Your Company Name</a> | Designed by <a target="_blank" rel="nofollow" href="http://www.templatemo.com">templatemo</a></div>
        <!-- end of footer -->
        <div class="cleaner"></div>
      </div>
    </div>
  </div>
</div>
</body>
</html>