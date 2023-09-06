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
									<a href="/"> <img src="images/logo.png" alt="" /> <span>Carpinfo</span>
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
							<!-- end of menu -->
						</div>
						<!-- end of header left -->
						<div id="header_right">
							<h2>Member Login</h2>
							<form action="#" method="get">
								<label>Username</label> <input type="text" value=""
									name="username" size="10" class="input_field" />
								<div class="cleaner"></div>
								<label>Password</label> <input type="password" value=""
									name="password" class="input_field" />
								<div class="cleaner"></div>
								<input type="submit" name="login" value="Login" alt="login"
									id="submit_btn" />
							</form>
							<a href="/registro">Registrarse</a>
						</div>
						<!-- end of header right -->
						<div class="cleaner"></div>
					</div>
					<!-- end of header -->
					<div id="content_wrapper">
					
						<div id="content_outer">
							<div id="content">
								<div class="content_section">
									<h2>RECORRIDO DE AYSA</h2>
									</p>
								</div>
								<div class="content_section">
									<table class="table table-striped float_r">

										<thead>
											<tr>
												<th>RECORRIDO</th>
												<th>FECHA</th>
												<th>RIO / ARROYO</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>VIERNES 8/9</td>
												<td>A° DURAZNO</td>

											</tr>
											<tr>
												<td></td>
												<td>VIERNES 8/9</td>
												<td>A° CAPITANCITO</td>
											</tr>
											<tr>
												<td></td>
												<td>VIERNES 8/9</td>
												<td>A° CARACOLES</td>
											</tr>
											<tr>
												<td></td>
												<td>VIERNES 8/9</td>
												<td>A° LUCIANO</td>
											</tr>
											<tr>
												<td></td>
												<td>VIERNES 8/9</td>
												<td>A° CHANÁ</td>
											</tr>
											<tr>
												<td></td>
												<td>VIERNES 8/9</td>
												<td>RÍO PARANÁ MINÍ</td>
											</tr>

										</tbody>

									</table>

									<div class="button_01">
										<a href="/info">Atras</a>
									</div>
									
									

									<div id="content_bottom"></div>
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
								<div class="image_wrapper">
									<a href="#"><img src="images/image_01.jpg" alt=""
										width="260" height="120" /></a>
								</div>
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Sed et quam vitae ipsum vulputate varius vitae semper
									nunc. Quisque eget elit quis augue pharetra feugiat.</p>
								<div class="button_01">
									<a href="#">Read more</a>
								</div>
								<div class="cleaner_h30"></div>
								<div class="image_wrapper">
									<a href="#"><img src="images/image_02.jpg" alt=""
										width="260" height="120" /></a>
								</div>
								<h3>Maecenas scelerisque porttitor</h3>
								<p>Donec augue sem, interdum sed elementum a, feugiat id
									ligula. Sed id blandit dolor. Curabitur nibh ligula.</p>
								<div class="button_01">
									<a href="#">Read more</a>
								</div>
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
								Copyright &copy; 2048 <a href="#">Your Company Name</a> |
								Designed by <a target="_blank" rel="nofollow"
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