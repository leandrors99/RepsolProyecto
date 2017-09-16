<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peña Mang Store</title>
    </head>
    <body background="imgOLD/compraRealizadaFoto.jpg">
        <form name="compraRealizada.jsp" method="get">
         <table width="100" border="0" align="right" style='width:750px; height:1100px'>
<tr>
    
<td><input type="submit" value="Salir" style='width:200px; height:25px' name="btnSalir"/></td>
</tr>
         </table>
        </form>
    <%    if(request.getParameter("btnSalir")!=null){
       response.sendRedirect("Inicio.jsp");
   } %>
    </body>
</html>
