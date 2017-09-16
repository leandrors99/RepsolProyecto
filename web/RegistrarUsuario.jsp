
<%@page import="bean.UsuarioBean"%>
<%@page import="dao.UsuarioDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file = "header.jsp" %>

   
<div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="Inicio.jsp">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Nuevo Usuario</h1>

                        <p class="lead">Empieza a comprar con nosotros!</p>
                        
                        <hr>

                            <form action="RegistrarUsuario.jsp" method="post">

                            <div class="form-group">
                                <label for="name">Usuario</label>
                                <input type="text" class="form-control" name="txtuser">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="txtpass">
                            </div>
                            <div class="form-group">
                                <label for="email">Nombres</label>
                                <input type="text" class="form-control" id="txtnombre">
                            </div>
                            <div class="form-group">
                                <label for="email">Apellidos</label>
                                <input type="text" class="form-control" id="txtapellido">
                            </div>
                            <div class="form-group">
                                <label for="email">DNI</label>
                                <input type="text" class="form-control" id="txtdni">
                            </div>
                            <div class="form-group">
                                <label for="email">Teléfono</label>
                                <input type="text" class="form-control" id="txttel">
                            </div>
                             <div class="form-group">
                                <label for="email">Dirección</label>
                                <input type="text" class="form-control" id="txtdir">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="txtemail">
                            </div>
                            
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Registrar</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Login</h1>

                        <p class="lead">Ya eres un usuario?</p>
                        <p class="text-muted"></p>

                        <hr>

                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>



  
   <%
        
            user=request.getParameter("txtuser");
            pass=request.getParameter("txtpass");
            System.out.println("user :"+user + "  pass"+pass );
            String nombre=request.getParameter("txtnombre");
            String apellido=request.getParameter("txtapellido");
            String dni=request.getParameter("txtdni");
            String tel=request.getParameter("txttel");
            String dir=request.getParameter("txtdir");
          /*  if(request.getParameter("btnRegistrar")!=null)
            {*/
                 if(user!=null&&pass!=null&&nombre!=null&&apellido!=null&&dni!=null&&tel!=null&&dir!=null)
                 {
                     objDAO.InsertarPersona(new UsuarioBean(user,pass,nombre,apellido,dni,tel,dir));
                     response.sendRedirect("RegistrarUsuarioHecho.jsp");
                 }
          /*  }
            else if(request.getParameter("btnSalir")!=null){
            response.sendRedirect("Inicio.jsp");}*/
       
     %>
        
<%@ include file = "footer.jsp" %>
