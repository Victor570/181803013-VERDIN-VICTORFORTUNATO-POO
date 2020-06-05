<%-- 
    Document   : fundamental
    Created on : 27/05/2020, 12:40:31 AM
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
<meta name="keywords"  content="Sitio web">


<!--etiquetas link o de enlace-->
<link rel="stylesheet"  href="estio.css"/>

</head>

<body>
<div id="page"> <!--caja contenedora-->

<header>  <!--cabecera-->
<h1>Conceptos fundamentales</h1>
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
 <h2>...</h2>

<article>   <!--contenido del sitio-->


<hr><h3>Clase</h3><hr>

<table>
<p>Definiciones de las propiedades y comportamiento de un tipo de objeto concreto. La instanciación es la lectura de estas definiciones y la creación de un objeto a partir de ellas.</p>
</table>


<hr><h3>Herencia</h3><hr>
<table>
<p>Es la facilidad mediante la cual la clase D hereda en ella cada uno de los atributos y operaciones de C, como si esos atributos y operaciones hubiesen sido definidos por la misma D. Por lo tanto, puede usar los mismos métodos y variables publicas declaradas en C. Los componentes registrados como "privados" (private) también se heredan, pero como no pertenecen a la clase, se mantienen escondidos al programador y sólo pueden ser accedidos a través de otros métodos públicos. Esto es así para mantener hegemónico el ideal de OOP. </p>
</table>


<hr><h3>Objeto</h3><hr>

<table>
<p>Entidad provista de un conjunto de propiedades o atributos (datos) y de comportamiento o funcionalidad (métodos) los mismos que consecuentemente reaccionan a eventos. Se corresponde con los objetos reales del mundo que nos rodea, o a objetos internos del sistema (del programa). Es una instancia a una clase. </p>
</table>

<hr><h3>Método</h3><hr>

<table>
<p>Algoritmo asociado a un objeto (o a una clase de objetos), cuya ejecución se desencadena tras la recepción de un "mensaje". Desde el punto de vista del comportamiento, es lo que el objeto puede hacer. Un método puede producir un cambio en las propiedades del objeto, o la generación de un "evento" con un nuevo mensaje para otro objeto del sistema.</p>
</table>


<hr><h3>Evento</h3><hr>
<table>
<p>Es un suceso en el sistema (tal como una interacción del usuario con la máquina, o un mensaje enviado por un objeto). El sistema maneja el evento enviando el mensaje adecuado al objeto pertinente. También se puede definir como evento, a la reacción que puede desencadenar un objeto, es decir la acción que genera.</p>
</table>


<hr><h3>Mensaje</h3><hr>

<table>
<p>Una comunicación dirigida a un objeto, que le ordena que ejecute uno de sus métodos con ciertos parámetros asociados al evento que lo generó. </p>
</table>

<hr><h3>Propiedad o atributo</h3><hr>

<table>
<p>Contenedor de un tipo de datos asociados a un objeto (o a una clase de objetos), que hace los datos visibles desde fuera del objeto y esto se define como sus características predeterminadas, y cuyo valor puede ser alterado por la ejecución de algún método.</p>
</table>


<hr><h3>Estado interno</h3><hr>
<table>
<p>Es una variable que se declara privada, que puede ser únicamente accedida y alterada por un método del objeto, y que se utiliza para indicar distintas situaciones posibles para el objeto (o clase de objetos). No es visible al programador que maneja una instancia de la clase.</p>
</table>


<hr><h3>Componentes de un objeto</h3><hr>

<table>
<p>Atributos, identidad, relaciones y métodos.</p>
</table>


<hr><h3>Identificación de un objeto</h3><hr>

<table>
<p>Un objeto se representa por medio de una tabla o entidad que esté compuesta por sus atributos y funciones correspondientes.

En comparación con un lenguaje imperativo, una "variable", no es más que un contenedor interno del atributo del objeto o de un estado interno, así como la "función" es un procedimiento interno del método del objeto.</p>
</table>

<hr><br><br><hr>

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

<h3>Elaborado por Víctor Hernández &reg; </h3>

</footer>

</div>
</body>
</html>