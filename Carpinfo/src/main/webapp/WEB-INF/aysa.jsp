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
<title>CarpInfo Aysa</title>
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
										Bienvenido,
										<c:out value="${usuario.nombre}"></c:out>
									</h2>
									<div class="d-flex">
										<img class="rounded-circle" alt="Foto de perfil"
											src="${usuario.profileImage}" width=90px height=60px>
										<p class="my-2">
											E-mail:
											<c:out value="${usuario.email}"></c:out>
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
					<!-- end of header right -->
					<div class="cleaner"></div>
				</div>
				<!-- end of header -->
				<div id="content_wrapper">

					<div id="content_outer">
						<div id="content">
							<div class="content_section">
								<h2>RECORRIDO DE AYSA</h2>
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

								<!-- 									RECORRIDO DOS -->
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
											<td>2</td>
											<td>VIERNES 8/9</td>
											<td>A° PAYCARABY</td>

										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>A° ESTUDIANTE</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>A° C AMBROSONI</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>A° FELICARIA</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>A° FELICARIA ABAJO</td>
										</tr>

									</tbody>

								</table>

								<!-- 									RECRRIDO TRES -->
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
											<td>3</td>
											<td>VIERNES 8/9</td>
											<td>RÍO LUJÁN</td>

										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>RÍO CARAPACHAY</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>MUELLE ZANJÓN</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>A° ANGOSTURA</td>
										</tr>
										<tr>
											<td></td>
											<td>VIERNES 8/9</td>
											<td>CANAL ORTIZ</td>
										</tr>

									</tbody>

								</table>




								<div id="content_bottom"></div>
								<div class="cleaner"></div>
								<div class="button_01">
									<a href="/">Atrás</a>
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