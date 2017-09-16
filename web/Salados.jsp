<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file = "header.jsp" %>
        
<%@page import="bean.ProductoBean" %>
<%@page import="dao.ProductoDAO" %>
<%@page import="dao.UsuarioDAO" %>
<%!
    String x="";
    ProductoBean objAB=new ProductoBean();
    ProductoDAO objADAO=new ProductoDAO();
    
%> 


  <div id="all">

        <div id="content">
            <div class="row products">

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_1jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Lays 185gr+Karinto 200gr.</a></h3>
                                    <p class="price">s/. 10.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>
                                </div>
                            </div>                      
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Vallealto Mix up </a></h3>
                                    <p class="price">s/. 5.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>
                                </div>

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>

                                
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Doritos dipas 200gr+Tortees 138gr</a></h3>
                                    <p class="price">s/. 7.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_4.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Pringles 37gr</a></h3>
                                    <p class="price">2x s/.5.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_5.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Pringles 37gr+Coca-cola 500ml</a></h3>
                                    <p class="price">s/. 4.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/salado_7.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/salado_7.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/salado_7.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Cabanossi Braedt 25gr</a></h3>
                                    <p class="price">2x s/.4.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver màs</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>

                                <div class="ribbon gift">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>

                            </div>
                        </div>
                    </div>
                     
        </div>
 </div>


       


    

 
     
         
         <%  
            
   if(request.getParameter("btnComputadoras")!=null){
       response.sendRedirect("Computadoras.jsp");
   }
   else if(request.getParameter("btnCelulares")!=null){
       response.sendRedirect("Celulares.jsp");
   }
   else if(request.getParameter("btnMemorias")!=null){
       response.sendRedirect("Memorias.jsp");
   }
    else if(request.getParameter("btnSalir")!=null){
       response.sendRedirect("Home.jsp");
   }
   else if(request.getParameter("btncel1")!=null)
    {
        x="cel1";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel2")!=null)
    {
        x="cel2";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel3")!=null)
    {
        x="cel3";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }   
    else if(request.getParameter("btncel4")!=null)
    {
        x="cel4";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel5")!=null)
    {
        x="cel5";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel6")!=null)
    {
        x="cel6";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel7")!=null)
    {
        x="cel7";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel8")!=null)
    {
        x="cel8";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel9")!=null)
    {
        x="cel9";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel10")!=null)
    {
        x="cel10";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel11")!=null)
    {
        x="cel11";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncel12")!=null)
    {
        x="cel12";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    } 
        %> 
<%@ include file = "footer.jsp" %>
