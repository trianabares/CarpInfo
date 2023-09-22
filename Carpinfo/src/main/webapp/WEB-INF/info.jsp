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
								<h1>
									<a href="/"> <img src="/images/logo.png" alt="Carpinfo" /></a><span>Carpinfo</span>
								</h1>
							</div>
							<div id="menu">
								<ul>
									<li><a href="/">INFO UTIL</a></li>
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
									<h2>Inicio de Sesión</h2>
									<form action="/login" method="POST">
										<label>Email</label> <input type="text" name="email"
											class="input_field" />
										<div class="cleaner"></div>
										<label>Clave</label> <input type="password" value=""
											name="password" class="input_field" />
										<div class="cleaner"></div>
										<input type="submit" name="login" value="Ingresar" alt="login"
											id="submit_btn" />
									</form>
									<a href="/registro">Registrarse</a>
									<p class="text-danger my-4"> ${error} </p>
								</c:when>
								<c:otherwise>
									<h2>
										Bienvenido,
										<c:out value="${usuario.nombre}"></c:out>
									</h2>
									<div id="fotoPerfil" class="d-flex">
										<c:choose>
											<c:when test="${usuario.profileImage != '/images/'}">
												<img class="rounded-circle" alt="Foto de perfil"
													src="${usuario.profileImage}">
											</c:when>
											<c:otherwise>
												<img class="rounded-circle" alt="Foto de perfil"
													src="/images/carpincho-icono.png">
											</c:otherwise>
										</c:choose>
										<p class="my-2">
											<a href="/perfil/${usuario.id}">Ir a mi perfil</a>
										</p>
									</div>
									<hr>
									<a href="/logout">Cerrar sesión</a>
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
									<p>Aquí encontrarás todos los horarios de lancha colectiva
										para que regreses a tu hogar o planifiques tu visita de manera
										conveniente y disfrutes al máximo de este hermoso destino.
										¡Explora y descubre todos los horarios disponibles!</p>
										
									<table id="tablaHorariosSemana" style="display: none;"
										class="table table-striped float_r">
										<thead>
											<tr>
												<th>DE LUNES A VIERNES</th>
												<th>SALIDA DE TIGRE</th>
												<th>LLEGA A TIGRE</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>MAÑANA</td>
												<td>07:00</td>
												<td>06:30</td>
											</tr>
											<tr>
												<td></td>
												<td>08:00</td>
												<td>07:30</td>
											</tr>
											<tr>
												<td></td>
												<td>09:00</td>
												<td>08:30</td>
											</tr>
											<tr>
												<td></td>
												<td>10:00</td>
												<td>10:15</td>
											</tr>
											<tr>
												<td></td>
												<td>11:30</td>
												<td>11:30</td>
											</tr>
											<tr>
												<td></td>
												<td>12:45</td>
												<td>12:30</td>
											</tr>
											<tr>
												<td>TARDE</td>
												<td>13:20</td>
												<td>14:00</td>
											</tr>
											<tr>
												<td></td>
												<td>15:00</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td></td>
												<td>15:30</td>
												<td>16:15</td>
											</tr>
											<tr>
												<td></td>
												<td>15:00</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td></td>
												<td>16:15</td>
												<td>16:45</td>
											</tr>
											<tr>
												<td></td>
												<td>17:30</td>
												<td>17:00</td>
											</tr>
											<tr>
												<td></td>
												<td>18:10</td>
												<td>17:45</td>
											</tr>
											<tr>
												<td></td>
												<td>18:30</td>
												<td>18:15</td>
											</tr>
											<tr>
												<td></td>
												<td>19:00</td>
												<td>18:30</td>
											</tr>
											<tr>
												<td>NOCHE</td>
												<td>20:00</td>
												<td>18:50</td>
											</tr>
											<tr>
												<td></td>
												<td>21:00</td>
												<td>20:00</td>
											</tr>
										</tbody>
									</table>

									<div class="cleaner"></div>
									<div class="button_01">
										<button id="verHorariosSemana">Días de semana</button>
									</div>
									<script>
										const btnVerHorarios = document
												.getElementById('verHorariosSemana');
										const tablaHorarios = document
												.getElementById('tablaHorariosSemana');

										btnVerHorarios
												.addEventListener(
														'click',
														function() {
															if (tablaHorarios.style.display === 'none') {
																tablaHorarios.style.display = 'block';
															} else {
																tablaHorarios.style.display = 'none';
															}
														});
									</script>

									<table id="tablaHorariosFinde" style="display: none;"
										class="table table-striped float_r">
										<thead>
											<tr>
												<th>SÁBADOS Y DOMINGOS</th>
												<th>SALIDA DE TIGRE</th>
												<th>LLEGA A TIGRE</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>MAÑANA</td>
												<td>07:00</td>
												<td>06:30</td>
											</tr>
											<tr>
												<td></td>
												<td>08:00</td>
												<td>07:30</td>
											</tr>
											<tr>
												<td></td>
												<td>09:00</td>
												<td>08:30</td>
											</tr>
											<tr>
												<td></td>
												<td>10:00</td>
												<td>10:15</td>
											</tr>
											<tr>
												<td></td>
												<td>10:30</td>
												<td>11:30</td>
											</tr>
											<tr>
												<td></td>
												<td>11:00</td>
												<td>12:30</td>
											</tr>
											<tr>
												<td>TARDE</td>
												<td>11:30</td>
												<td>14:00</td>
											</tr>
											<tr>
												<td></td>
												<td>12:00</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td></td>
												<td>13:00</td>
												<td>16:15</td>
											</tr>
											<tr>
												<td></td>
												<td>13:20</td>
												<td>16:45</td>
											</tr>
											<tr>
												<td></td>
												<td>14:00</td>
												<td>18:00</td>
											</tr>
											<tr>
												<td></td>
												<td>15:00</td>
												<td>18:15</td>
											</tr>
											<tr>
												<td></td>
												<td>15:30</td>
												<td>18:30</td>
											</tr>
											<tr>
												<td></td>
												<td>16:00</td>
												<td>18:50</td>
											</tr>
											<tr>
												<td>NOCHE</td>
												<td>17:00</td>
												<td>20:00</td>
											</tr>
											<tr>
												<td></td>
												<td>17:30</td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td>18:10</td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td>18:30</td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td>19:00</td>
												<td></td>
											</tr>
											<tr>
												<td>*Unicamente los días Sabado</td>
												<td>20:00</td>
												<td></td>
											</tr>
										</tbody>
									</table>

									<div class="cleaner"></div>
									<div class="button_01">
										<button id="verHorariosFinde">Fines de semana</button>
									</div>
									<script>
										const btnVerHorariosFinde = document
												.getElementById('verHorariosFinde');
										const tablaHorariosFinde = document
												.getElementById('tablaHorariosFinde');

										btnVerHorariosFinde
												.addEventListener(
														'click',
														function() {
															if (tablaHorariosFinde.style.display === 'none') {
																tablaHorariosFinde.style.display = 'block';
															} else {
																tablaHorariosFinde.style.display = 'none';
															}
														});
									</script>
									<div class="mt-4">
										<img src="/images/phone.png" class="phone" alt="phone" />
										<h6 class="contacto">4749-0900</h6>
									</div>

									<br>
									<!-- 									DIAS DEL CATAMARÁN SANITARIO -->
									<h2>Salud y seguridad</h2>

									<p class="em_text">En esta sección, podrás acceder al
										recorrido del catamarán sanitario, diseñado para brindar
										asistencia médica en el delta. Te proporcionaremos los
										horarios y lugares donde podrás abordar este servicio.</p>
									<p class="em_text">Además, te facilitaremos los números de
										teléfono de las salas de primeros auxilios, los bomberos, la
										prefectura y la policía. Estos contactos son fundamentales
										para que puedas recibir ayuda y asistencia en caso de
										cualquier eventualidad.</p>
									<p class="em_text">Nuestra prioridad es tu bienestar, por
										lo que te invitamos a explorar esta sección y tener a mano
										esta información valiosa.</p>



									<div class="container">
										<div class="row">
											<div class="col">
												<h5>Ambulancia:</h5>
												<img src="/images/phone.png" class="phone" alt="phone" />
												<h6 class="contacto">011 4512-9999</h6>
											</div>
											<div class="col">
												<h5>Centro de salud:</h5>
												<img src="/images/phone.png" class="phone" alt="phone" />
												<h6 class="contacto">011 4728-0525</h6>
											</div>
										</div>
										<div class="row mt-3">
											<div class="col">
												<h5>Prefectura:</h5>
												<img src="/images/phone.png" class="phone" alt="phone" />
												<h6 class="contacto">011 4512-4902</h6>
											</div>
											<div class="col">
												<h5>COT (seguridad):</h5>
												<img src="/images/phone.png" class="phone" alt="phone" />
												<h6 class="contacto">011 4992-7648</h6>
											</div>
										</div>
									</div>

									<h5 class="text-center mt-3">Rercorrido del catamarán
										sanitario:</h5>
									<table id="tablaCatamaranSanitario" style="display: none;"
										class="table table-striped float_r">
										<thead>
											<tr>
												<th>Semana</th>
												<th>Lunes</th>
												<th>Martes</th>
												<th>Miercoles</th>
												<th>Jueves</th>
												<th>Viernes</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1° y 3°</td>
												<td>Canal Honda</td>
												<td>A° Correa y Pajarito</td>
												<td>Rio Sarmiento</td>
												<td>A° Espera</td>
												<td>A° Caraguatá 800</td>
											</tr>
											<tr>
												<td>2° y 4°</td>
												<td>Esc. Nº 17</td>
												<td>Abra vieja</td>
												<td>Esc. Nº 12</td>
												<td>A° Horca y Paraná</td>
												<td>Río Luján</td>
											</tr>
										</tbody>
									</table>
									<div class="cleaner"></div>
									<div class="button_01">
										<button id="verRecorridoCata">Recorrido del Cata</button>
									</div>
									<script>
										const btnVerRecorridoCata = document
												.getElementById('verRecorridoCata');
										const tablaCatamaranSanitario = document
												.getElementById('tablaCatamaranSanitario');

										btnVerRecorridoCata
												.addEventListener(
														'click',
														function() {
															if (tablaCatamaranSanitario.style.display === 'none') {
																tablaCatamaranSanitario.style.display = 'block';
															} else {
																tablaCatamaranSanitario.style.display = 'none';
															}
														});
									</script>
									<!-- 								AGUA POTABLE -->
									<br>
									<h2>Dias y horarios de AYSA</h2>

									<p class="em_text">Aquí encontrarás toda la información
										necesaria sobre los horarios en los que la empresa de agua
										potable Aysa realiza la distribución en esta región. Sabemos
										lo importante que es contar con agua potable en el delta, y
										nos aseguraremos de que estés informado sobre cuándo puedes
										esperar la llegada del suministro.</p>

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
								<c:forEach var="publicacion" items="${publicaciones}">
									<h3>${publicacion.nombre}</h3>
									<img src="${publicacion.publiImage }" alt="" width=220px
										height=120px />
									<p>${publicacion.contenidos}</p>
									<div class="button_01">
										<a href="${publicacion.enlace}">Ver más</a>
									</div>
									<div class="cleaner_h30"></div>
								</c:forEach>
							</div>
						</div>
						<!-- end of template_sidebar -->
						<div class="cleaner"></div>
					</div>
					<!-- end of content_wrapper -->
					<div id="footer">
						<ul class="footer_menu">
							<li><a href="/">Info</a></li>
							<li><a href="/turismo">Turismo</a></li>
							<li><a href="/vecinos">Vecinos</a></li>
							<li class="last_menu"><a href="/contacto">Contacto</a></li>
						</ul>
						Copyright &copy; 2023 <a href="#">CarpInfo</a> | Designed by <a
							target="_blank" rel="nofollow" href="http://www.templatemo.com">templatemo</a>
					</div>
					<!-- end of footer -->
					<div class="cleaner"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>