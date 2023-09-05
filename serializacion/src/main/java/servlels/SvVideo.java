
package servlels;

import com.umariana.mundo.Video;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {
    
    ArrayList<Video> misVideos= new ArrayList<>();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
    /**
     * Metodo init para leer el archivo apenas se llame el servlet
     * @throws ServletException 
     */
    @Override   
    public void init() throws ServletException {
        super.init();
        /**
         * Inicializa misVideos solo si aún no está inicializado
         * */
        if (misVideos == null) {
            misVideos = new ArrayList<>();
        }
        /**
         * Llamamos para que lea la persistencia
         */
        leerArchivoPersistencia();
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // aqui vienen los datos por GET
      
    }

      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Aquí vienen los datos por POST
        
        String idVideo = request.getParameter("idvideo");
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        String categoria = request.getParameter("categoria");
        String url = request.getParameter("url");
        String letra = request.getParameter("letra");
        
        // Ingresar datos al objeto Video
        Video miVideo = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
        misVideos.add(miVideo);
        
        // Agregar el ArrayList al objeto de solicitud como atributo
        request.setAttribute("misVideos", misVideos);
        
        // Escribir en el archivo de persistencia
        escribirArchivoPersistencia();
        
        // Redireccionar a la página de listarVideos.jsp
        request.getRequestDispatcher("listarVideos.jsp").forward(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
     /**
      * Metodo para ecrbirir el archivo 
      */
    public void escribirArchivoPersistencia() {
        /**
         * Indicamos la ruta
         */
        String rutaArchivo = getServletContext().getRealPath("/data/reporteP.txt");
        File archivo = new File(rutaArchivo);

        try {
            /**
             * Crea el archivo o sobrescribe si ya existe
             * */
            FileWriter fileWriter = new FileWriter(archivo);
            PrintWriter pluma = new PrintWriter(fileWriter);

            /**
             * Escribe cada video en el archivo, separando los datos por comas
             * */
            
            for (Video v : misVideos) {
                pluma.println(v.getIdVideo() + "," +
                             v.getTitulo() + "," +
                             v.getAutor() + "," +
                             v.getAnio() + "," +
                             v.getCategoria() + "," +
                             v.getUrl() + "," +
                             v.getLetra());
            }
            /**
             * Cerramos todos los recursos
             */
            pluma.close();
            fileWriter.close();
        } catch (IOException e) {
            System.err.println("Error al escribir en el archivo: " + e.getMessage());
        }
    }
    /**
     * Metodo para leer el archivo
     * */
    public void leerArchivoPersistencia() {
        /**
         * Indicamos la ruta
         */
        String rutaArchivo = getServletContext().getRealPath("/data/reporteP.txt");
        File archivo = new File(rutaArchivo);

        try {
            /**
             * Inidacamos el archivo a leer
             */
            FileReader fr = new FileReader(archivo);
            BufferedReader lector = new BufferedReader(fr);
            /**
             * Leemos la primera linea
             */
            String linea = lector.readLine();
            /**
             * Bucle while para leer las variables
             */
            while (linea != null) {
                String[] datos = linea.split(",");
                int idVideo = Integer.parseInt(datos[0].trim());
                String titulo = datos[1].trim();
                String autor = datos[2].trim();
                String anio = datos[3].trim();
                String categoria = datos[4].trim();
                String url = datos[5].trim();
                String letra = datos[6].trim();

                Video miVideo = new Video(idVideo, titulo, autor, anio, categoria, url, letra);
                misVideos.add(miVideo);

                linea = lector.readLine();
            }
            /**
             * Cerramos los recursos
             */
            fr.close();
            lector.close();
        } catch (IOException e) {
            System.err.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
