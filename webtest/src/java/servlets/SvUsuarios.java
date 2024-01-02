/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Oradores;


@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Oradores> listaOradores = new ArrayList<>();
        listaOradores = control.traerOradores();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaOradores", listaOradores);
        
        response.sendRedirect("oradores.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String comentario = request.getParameter("comentario");
        
        Oradores oro = new Oradores();
        oro.setNombre(nombre);
        oro.setApellido(apellido);
        oro.setComentario(comentario);
        
        control.crearOradores(oro);
        response.sendRedirect("index.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
