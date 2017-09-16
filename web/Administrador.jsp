

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/fondoAdministrador.jpg">
        <form name="Administrador.jsp"  method="get" >
    
        <table  width="500"   border="0" align="left" style="position:absolute;top:250px;left:200px;" >
<tr >
<td><input type="submit" value="Registrar Nuevo Administrador" style='width:300px; height:25px' name="btnRegistrar" /></td>
</tr>
<tr>
<td><input type="submit" value="Administrar Usuarios" style='width:300px; height:25px' name="btnAdministrarUsuarios"/></td>
</tr>
<tr>
<td> <input type="submit" value="Administrar Ventas" style='width:300px; height:25px' name="btnAdministrarVentas"/></td>
</tr>
<td> <input type="submit" value="Salir" style='width:300px; height:25px' name="btnSalir"/></td>
</tr>
</table>
        <%  
            
   if(request.getParameter("btnRegistrar")!=null){
       response.sendRedirect("AdministradorRegistrar.jsp");
   }
   else if(request.getParameter("btnAdministrarUsuarios")!=null){
       response.sendRedirect("AdministradorUsuarios.jsp");
   }
   else if(request.getParameter("btnSalir")!=null){
       response.sendRedirect("Inicio.jsp");
   }
   else if(request.getParameter("btnAdministrarVentas")!=null){
       response.sendRedirect("AdministradorVentas.jsp");
   }
   
        %>
        
     </form>   
   </body> 
</html>
