<%-- 
    Document   : agregarVideo
    Created on : 29/08/2023, 10:45:43 a. m.
    Author     : Maria
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
            justify-content: center;
            align-items: center;
            display: flex;
          
                }
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
               min-height: 80vh;
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
        <table>
        <form action="SvVideo" method="POST">
            <tr>
        <td>Id Video:</td>
        <td><input type="type" name="idvideo"></td>
        </tr><tr>
        <td>Titulo:</td>
        <td><input type="type" name="titulo"></td>
        </tr><tr>
        <td>Autor:</td>
        <td><input type="type" name="autor"></td>
        </tr><tr>
        <td>Año:</td>
        <td><input type="type" name="anio"></td>
        </tr><tr>
        <td>Categoria:</td>
        <td><input type="type" name="categoria"></td>
        </tr><tr>
        <td>Url:</td>
        <td><textarea id="id" name="url" rows="5" cols="20"></textarea></td>
        </tr><tr>
        <td>Letra:</td>
        <td><textarea id="id" name="letra" rows="5" cols="20"> </textarea></td>
        </tr>
        </table>
        <div class="left"> 
            <input id="boton" type="submit" value="Agregar video">
            <input type="reset" value="Eliminar"/>
           </div>
          </form>
          </article>
         </main>
        </div>
        <div class="center"> 
            <button><a href="index.jsp" title="Regresar">Regresar</a></button >
        </div>
        
          <footer>
                <p>&copy; 2023 Reproductor de musica. Todos los derechos reservados.</p>
          </footer>
    </body>
</html>
