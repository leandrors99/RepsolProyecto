
<%@page import="dao.UsuarioDAO" %>
<%@page import="bean.UsuarioBean" %>
<%!  String user,pass;
      
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objUB=new UsuarioBean();
      
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/casaaa.jpg">
    
        <form name="IngresarUsuario.jsp"  method="get">
        <%--<form action="ServletTienda" method="post">--%>

   <table width="500"   border="0" align="center" style="position:absolute;top:250px;left:450px;">
<tr>
    <td>Usuario:</td>
    <td ><input type="text" name="txtuser" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
<td>Contraseña:</td>
<td><input type="password" name="txtpass" value="" style='width:200px; height:25px'/> </td>
</tr>
<tr>
    <td ><input type="submit" value="Ingresar" align="center" style='width:200px; height:25px' name="btnIngresar"/> </td>
    <td ><input type="submit" value="Salir" align="center" style='width:200px; height:25px' name="btnSalir"/> </td>
</tr>
<tr>
    <td><input type="submit" value="Recuperar contraseña" align="center" style='width:200px; height:25px' name="btnRecuperar"/></td>
</tr>
</table>
   
        <%
            user=request.getParameter("txtuser");
            pass=request.getParameter("txtpass");
            
            
   if(request.getParameter("btnSalir")!=null){
       response.sendRedirect("Inicio.jsp");
   }
   else if(request.getParameter("btnIngresar")!=null)
   {
       if(user!=null&&pass!=null&&objDAO.ValidarAcceso(new UsuarioBean(user,pass)))
       {
       objDAO.addData(user, pass);
       response.sendRedirect("Home.jsp");
       }
   }
   else if(request.getParameter("btnRecuperar")!=null)
   {
       response.sendRedirect("RecuperarPass.jsp");
   }
   
    %>

       
        </form>
    </body>
</html>
