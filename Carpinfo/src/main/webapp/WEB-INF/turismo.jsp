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
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<!-- Incluye jQuery antes de Bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
								<h1>
									<a href="/"> <img src="images/logo.png" alt="" /> <span>CarpInfo</span>
									</a>
								</h1>
							</div>
							<div id="menu">
								<ul>
									<li><a href="/info">INFO UTIL</a></li>
									<li><a href="/turismo">TURISMO</a></li>
									<li><a href="/vecinos">VECINOS</a></li>
									<li><a href="/contacto">CONTACTO</a></li>
								</ul>
							</div>
							<!--             <div id="menu"> -->
							<!-- 			  <ul> -->
							<!-- 			    <li class="menu-padre"> -->
							<!-- 			      <a href="/info">INFO UTIL</a> -->
							<!-- 			      <ul class="menu-desplegable"> -->
							<!-- 			        <li><a href="#">Opción 1</a></li> -->
							<!-- 			        <li><a href="#">Opción 2</a></li> -->
							<!-- 			        <li><a href="#">Opción 3</a></li> -->
							<!-- 			      </ul> -->
							<!-- 			    </li> -->
							<!-- 			    <li class="menu-padre"> -->
							<!-- 			      <a href="/turismo">TURISMO</a> -->
							<!-- 			      <ul class="menu-desplegable"> -->
							<!-- 			        <li><a href="#">Historia de la isla</a></li> -->
							<!-- 			        <li><a href="#">Atracciones</a></li> -->
							<!-- 			        <li><a href="#">Humedales</a></li> -->
							<!-- 			        <li><a href="#">Otros</a></li> -->
							<!-- 			      </ul> -->
							<!-- 			    </li> -->
							<!-- 			    <li class="menu-padre"> -->
							<!-- 			      <a href="/vecinos">VECINOS</a> -->
							<!-- 			      <ul class="menu-desplegable"> -->
							<!-- 			        <li><a href="#">Opción 1</a></li> -->
							<!-- 			        <li><a href="#">Opción 2</a></li> -->
							<!-- 			        <li><a href="#">Opción 3</a></li> -->
							<!-- 			      </ul> -->
							<!-- 			    </li> -->
							<!-- 			    <li class="menu-padre"> -->
							<!-- 			      <a href="/contacto">CONTACTO</a> -->
							<!-- 			      <ul class="menu-desplegable"> -->
							<!-- 			        <li><a href="#">Opción 1</a></li> -->
							<!-- 			        <li><a href="#">Opción 2</a></li> -->
							<!-- 			        <li><a href="#">Opción 3</a></li> -->
							<!-- 			      </ul> -->
							<!-- 			    </li> -->
							<!-- 			  </ul> -->
							<!-- 			</div> -->
							<!-- end of menu -->
						</div>
						<!-- end of header left -->
						<div id="header_right">
							<h2>Vecinos Login</h2>
							<form action="#" method="get">
								<label>usuario</label> <input type="text" value=""
									name="username" size="10" class="input_field" />
								<div class="cleaner"></div>
								<label>Contraseña</label> <input type="password" value=""
									name="password" class="input_field" />
								<div class="cleaner"></div>
								<input type="submit" name="login" value="Login" alt="login"
									id="submit_btn" /> <a href="/registro">Registrarse</a>
							</form>
						</div>
						<!-- end of header right -->
						<div class="cleaner"></div>
					</div>
					<!-- end of header -->
					<div id="content_wrapper">
						<div id="content_outer">
							<div id="content">
								<div class="content_section">
									<h2>Turismo</h2>
									<p>Hace aproximadamente 3500 años, se asentaron en este
										territorio los primeros pobladores de lo que es hoy el partido
										de Tigre. La información acerca de los primeros habitantes del
										distrito proviene de diferentes sitios arqueológicos, como los
										del arroyo Sarandí, arroyo Guazú-Nambí y La Bellaca, en Villa
										La Ñata. En el siglo XVI, a la llegada de los conquistadores
										europeos, los guaraníes habitaban la zona del delta y
										comunidades de querandíes vivían en la llanura pampeana. La
										colonización comenzó con la fundación de la ciudad de Buenos
										Aires, en 1580, cuando el gobernador Juan de Garay repartió
										tierras para estancias y chacras.</p>
								</div>
								<div class="content_section">
									<h2>Tour Programs</h2>
									<p class="em_text">Sed et quam vitae ipsum vulputate varius
										vitae semper nunc. Quisque eget elit quis augue pharetra
										feugiat. Suspendisse turpis arcu, dignissim ac laoreet a,
										condimentum in massa.</p>
									<div class="cleaner"></div>
									<div class="button_01">
										<a href="#">View All</a>
									</div>
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
								<h2>Servicios</h2>
								<div class="image_wrapper">
									<a href="#"><img src="images/image_01.jpg" alt=""
										width="260" height="120" /></a>
								</div>
								<h3>Bar el pepe</h3>
								<p>Lugar familiar etc etc</p>
								<div class="button_01">
									<a href="#">ir a su web</a>
								</div>
								<div class="cleaner_h30"></div>
								<div class="image_wrapper">
									<a href="#"><img src="images/image_02.jpg" alt=""
										width="260" height="120" /></a>
								</div>
								<h3>Hotel JueJue</h3>
								<p>Se aceptan mascotas</p>
								<div class="button_01">
									<a href="#">Ir asl sitio</a>
								</div>
							</div>
						</div>
						<!-- end of template_sidebar -->
						<div class="cleaner"></div>
					</div>
					<!-- end of content_wrapper -->
					<div id="footer">
						<ul class="footer_menu">
							<li><a href="#">Inicio</a></li>
							<li><a href="#">Turismo</a></li>
							<li class="last_menu"><a href="#">Contact</a></li>
						</ul>
						Copyright &copy; 2048 <a href="#">CarpInfo</a> | Designed
						by <a target="_blank" rel="nofollow"
							href="http://www.templatemo.com">templatemo</a>
					</div>
					<!-- end of footer -->
					<div class="cleaner"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>