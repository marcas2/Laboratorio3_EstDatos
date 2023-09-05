<%-- 
    Document   : listarVideos
    Created on : 30/08/2023, 10:14:43 a. m.
    Author     : Maria
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ReproductorVideos</title>
         <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <header>
            <h1>  Listar videos</h1>
            <nav> 
            <a href="index.jsp" title="Mi enlace">Inicio</a>
            <a href="agregarVideo.jsp" title="Mi enlace1">Agregar Videos</a>
            <a href="listarVideos.jsp" title="Mi enlace2">Listar Videos</a>
            </nav>
        </header>
        <div class="b">
            <% 
             /**
             * obtener el arraylist de la solicitud
             */      
            ArrayList<Video> misVideos= (ArrayList<Video>)request.getAttribute("misVideos");
            /**
             * Manejo de excepciones en caso de no tener valores
             */
            if (misVideos != null) { 
             for (Video v : misVideos) { 
                 /**
                  * Escribir los datos
                  */
                 
                out.println("Titulo: "+v.getTitulo()+"<br>");
                out.println("Autor: "+v.getAutor()+"<br>");
                out.println("Año: "+v.getAnio()+"<br>");
                out.println("Categoria: "+v.getCategoria()+"<br>");
                out.println("Url: "+v.getUrl()+"<br>");
                out.println("Letra: "+v.getLetra()+"<br>");
                 out.println("___________________________________________________________"+"<br>");
        } %>
        <% } else { 
            out.println("No hay videos");
         } %>

        </div>
        <footer>
                <p>&copy; 2023 Blog de Dietas. Todos los derechos reservados.</p>
          </footer>
    </body>
</html>
