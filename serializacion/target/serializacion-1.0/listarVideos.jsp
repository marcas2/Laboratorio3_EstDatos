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
            <style>
        @import url('https://fonts.googleapis.com/css2?family=Rubik+Iso&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Rubik+Iso&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Montserrat:wght@500&family=Rubik+Iso&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300&family=Rubik+Iso&display=swap');
         body{
                
                margin: 0;
                background-color: #E9E3F9;
                
            }  article {
                background-color: #fff;
                padding: 1.5rem;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                margin-bottom: 1.5rem;
                max-width: 800px;
              }
            h1{
                font-size: 40px;
                font-family: 'Montserrat', cursive;
                text-align: center;
            }
            h2{
                font-size: 60px;
                font-family: 'Amatic SC', cursive;
                text-align: center;
             
            }
            p{
                font-size: 25px;    
                font-family: 'Amatic SC', sans-serif;
                text-align: justify;
            }

            .image-container {
                display: flex;
                justify-content: center;
            }
            header{
                display: flex;
                justify-content: space-between;
                height: 75px; 
                background-color: #4E2B9E;
                align-items: center;    
            } a, button{
                font-size: 20px;
                font-family: 'Quicksand', sans-serif;
                text-decoration: none;
                color: black;
                padding-left: 20px;
            } nav a{
                font-weight: 600;
                padding-right: 20px;
               
  
                
            }.table-of-contents {
                border: 1px solid #ccc;
                background-color: #f5f5f5;
                padding: 10px;
                margin-bottom: 20px;
                margin-top:20px ;
             } .titulo{
                
                background-color: #2e7a8d44;
                padding: 10px;
                margin-bottom: 20px;
                margin-top:20px ;
             }td, input, textarea, .b{
                font-size: 20px;    
                font-family: 'Quicksand', cursive;
                align-items: center;
                display: flex;
                justify-content: center; 
                min-height: 40vh;
             } .boton{
                 margin-bottom: 20px;
                margin-top:20px ;
                padding-left: 20px;
             }.center{ 
            display: flex;
            justify-content: center;}
             button{
                
                font-size: 20px;
                font-family: 'Quicksand', sans-serif;
                color: black;
                padding-left: 20px;
                text-align: center;
             }.left{ 
            display: flex;
            justify-content: left;}
             main, .articulo{
                  justify-content: center;
                  text-align: center;
                  color:#3a2347;
             }header {
            justify-content: center;
                  text-align: center;
             }.a{
                 background-color: #AB98DD;
                  text-align: center;
             }.articulo{
               align-items: center;
               display: flex;
               flex-direction: column;
               justify-content: center; 
               min-height: 70vh;
             } img{
                 display: block;
                 margin: 0 auto;
                 max-width: 100%;
                 height: auto;
             } footer{

                text-align: center;
                padding: 1rem;
             }
    </style>
    </head>
    <body>
         <div class="arriba">
        <header>
            <h1>Reproductor de video</h1>
        </header>
         <div class="a">
        <nav>
            <a href="index.jsp" title="Mi enlace">Inicio</a>
            <a href="agregarVideo.jsp" title="Mi enlace1">Agregar Videos</a>
            <a href="listarVideos.jsp" title="Mi enlace2">Listar Videos</a>
        </nav>
        </div>
    </div>
        <div class="b">
            <main>
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
            %> <article><%

                out.println("Id: "+v.getIdVideo()+"<br>");
                out.println("Titulo: "+v.getTitulo()+"<br>");
                out.println("Autor: "+v.getAutor()+"<br>");
                out.println("Año: "+v.getAnio()+"<br>");
                out.println("Categoria: "+v.getCategoria()+"<br>");
                out.println("Url: "+v.getUrl()+"<br>");
                out.println("Letra: "+v.getLetra()+"<br>");

                %></article><%
        } %>
        <% } else { 
            out.println("No hay videos");
         } %>
            
            </main>
        </div>
        <footer>
                <p>&copy; 2023 Blog de Dietas. Todos los derechos reservados.</p>
          </footer>
    </body>
</html>
