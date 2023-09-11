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
							<div id="site_title d-flex">
								<h1>
									<a href="/"> <img src="/images/logo.png" alt="Carpinfo" /></a><span>Carpinfo</span>
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

									<h1>
										<c:out value="${mensaje.titulo}"></c:out>
									</h1>
									<h2>
										<c:out value="${mensaje.creador.nombre}"></c:out>
									</h2>
									<p>
										<c:out value="${mensaje.createdAt}"></c:out>
									</p>
									<hr>
									<p>
										<c:out value="${mensaje.contenidos}"></c:out>
									</p>
									<hr>
									<h2>Comentarios</h2>

									<c:forEach var="comentario" items="${comentarios}">
										<p><c:out value="${comentario.contenidos}"></c:out></p>
										<p><c:out value="${comentario.creador.nombre}"></c:out></p>
										<p><c:out value="${comentario.createdAt}"></c:out></p>
										<p>-</p>
									</c:forEach>


									<h2>Nuevo Comentario</h2>
									<form:form action="/foro/${idTema}/${idMensaje}/nuevo"
										method="POST" modelAttribute="nuevocomentario">
										<div class="form-group">
											<form:label class="form-label" path="contenidos"></form:label>
											<form:errors class="text-danger" path="contenidos" />
											<form:textarea class="form-control" path="contenidos" />
										</div>
										<form:input type="hidden" path="creador" value="${usuario.id}" />
										<form:input type="hidden" path="mensaje" value="${mensaje.id}" />
										<button class="btn btn-success mt-2">Agregar</button>
									</form:form>

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
									<div class="image_wrapper">
										<a href="#"><img src="images/image_01.jpg" alt=""
											width="260" height="120" /></a>
									</div>
									<p>Sed et quam vitae ipsum vulputate varius vitae semper
										nunc. Quisque eget elit quis augue pharetra feugiat.</p>
									<div class="button_01">
										<a href="/servicios/${publicacion.id}">Ver m�s</a>
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