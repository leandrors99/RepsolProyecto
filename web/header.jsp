<%-- 
    Document   : header
    Created on : 03/09/2017, 12:17:04 AM
    Author     : pamela
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UsuarioDAO" %>
<%@page import="bean.UsuarioBean" %>
<%!  String user,pass;
      
    UsuarioDAO objDAO=new UsuarioDAO();
    UsuarioBean objUB=new UsuarioBean();
      
%>


<html>
<head id="top">
    <meta charset="utf-8">

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
       RepShop - Venta de productos
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">
   


</head>

<body>

    <div id="top">
        <div class="container">
            <div class="col-md-6 offer" data-animate="fadeInDown">
            </div>
            <div class="col-md-6" data-animate="fadeInDown">
                <ul class="menu">
                    <li><a href="#" data-toggle="modal" data-target="#login-modal">Ingresar</a>
                    </li>
                    <li><a href="RegistrarUsuario.jsp">Registro</a>
                    </li>
                    <li><a href="IngresarAdministrador.jsp">Administrar</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Ingresa a tu cuenta</h4>
                    </div>
                    <div class="modal-body">
                        <form action="Inicio.jsp" method="post">
                            <div class="form-group">
                                <input type="text"  name="txtuser"  class="form-control" id="txtuser" placeholder="usuario">
                            </div>
                            <div class="form-group">
                                <input type="password" name="txtpass" class="form-control" id="txtpass" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-primary" name="btnIngresar"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Aún no estás registrado?</p>
                        <p class="text-center text-muted"><a href="register.html"><strong>Regístrate ahora</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>
 
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.jsp" data-animate-hover="bounce">
                    <img src="img/logo.jpg" alt="Obaju logo" class="hidden-xs">
                    <img src="img/logo.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Obaju - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <a class="btn btn-default navbar-toggle" href="basket.html">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                    </a>
                </div>
            </div>
            

            <div class="navbar-collapse collapse" id="navigation">

                <ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="index.jsp">Inicio</a>
                    </li>
                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Nuestros Productos <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                     <div class="row">
                                        <div class="col-sm-3">
                                            <h5><a href="#">Ofertas</h5></a>
                                            <ul>
                                                <li><a href="category.html">Oferta1</a>
                                                </li>
                                                <li><a href="category.html">Oferta2</a>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5><a href="Dulces.jsp">Dulces</a></h5>
                                            
                                        </div>
                                        <div class="col-sm-3">
                                            <h5><a href="Salados.jsp">Salados</a></h5>
                                            
                                        </div>
                                        <div class="col-sm-3">
                                            <h5><a href="Bebidas.jsp">Bebidas</a></h5>
                                            
                                           
                                        </div>
                                    </div>
                                </div>
                                
                            </li>
                        </ul>
                    </li>
                    <li class="active"><a href="index.jsp">RP♥</a>
                    </li>
<li class="active"><a href="index.jsp">Locales</a>
                    </li>
                </ul>

            </div>
            
            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">items</span></a>
                </div>
                
                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
            <div class="collapse clearfix" id="search">
                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
		    </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    
    
    
    
    
          <%
            user=request.getParameter("txtuser");
            pass=request.getParameter("txtpass");
    System.out.println("usuario: " + user);
     System.out.println("usuario: " + pass);
            
  
   
       if(user!=null&&pass!=null&&objDAO.ValidarAcceso(new UsuarioBean(user,pass)))
       {
           
       objDAO.addData(user, pass);
       response.sendRedirect("Home.jsp");
       }else{
       
       }
  
   
    %>