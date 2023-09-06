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
          	<div id="site_title d-flex">
              <h1><a href="/"> <img src="images/logo.png" alt="Carpinfo"/></a><span>Carpinfo</span></h1>
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
          <!-- end of header left -->
       <div id="header_right">
           <c:choose>
								<c:when test="${usuario.id == null }">
									<h2>Member Login</h2>
									<form action="/login" method="POST">
										<label>Email</label> <input type="text" name="email"
											class="input_field" />
										<div class="cleaner"></div>
										<label>Password</label> <input type="password" value=""
											name="password" class="input_field" />
										<div class="cleaner"></div>
										<input type="submit" name="login" value="Login" alt="login"
											id="submit_btn" />
									</form>
									<a href="/registro">Registrarse</a>
								</c:when>
								<c:otherwise>
									<h2>
										Hola,
										<c:out value="${usuario.nombre }"></c:out>
									</h2>
									<h6>
										email:
										<c:out value="${usuario.email }"></c:out>
									</h6>
									<hr>
									<a class="m-5" href="/logout">Cerrar sesi�n</a>
								</c:otherwise>
							</c:choose>
          </div>
          <!-- end of header right -->
          <div class="cleaner"></div>
        </div>
        <!-- end of header -->
        <div id="content_wrapper">
          <div id="content_outer">
            <div id="content">
              <div class="content_section">
                <h2>Welcome to Travel &amp; Tour</h2>
                <p><a href="#">Free Website Templates</a> are provided by TemplateMo.com. Feel free to download, edit and use this template for your websites. Credit goes to <a href="#">Public Domain Picutures</a> for the header picture used in this template.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et quam vitae ipsum vulputate varius vitae semper nunc. Quisque eget elit quis augue pharetra feugiat. Suspendisse turpis arcu, dignissim ac laoreet a, condimentum in massa.</p>
              </div>
              <div class="content_section">
                <h2> Tour Programs</h2>
                <p class="em_text">Sed et quam vitae ipsum vulputate varius vitae semper nunc. Quisque eget elit quis augue pharetra feugiat. Suspendisse turpis arcu, dignissim ac laoreet a, condimentum in massa.</p>
                <ul class="featured_tour float_l">
                  <li> <a href="#">Donec a nunc nec est euismod congue <span>Duis id erat quis sem eleifend molestie.</span></a> </li>
                  <li> <a href="#">Proin at urna eu sem convallis elementum <span>Ut dapibus tincidunt tempus. Aliquam ac pellentesque mauris. Donec at nisl tellus. </span></a> </li>
                  <li> <a href="#">Aenean tristique vehicula laoreet <span>Vestibulum ante ipsum primis in faucibus orci luctus.</span></a> </li>
                  <li> <a href="#">Praesent et odio sit amet <span>Pellentesque euismod auctor libero, in euismod eros.</span></a> </li>
                </ul>
                <ul class="featured_tour float_r">
                  <li> <a href="#">Vestibulum euismod vulputate consectetur <span>Suspendisse risus tortor, sagittis ac ante.</span></a> </li>
                  <li> <a href="#">tiam turpis arcu, tempus id mauris <span>Nulla dictum rhoncus lacinia. Quisque feugiat malesuada nulla, sit amet fringilla dui.</span></a> </li>
                  <li> <a href="#">Suspendisse id mauris nec mi <span>Pellentesque euismod auctor libero, in euismod eros.</span></a> </li>
                  <li> <a href="#">Aenean tristique vehicula laoreet. <span>Cras eget massa aliquam dolor consectetur pharetra. Vivamus vehicula tincidunt eleifend</span></a> </li>
                </ul>
                <div class="cleaner"></div>
                <div class="button_01"><a href="#">View All</a></div>
                <div class="cleaner"></div>
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