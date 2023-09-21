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
<title>Contacto</title>
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
									<h2>Nuestro Equipo</h2>

									<p>Somos un pequeño equipo de desarrolladores web jóvenes,
										conformado por:</p>

									<div class="row">
										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Cande">
												<div class="card-body">
													<h5 class="card-title">Candela</h5>
													<h5 class="card-title">Fatala</h5>
													<a href="mailto:candelafatala@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a
															href="https://www.linkedin.com/in/candela-fatala-920a21270/"
															class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a
															href="https://github.com/candelafatala"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>


										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Elias">
												<div class="card-body">
													<h5 class="card-title">Elias</h5>
													<h5 class="card-title">Garcia</h5>
													<a href="mailto:eliasgarcia4824@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a href="https://www.linkedin.com/in/elias-garcia-686779249/" class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a href="https://github.com/elias-garcia-0"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>


										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Braian">
												<div class="card-body">
													<h5 class="card-title">Braian</h5>
													<h5 class="card-title">Lopez</h5>
													<a href="mailto:braiilopez16@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a
															href="https://www.linkedin.com/in/braian-lopez-407093289/"
															class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a
															href="https://github.com/BraianLopez"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Leon">
												<div class="card-body">
													<h5 class="card-title">León</h5>
													<h5 class="card-title">Vallejos</h5>
													<a href="mailto:leonrvallejos@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a href="#" class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a
															href="https://github.com/VallejosLeon"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Ignacio">
												<div class="card-body">
													<h5 class="card-title">Ignacio</h5>
													<h5 class="card-title">Jerez</h5>
													<a href="mailto:ignanj8@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a href="https://www.linkedin.com/in/ignaciojerez/"
															class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a href="https://github.com/ignacix"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>


										<div class="col-md-4 mx-auto">
											<div class="card text-center">
												<img src="/images/stickman.jpg" class="card-img-top"
													alt="Triana">
												<div class="card-body">
													<h5 class="card-title">Triana</h5>
													<h5 class="card-title">Bares</h5>
													<a href="mailto:trianabares@gmail.com"
														class="btn btn-outline-success">Enviar correo</a>
													<div class="d-flex mt-3" id="custom-align-center">
														<!-- Agrega 'id' aquí -->
														<a href="https://www.linkedin.com/in/triana-bares/" class="btn btn-primary px-1"><img
															src="/images/linkedin-logo.png" alt="LinkedIn"
															width="32px"></a> <a href="https://github.com/trianabares"
															class="btn btn-secondary px-1"><img
															src="/images/github-logo.png" alt="GitHub" width="32px"></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="cleaner"></div>
								</div>
								<div class="content_section">
									<h2>Nuestro Propósito</h2>

									<p>Esta propuesta surge a partir de la falta de un lugar
										centralizado donde se pueda alojar y mostrar información
										relevante dentro de la zona del delta en el Tigre, localidad
										de la provincia de Buenos Aires, Argentina. Nos pareció que
										faltaba un sitio dedicado a las necesidades de tanto la
										comunidad de vecinos como de los visitantes.</p>

									<p>El sitio está destinado a proporcionar información
										pertinente sobre la zona, incluyendo actualizaciones sobre el
										cauce del río y horarios de los servicios (como lanchas de
										transporte y distribución de agua potable), además de promover
										el turismo en la localidad, con un apartado donde los
										emprendedores locales vana apoder promocionar sus servicios.
										También existe un espacio para que los vecinos dejen sus
										opiniones para mejorar la comunidad y se fomente la
										comunicación.</p>

								</div>
								<div class="content_section">
									<h2>Modelo de Negocios</h2>

									<p>La forma en que este proyecto puede subsistir en el
										tiempo es gracias a tanto al apoyo de la municipalidad, como
										al espacio publicitario habilitado para cualquiera que quiera
										promocionar su emprendimiento en nuestro sitio.</p>
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
