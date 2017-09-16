
<%@page import="bean.UsuarioBean"%>
<%@page import="dao.UsuarioDAO"%>

<%!  String user,pass,nombre,apellido,dni,tel,dir;
      
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objUB=new UsuarioBean();
      
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
   <body background="imgOLD/casaaa.jpg">
    <form action="ServletShop" method="post">

   <table width="500"   border="0" align="center" style="position:absolute;top:150px;left:450px;"  >
       
<tr>
    <td>Usuario:</td>
    <td ><input type="text" name="txtuser" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
<td>Contraseña:</td>
<td><input type="password" name="txtpass" value="" style='width:200px; height:25px'/> </td>
</tr>
<tr>
    <td>Nombre:</td>
    <td ><input type="text" name="txtnombre" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
    <td>Apellido:</td>
    <td ><input type="text" name="txtapellido" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
    <td>DNI:</td>
    <td ><input type="text" name="txtdni" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
    <td>Telefono:</td>
    <td ><input type="text" name="txttel" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
    <td>Direccion:</td>
    <td ><input type="text" name="txtdir" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
    <td ><input type="submit" value="Registrar" align="center" style='width:200px; height:25px' name="btnRegistrar"/> </td>
    <td ><input type="submit" value="Salir" align="center" style='width:200px; height:25px' name="btnSalir"/> </td>
</tr>
<tr>
           <td colspan="2"><img src="imgOLD/check2.png" alt=""/></td>

</tr>
</table>
        
<%--
        <% 
            user=request.getParameter("txtuser");
            pass=request.getParameter("txtpass");
            nombre=request.getParameter("txtnombre");
            apellido=request.getParameter("txtapellido");
            dni=request.getParameter("txtdni");
            tel=request.getParameter("txttel");
            dir=request.getParameter("txtdir");
            if(request.getParameter("btnRegistrar")!=null)
            {
                 if(user!=null&&pass!=null&&nombre!=null&&apellido!=null&&dni!=null&&tel!=null&&dir!=null)
                 {
                     objDAO.InsertarPersona(new UsuarioBean(user,pass,nombre,apellido,dni,tel,dir));
                     
                 }
            }
            if(request.getParameter("btnSalir")!=null){
            response.sendRedirect("Inicio.jsp");}
        %>
--%>
        </form>
    </body>
</html>
