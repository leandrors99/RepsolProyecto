<%@page import="dao.UsuarioDAO" %>
<%@page import="bean.UsuarioBean" %>


<%!  String user,tel,dni;
    
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objUB=new UsuarioBean();
    UsuarioBean objCargado=new UsuarioBean();
      
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/casaaa.jpg">
    
    <form name="RecuperarPass.jsp"  method="get" >
        

   <table width="500"   border="0" align="center" style="position:absolute;top:150px;left:450px;"  >
<tr>
    <td>Usuario:</td>
    <td ><input type="text" name="txtuser" value="" style='width:200px; height:25px'/></td>

</tr>
<tr>
<td>Teléfono:</td>
<td><input type="text" name="txttel" value="" style='width:200px; height:25px'/> </td>
</tr>
<tr>
<td>DNI:</td>
<td><input type="text" name="txtdni" value="" style='width:200px; height:25px'/> </td>
</tr>
<tr>
    <td ><input type="submit" value="Recuperar" align="center" style='width:200px; height:25px' name="btnRecuperar"/> </td>
    <td ><input type="submit" value="Salir" align="center" style='width:200px; height:25px' name="btnSalir"/> </td>
</tr>
<tr>
    <td colspan="2"><font color="red" size="20"><%if(objCargado.getPass()=="fail"){%><%="Error: No se ha encontrado el usuario"%><%}else if(objCargado.getPass()!=null){%><%="Su contraseña es: "+objCargado.getPass()%><%}%></font></td>

</tr>
</table>
        <%
            
            
            
   if(request.getParameter("btnSalir")!=null){
       objCargado=new UsuarioBean();
       response.sendRedirect("Inicio.jsp");
   }
   else if(request.getParameter("btnRecuperar")!=null)
   {
       user=request.getParameter("txtuser");
       tel=request.getParameter("txttel");
       dni=request.getParameter("txtdni");
       if(user!=null&&tel!=null&&dni!=null)
       {
       objCargado=objDAO.RecuperarPass(user, tel, dni);
            if(objCargado==null)
            {
             
             objCargado=new UsuarioBean();
            }
       response.sendRedirect("RecuperarPass.jsp");
       }
       else
       {
        response.sendRedirect("RecuperarPass.jsp");
       }
   }
   
    %>


       
        </form>
    </body>
</html>
