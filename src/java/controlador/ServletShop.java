package controlador;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UsuarioDAO;
import bean.UsuarioBean;
import java.io.PrintWriter;
/**
 *
 * @author jorge
 */
@WebServlet(name = "ServletShop", urlPatterns = {"/ServletShop"})
public class ServletShop extends HttpServlet {
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objUB=new UsuarioBean();
    
     String user,pass,nombre,apellido,dni,tel,dir;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        ArrayList<String> mensajes = new ArrayList<>();
        try {
            
            user=request.getParameter("txtuser");
            pass=request.getParameter("txtpass");
            nombre=request.getParameter("txtnombre");
            apellido=request.getParameter("txtapellido");
            dni=request.getParameter("txtdni");
            tel=request.getParameter("txttel");
            dir=request.getParameter("txtdir");
          /*  if(request.getParameter("btnRegistrar")!=null)
            {*/
                 if(user!=null&&pass!=null&&nombre!=null&&apellido!=null&&dni!=null&&tel!=null&&dir!=null)
                 {
                     objDAO.InsertarPersona(new UsuarioBean(user,pass,nombre,apellido,dni,tel,dir));
                     response.sendRedirect("RegistrarUsuarioHecho.jsp");
                 }
          /*  }
            else if(request.getParameter("btnSalir")!=null){
            response.sendRedirect("Inicio.jsp");}
            */
            }catch (Exception e) {            mensajes.add("Error en el proceso.");
	   mensajes.add("Error: " + e.getMessage());
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
