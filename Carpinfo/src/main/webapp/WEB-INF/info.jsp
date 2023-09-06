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
<title>CarpInfo informacion</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
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
			</c:when>
			<c:otherwise>
			<h2>
				Hola,
				<c:out value="${usuario.nombre }"></c:out>
			</h2>
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
									<h2>¡Bienvenidos a la sección informacion util del Delta
										de Tigre!</h2>
									<p>Aquí encontrarás toda la información necesaria para
										disfrutar al máximo de este hermoso destino. Ya sea que estés
										planeando un relajante paseo en lancha o si eres residente y
										necesitas conocer los horarios de interisleña, el catamarán
										sanitario, estés interesado en las alturas de la marea o
										quieras saber cuándo pasa AYSA (la chata que reparte agua
										potable), ¡has llegado al lugar indicado!</p>

								</div>
								<!-- 								HORARIOS DE LANCHA -->
								<div class="content_section">
									<h2>Horarios de Interisleña</h2>
									<p class="em_text">Aquí encontrarás todos los horarios de
										lancha ya sea para que planifiques tu visita de manera
										conveniente o para que regreses a tu hogar. ¡Explora y
										descubre todos los horarios disponibles!</p>
									<ul class="featured_tour float_l">
										<li><a href="#">Por la mañana <span>7:00 hs</span></a></li>
										<li><a href="#">Proin at urna eu sem convallis
												elementum <span>Ut dapibus tincidunt tempus. Aliquam
													ac pellentesque mauris. Donec at nisl tellus. </span>
										</a></li>
										<li><a href="#">Aenean tristique vehicula laoreet <span>Vestibulum
													ante ipsum primis in faucibus orci luctus.</span></a></li>
										<li><a href="#">Praesent et odio sit amet <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
									</ul>
									<ul class="featured_tour float_r">
										<li><a href="#">Vestibulum euismod vulputate
												consectetur <span>Suspendisse risus tortor, sagittis
													ac ante.</span>
										</a></li>
										<li><a href="#">tiam turpis arcu, tempus id mauris <span>Nulla
													dictum rhoncus lacinia. Quisque feugiat malesuada nulla,
													sit amet fringilla dui.</span></a></li>
										<li><a href="#">Suspendisse id mauris nec mi <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
										<li><a href="#">Aenean tristique vehicula laoreet. <span>Cras
													eget massa aliquam dolor consectetur pharetra. Vivamus
													vehicula tincidunt eleifend</span></a></li>
									</ul>
									<div class="cleaner"></div>
									<div class="button_01">
										<a href="#">View All</a>
									</div>
									<br>
									<!-- 									DIAS DEL CATAMARÁN SANITARIO -->
									<h2>Salud y seguridad</h2>

									<p class="em_text">En esta sección, podrás acceder al
										recorrido del catamarán sanitario, diseñado para brindar
										asistencia médica en el delta. Te proporcionaremos los
										horarios y lugares donde podrás abordar este servicio.</p>
									<p class="em_text">Además, tefacilitaremos los números de
										teléfono de las salas de primeros auxilios, los bomberos, la
										prefectura y la policía. Estos contactos son fundamentales
										para que puedas recibir ayuda y asistencia en caso de
										cualquier eventualidad.</p>
									<p class="em_text">Nuestra prioridad es tu bienestar, por
										lo que te invitamos a explorar esta sección y tener a mano
										esta información valiosa.</p>
									<ul class="featured_tour float_l">
										<li><a href="#">Por la mañana <span>7:00 hs</span></a></li>
										<li><a href="#">Proin at urna eu sem convallis
												elementum <span>Ut dapibus tincidunt tempus. Aliquam
													ac pellentesque mauris. Donec at nisl tellus. </span>
										</a></li>
										<li><a href="#">Aenean tristique vehicula laoreet <span>Vestibulum
													ante ipsum primis in faucibus orci luctus.</span></a></li>
										<li><a href="#">Praesent et odio sit amet <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
									</ul>
									<ul class="featured_tour float_r">
										<li><a href="#">Vestibulum euismod vulputate
												consectetur <span>Suspendisse risus tortor, sagittis
													ac ante.</span>
										</a></li>
										<li><a href="#">tiam turpis arcu, tempus id mauris <span>Nulla
													dictum rhoncus lacinia. Quisque feugiat malesuada nulla,
													sit amet fringilla dui.</span></a></li>
										<li><a href="#">Suspendisse id mauris nec mi <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
										<li><a href="#">Aenean tristique vehicula laoreet. <span>Cras
													eget massa aliquam dolor consectetur pharetra. Vivamus
													vehicula tincidunt eleifend</span></a></li>
									</ul>
									<div class="cleaner"></div>
									<div class="button_01">
										<a href="#">View All</a>
									</div>
									<!-- 								AGUA POTABLE -->
									<br>
									<h2>Dias y horarios de AYSA</h2>

									<p class="em_text">Aquí encontrarás toda la información
										necesaria sobre los horarios en los que la empresa de agua
										potable Aysa realiza la distribución en esta región. Sabemos
										lo importante que es contar con agua potable en el delta, y
										nos aseguraremos de que estés informado sobre cuándo puedes
										esperar la llegada del suministro.</p>
									<ul class="featured_tour float_l">
										<li><a href="#">Por la mañana <span>7:00 hs</span></a></li>
										<li><a href="#">Proin at urna eu sem convallis
												elementum <span>Ut dapibus tincidunt tempus. Aliquam
													ac pellentesque mauris. Donec at nisl tellus. </span>
										</a></li>
										<li><a href="#">Aenean tristique vehicula laoreet <span>Vestibulum
													ante ipsum primis in faucibus orci luctus.</span></a></li>
										<li><a href="#">Praesent et odio sit amet <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
									</ul>
									<ul class="featured_tour float_r">
										<li><a href="#">Vestibulum euismod vulputate
												consectetur <span>Suspendisse risus tortor, sagittis
													ac ante.</span>
										</a></li>
										<li><a href="#">tiam turpis arcu, tempus id mauris <span>Nulla
													dictum rhoncus lacinia. Quisque feugiat malesuada nulla,
													sit amet fringilla dui.</span></a></li>
										<li><a href="#">Suspendisse id mauris nec mi <span>Pellentesque
													euismod auctor libero, in euismod eros.</span></a></li>
										<li><a href="#">Aenean tristique vehicula laoreet. <span>Cras
													eget massa aliquam dolor consectetur pharetra. Vivamus
													vehicula tincidunt eleifend</span></a></li>
									</ul>
									<div class="cleaner"></div>
									<div class="button_01">
										<a href="/info/aysa">Recorrido AYSA</a>
									</div>
									<!-- 						ALTURA DE MAREA -->
									<br>
									<h2>Pronostico mareologico</h2>

									<p class="em_text">Aquí encontrarás información actualizada
										sobre las alturas de la marea en el delta, tanto si eres
										visitante como residente de esta hermosa región. Sabemos que
										el conocimiento de las mareas es esencial para planificar tus
										actividades y aprovechar al máximo este entorno.</p>
									




									<div class="cleaner"></div>
									<div class="button_01">
										<a href="/info/mareas">Pronóstico de mareas</a>
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
								<h3>Remises</h3>
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
								<h3>Almacenes</h3>
								<p>Donec augue sem, interdum sed elementum a, feugiat id
									ligula. Sed id blandit dolor. Curabitur nibh ligula.</p>
							</div>
							<div class="button_01">
								<a href="#">Read more</a>
							</div>
							<div class="cleaner_h30"></div>
							<div class="image_wrapper">
								<a href="#"><img src="images/image_02.jpg" alt=""
									width="260" height="120" /></a>
							</div>
							<h3>Jardinería</h3>
							<p>Donec augue sem, interdum sed elementum a, feugiat id
								ligula. Sed id blandit dolor. Curabitur nibh ligula.</p>
							<div class="cleaner_h30"></div>
							<div class="image_wrapper">
								<a href="#"><img src="images/image_02.jpg" alt=""
									width="260" height="120" /></a>
							</div>
							<h3>Construcción</h3>
							<p>Donec augue sem, interdum sed elementum a, feugiat id
								ligula. Sed id blandit dolor. Curabitur nibh ligula.</p>
							<div class="button_01">
								<a href="#">Read more</a>
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
						Copyright &copy; 2048 <a href="#">Your Company Name</a> | Designed
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