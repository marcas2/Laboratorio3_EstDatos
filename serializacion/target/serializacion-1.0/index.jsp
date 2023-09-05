<%-- 
    Document   : index
    Created on : 29/08/2023, 10:34:29 a. m.
    Author     : Sistemas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            text-align: justify;
            color:#3a2347;
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
               min-height: 40vh;
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
    <div class="articulo">
    <main>
        <article>
            <img src="https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2016/09/photo-1470225620780-dba8ba36b745-scaled.jpg?resize=1500%2C1000&quality=50&strip=all&ssl=1" alt="Musica">
      <h2>Conoce sobre musica</h2>
      <p>Sumérgete en el emocionante mundo de la música con nuestra plataforma de reproducción de audio. Aquí encontrarás una amplia variedad de géneros musicales, artistas destacados y listas de reproducción curadas con esmero para satisfacer todos tus gustos.</p>
      
        </article>
        <article>
            
        <a href="agregarVideo.jsp">
            <button type="button">Ingresar un nuevo video</button>
        </a>

        <a href="listarVideos.jsp">
            <button type="button">Listar videos</button>
        </a>
            
        </article>
        <footer>
            <p>&copy; 2023 Blog de Dietas. Todos los derechos reservados.</p>
        </footer>
    </main>
        </div>
</body>
</html>

