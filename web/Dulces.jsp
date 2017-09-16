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
                                                <img src="img/dulces_1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Ferrero hanuta 22gr</a></h3>
                                    <p class="price">2x s/.3.90</p>
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
                                                <img src="img/dulces_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Kit Kat Nestlé 41.5gr</a></h3>
                                    <p class="price">2x s/.4.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>
                                </div>
                                

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                               

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/dulces_3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Chocolate Sublime Extremo60gr+Sublime Almendras 50gr</a></h3>
                                    <p class="price">s/.4.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/dulces_4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_4.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Nestlé Princesa Box 128gr</a></h3>
                                    <p class="price">s/.11.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/dulces_5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_5.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">La Ibérica Corazón 80gr+La Ibérica Corazon 25gr</a></h3>
                                    <p class="price">s/.11.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                                <!-- /.text -->

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
                                                <img src="img/dulces_6.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/dulces_6.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/dulces_6.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Galletas Morochas doble placer 34.4gr</a></h3>
                                    <p class="price">3x s/.2.50</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>
                                <!-- /.text -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                            </div>
                            <!-- /.product -->
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
    else if(request.getParameter("btncomp1")!=null)
    {
        x="comp1";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp2")!=null)
    {
        x="comp2";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp3")!=null)
    {
        x="comp3";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }   
    else if(request.getParameter("btncomp4")!=null)
    {
        x="comp4";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp5")!=null)
    {
        x="comp5";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp6")!=null)
    {
        x="comp6";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp7")!=null)
    {
        x="comp7";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp8")!=null)
    {
        x="comp8";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp9")!=null)
    {
        x="comp9";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp10")!=null)
    {
        x="comp10";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp11")!=null)
    {
        x="comp11";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btncomp12")!=null)
    {
        x="comp12";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }   
        %> 

<%@ include file = "footer.jsp" %>
