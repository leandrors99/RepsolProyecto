
<%@page import="bean.UsuarioBean" %>
<%@page import="dao.UsuarioDAO" %>
<%!
    String dni;
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objBean=new UsuarioBean();
    UsuarioBean objCargado=new UsuarioBean();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/fondoAdministrador.jpg">
    
    <form name="AdministradorUsuarios.jsp"  method="get" >
        <table  width="500"   border="0" align="left" style="position:absolute;top:250px;left:200px;" >
<tr>
<td><input type="submit" value="Registrar Nuevo Administrador" style='width:300px; height:25px' name="btnRegistrar" /></td>
</tr>
<tr>
<td><input type="submit" value="Administrar Usuarios" style='width:300px; height:25px' name="btnAdministrarUsuarios"/></td>
</tr>
<tr>
<td> <input type="submit" value="Administrar Ventas" style='width:300px; height:25px' name="btnAdministrarVentas"/></td>
</tr>
<tr>
<td> <input type="submit" value="Salir" style='width:300px; height:25px' name="btnSalir"/></td>
</tr>
</table >
   <table width="500"   border="0" align="center" style="position:absolute;top:250px;left:700px;" >
<tr>
    <td><font color="white" />Usuario:</td>
    <td ><input type="text" name="txtuser" value="<%if(objCargado.getUser()!=null){%><%=objCargado.getUser()%><%}%>" style='width:200px; height:25px'/></td>
    <td ><input type="submit" value="Buscar x DNI" align="center" style='width:200px; height:25px' name="btnBuscarxDNI" /> </td>
</tr>
<tr>
<td><font color="white" />Contraseña:</td>
<td><input type="text" name="txtpass" value="<%if(objCargado.getPass()!=null){%><%=objCargado.getPass()%><%}%>" style='width:200px; height:25px'/> </td>
<td ><input name="btnEliminar" type="submit" value="Eliminar" align="center" style='width:200px; height:25px' name="btnEliminar" /> </td>
<%--<td ><input type="submit" value="Modificar" align="center" style='width:200px; height:25px' name="btnModificar" /> </td>--%>
</tr>
<tr>
<td><font color="white" />Nombre:</td>
<td><input type="text" name="txtnombre" value="<%if(objCargado.getNombre()!=null){%><%=objCargado.getNombre()%><%}%>" style='width:200px; height:25px'/> </td>
 <td ><input type="submit" value="Recuperar Contraseña" align="center" style='width:200px; height:25px' name="btnRecuperarContraseña" /> </td>

</tr>
<tr>
    <td><font color="white" />Apellido:</td>
    <td ><input type="text" name="txtapellido" value="<%if(objCargado.getApellido()!=null){%><%=objCargado.getApellido()%><%}%>" style='width:200px; height:25px'/></td>
    <td ><input type="submit" value="Limpiar" align="center" style='width:200px; height:25px' name="btnLimpiar" /> </td>
    
</tr>
<tr>
    <td><font color="white" />DNI:</td>
    <td ><input type="text" name="txtdni" value="<%if(objCargado.getDni()!=null){%><%=objCargado.getDni()%><%}%>" style='width:200px; height:25px'/></td>
   <%--<td ><input type="submit" value="Cambiar Contraseña" align="center" style='width:200px; height:25px' name="btnCambiarContraseña" /> </td>--%>
</tr>
<tr>
    <td><font color="white" />Telefono:</td>
    <td ><input type="text" name="txttel" value="<%if(objCargado.getTel()!=null){%><%=objCargado.getTel()%><%}%>" style='width:200px; height:25px'/></td>
    
</tr>
<tr>
    <td><font color="white" />Direccion:</td>
    <td ><input type="text" name="txtdir" value="<%if(objCargado.getDir()!=null){%><%=objCargado.getDir()%><%}%>" style='width:200px; height:25px'/></td>
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
   else if(request.getParameter("btnBuscarxDNI")!=null)
   {
       dni=request.getParameter("txtdni");
       if(dni!=null)
       {
          objCargado=objDAO.Buscarxdni(dni);
          response.sendRedirect("AdministradorUsuarios.jsp");
       }
   }
   else if(request.getParameter("btnLimpiar")!=null)
   {
       objCargado=new UsuarioBean();
       response.sendRedirect("AdministradorUsuarios.jsp");
   }
   else if(request.getParameter("btnEliminar")!=null)
   {
       dni=request.getParameter("txtdni");
       objDAO.EliminarxDNI(dni);
       response.sendRedirect("AdministradorUsuarios.jsp");
   }
  
   
        %>
       
        </form>
    
    </body>
</html>