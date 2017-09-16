
<%@page import="dao.UsuarioDAO" %>
<%!  
    UsuarioDAO objDAO=new UsuarioDAO();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body  background="imgOLD/casa.jpg">
        
        <form name="Home.jsp"  method="get" >

              <table width="100" border="0" align="right" style='width:300px; height:25px' >
<tr> 
<td><input type="submit" value="Salir" style='width:150px; height:25px' name="btnSalir"/></td>
<td><input type="submit" value="Salados" style='width:200px; height:25px' name="btnComputadoras"/></td>
<td><input type="submit" value="Dulces" style='width:200px; height:25px' name="btnCelulares"/></td>
<td><input type="submit" value="Bebidas" style='width:200px; height:25px' name="btnMemorias"/></td>
</tr>
</table>  
        
             
</form>
       
        
        
         <%  
            
   if(request.getParameter("btnComputadoras")!=null){
       response.sendRedirect("Salados.jsp");
   }
   else if(request.getParameter("btnCelulares")!=null){
       response.sendRedirect("Dulces.jsp");
   }
   else if(request.getParameter("btnMemorias")!=null){
       response.sendRedirect("Bebidas.jsp");
   }
   else if(request.getParameter("btnSalir")!=null){
       objDAO.cleanData();
       response.sendRedirect("Inicio.jsp");
   }
   
        %>   
    </body>
</html>
