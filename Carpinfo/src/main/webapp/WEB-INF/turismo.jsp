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
									<h2>Historia de la isla</h2>
									<p>Hace aproximadamente 3500 a�os, se asentaron en este
										territorio los primeros pobladores de lo que es hoy el partido
										de Tigre. La informaci�n acerca de los primeros habitantes del
										distrito proviene de diferentes sitios arqueol�gicos, como los
										del arroyo Sarand�, arroyo Guaz�-Namb� y La Bellaca, en Villa
										La �ata. En el siglo XVI, a la llegada de los conquistadores
										europeos, los guaran�es habitaban la zona del delta y
										comunidades de querand�es viv�an en la llanura pampeana. La
										colonizaci�n comenz� con la fundaci�n de la ciudad de Buenos
										Aires, en 1580, cuando el gobernador Juan de Garay reparti�
										tierras para estancias y chacras.</p>
								</div>
								<div class="content_section">
									<h2>Casa Sarmiento</h2>
									<p class="em_text">La Casa Museo Sarmiento es un lugar
										hist�rico ubicado en Buenos Aires, Argentina. Como
										mencionaste, su primer propietario fue Federico �lvarez de
										Toledo Bedoya, un estanciero que la construy� en 1855.
										Federico �lvarez de Toledo Bedoya era un amigo cercano de
										Domingo Faustino Sarmiento y compart�a con �l ideas pol�ticas
										y una visi�n com�n para el futuro de Argentina. Ambos eran
										opositores al r�gimen de Juan Manuel de Rosas y, debido a su
										oposici�n, se vieron obligados a exiliarse en Chile, donde
										desarrollaron una relaci�n de aprecio mutuo.</p>
									<img style=width:500px src="/images/casasarmiento.jpg" alt="Casa Sarmiento" />
									<div class="cleaner"></div>
									<div class="button_01 my-2">
										<a
											href="https://www.welcomeargentina.com/tigre/museo-sarmiento.html">Ver
											m�s</a>
									</div>
									<div class="cleaner"></div>
								</div>
								<div class="content_section">
									<h2>Museo Haroldo Conti</h2>
									<p class="em_text">La casa perteneci� al escritor argentino
										Haroldo Conti, quien la adquiri� en el a�o 1955. All� escribi�
										la novela Sudeste (1962) y muchos de sus cuentos, entre ellos
										La balada del �lamo carolina (1975). Adem�s de escritor, fue
										periodista, piloto de avi�n, seminarista, navegante, nadador
										de aguas abiertas, guionista de cine y docente. Milit� en el
										PRT (Partido Revolucionario de los Trabajadores) y en el FAS
										(Frente Antiimperialista por el Socialismo). Fue secuestrado
										en su domicilio, en Buenos Aires, el 5 de mayo de 1976 por
										personal del Batall�n de Inteligencia 601. Permanece
										desaparecido.</p>
									<p>Existen dos espacios: el rinc�n del escritor ubicado
										dentro de la vivienda en la que se conservan objetos
										emblem�ticos, como la mesa donde escribi� Sudeste, y una
										construcci�n reciente en la entrada al museo que funciona como
										biblioteca de la memoria. En la Casa-museo se dictan talleres
										abiertos al p�blico de literatura y artes, y se realizan
										visitas guiadas.</p>
									<img style=width:500px src="/images/haroldoconti.jpg" alt="Museo Haroldo Conti" />
									<div class="cleaner"></div>
									<div class="button_01 my-2">
										<a
											href="http://vivitigre.gob.ar/actividades/museo-haroldo-conti/">Ver
											m�s</a>
									</div>
									<div class="cleaner"></div>
								</div>
								<div class="content_section">
									<h2>Paseo Tres Bocas</h2>
									<p class="em_text">El viaje a Tres Bocas en Tigre es
										altamente recomendado como un escape tranquilo desde Buenos
										Aires. Aunque es solo una peque�a porci�n del vasto Delta del
										Tigre, me sorprendi� gratamente c�mo logra proporcionar una
										desconexi�n r�pida de la agitaci�n de la ciudad. Si est�s
										buscando un lugar para conectarte con la naturaleza, disfrutar
										de aire fresco, descansar rodeado de vegetaci�n y disfrutar de
										hermosas vistas del r�o sin buscar lujos, te invito a leer
										este art�culo.</p>
									<img style=width:500px src="/images/tresbocas.jpg" alt="Mapa del paseo Tres Bocas" />
									<div class="cleaner"></div>
									<div class="button_01 my-2">
										<a href="http://www.deltatresbocas.com.ar/">Ver m�s</a>
									</div>
									<div class="cleaner"></div>
								</div>
								<div class="content_section">
									<h2>Biblioteca Felicaria</h2>
									<p class="em_text">La Biblioteca Felicaria es un
										lugar especial en las islas del Delta del Tigre, que naci� del
										deseo de Genoveva Germana Agripina Lattuga de ayudar a los
										habitantes de las islas en cuestiones de salud y cultura.
										Fundada en 1958, la biblioteca se ha convertido en un centro
										vital para la comunidad, proporcionando servicios m�dicos y
										una valiosa colecci�n de libros. A lo largo de los a�os, ha
										contribuido al desarrollo de la zona, facilitando la llegada
										de servicios como electricidad, telefon�a e Internet, y
										brindando libros a las escuelas locales en lancha o canoa. Su
										financiamiento proviene de contribuciones locales y subsidios
										gubernamentales.</p>
									<img style=width:500px src="/images/biblioteca.JPG" alt="Biblioteca Felicaria" />
									<div class="cleaner"></div>
									<div class="button_01 my-2">
										<a
											href="https://www.welcomeargentina.com/tigre/biblioteca-felicaria.html">Ver
											m�s</a>
									</div>
									<div class="cleaner"></div>
								</div>
								<div class="content_section">
									<h2>Parque de la Costa</h2>
									<p class="em_text">El Parque de la Costa destaca como uno de 
										los parques de atracciones m�s destacados
										del pa�s. Su extensa extensi�n de catorce hect�reas se
										encuentra estrat�gicamente ubicada entre los r�os Luj�n y
										Tigre. Este parque se caracteriza por contar con un amplio
										sector que alberga todas sus atracciones. Es relevante
										mencionar que muchas de estas atracciones fueron reubicadas
										para dar paso a AquaFan, lo que result� en la divisi�n del
										parque en dos �reas: una dedicada a las atracciones mec�nicas
										y otra enfocada en las atracciones acu�ticas. La secci�n
										mec�nica del parque cuenta con cuatro emocionantes monta�as
										rusas, incluyendo tres de acero y una de agua.</p>
									<img style=width:500px src="/images/parque-de-la-costa.jpg" alt="Parque de la Costa" />
									<div class="cleaner"></div>
									<div class="button_01 my-2">
										<a href="https://www.parquedelacosta.com.ar/">Ver m�s</a>
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
							<li><a href="#">Inicio</a></li>
							<li><a href="#">Turismo</a></li>
							<li class="last_menu"><a href="#">Contact</a></li>
						</ul>
						Copyright &copy; 2048 <a href="#">CarpInfo</a> | Designed by <a
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