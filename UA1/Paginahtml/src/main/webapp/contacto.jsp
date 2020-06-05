<%-- 
    Document   : contacto
    Created on : 27/05/2020, 12:35:01 AM
    Author     : VICTOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es"> <!--lenguaje del documento-->

<head>

<title>POO</title>
 <!--metadatos-->
<meta charset="utf-8"/>
<meta name="description"  content="Informacion dela página">
<meta name="keywords"  content="sitio web">


<!--etiquetas link o de enlace-->
<link rel="stylesheet"  href="estio.css"/>

</head>

<body>
<div id="page"> <!--caja contenedora-->

<header>  <!--cabecera-->
<h1>Contacto</h1>
</header>     




<nav>  <!--sección menu-->
<ul> <!--menu-->
<li><a href="indexmm.html"><h4>Inicio</h4></a></li>
<li><a href="informacion.html"><h4>Definición</h4></a></li>
<li><a href="fundamental.html"><h4>Conceptos fundamentales</h4></a></li>
<li><a href="contacto.html"><h4>Contacto</h4></a></li>
</ul>
</nav>


<section>   <!--seccion de contenido-->
 <h2>Contactos</h2>

<article>   <!--contenido del sitio-->



<p>En está sección podrá dejar un comentario</p>

<form>
<h1>Creación de cuenta</h1>
<label for="username">Nombre:</label>
<input type="text"  id="nombre"  placeholder="Escribe tu nombre completo">
<br/>
<label>Email:</label>
<input type="text"  id="email"  placeholder="Escribe tu email">
<br/>
<label>Contraseña:</label>
<input  type="password"  id="clave"  placeholder="Escribe tu contraseña">

<h1>Aquí escríbenos tu comentario</h1>
<textarea></textarea>
<br/>
<center>
<input type="button"  id="terminado"  value="Terminado">
<input type="reset"  id="limpiar"  value="Limpiar">
</center>

</form>

</article>

</section>

<aside> <!--publicidad o redes sociales-->

<h2>Redes sociales </h2>

<br/>
<a href="https://www.instagram.com/victor_hernandez17_/"  target="_blank"><img src="https://www.coopdgii.com/wp-content/uploads/2016/12/nuevo-diseno-de-Instagram-2.png" width="50px" height="50px" /></a>
<br/>
<a href="https://www.facebook.com/victor.verdin.58" target="_blank"><img src="https://lh3.googleusercontent.com/proxy/-AgOCe5lW2_PapBC-oIws2KORyM8W_Tvmf2M6XDnVB3AYNduZGFvkdBQp-lpRcViHtXrroxZB5eKOfB7p-MJay_13UmqISLkxhqgITJtFe4JewRzz3U" width="50px" height="50px" /></a>
<br/>

</aside>


<footer> <!--pie de pagina-->

<h3><center>Elaborado por Víctor Hernández &reg;</center></h3>

</footer>

</div>
</body>
</html>