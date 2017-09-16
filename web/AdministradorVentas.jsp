
<%@page import="java.util.ArrayList"%>

<%@page import="bean.ProductoBean" %>
<%@page import="dao.ProductoDAO" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/fondoAdministrador.jpg">
    
    <form name="AdministradorVentas.jsp"  method="get" >
        <table  width="500"   border="0" align="left" style="position:absolute;top:250px;left:200px;" >
<tr>
<td><input type="submit" value="Registrar Nuevo Administrador" style='width:300px; height:25px' name="btnRegistrar" /></td>
</tr>
<tr>
<td><input type="submit" value="Administrar Usuarios" style='width:300px; height:25px' name="btnAdministrarUsuarios"/></td>
</tr>
<tr>
<td> <input onclick="myDeleteFunction()"type="submit" value="Administrar Ventas" style='width:300px; height:25px' name="btnAdministrarVentas"/></td>
</tr>
<tr>
<td> <input type="submit" value="Salir" style='width:300px; height:25px' name="btnSalir"/></td>
</tr>
</table >
   <table id="table" border="1" align="center" width="500" style="position:absolute;top:200px;left:700px;" >
<tr align="center">
    <td><font color="red" />Usuario</td>
    <td><font color="red" />Fecha</td>
    <td><font color="red" />Producto</td>
    <td><font color="red" />Precio</td>

</tr>
<%!
            ArrayList<ProductoBean> listaProductos=null;
            ProductoDAO objDAO=new ProductoDAO();
            ProductoBean objUB=new ProductoBean();
            
            %>
            <%  
            
            listaProductos=objDAO.listaProductos(); 
            
           for(ProductoBean obj: listaProductos)
          {               
         %> 
        
         <tr>
              
         <td><font color="white"><%=obj.getUser()%></font></td>
              <td><font color="white"><%=obj.getFecha()%></font></td>
              <td><font color="white"><%=obj.getProducto()%></font></td>
              <td><font color="white"><%=obj.getPrecio()%></font></td>
           
            </tr>
         <% }
              
%> </font>


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
       
       response.sendRedirect("Administrador.jsp");
   }
   
        %>

       
        </form>
    </body>
</html>
<%--
<input onclick="myDeleteFunction()"
               response.sendRedirect("Administrador.jsp");
               --%>