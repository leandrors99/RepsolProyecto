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
                                                <img src="img/bebidas1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">H2OH! 500ml</a></h3>
                                    <p class="price">2x s/.2.90</p>
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
                                                <img src="img/bebidas2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Gatorade 500ml</a></h3>
                                    <p class="price">2x s/.4.50</p>
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
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/bebidas3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Coca-cola 1.5lts+Inka-cola 1.5lts</a></h3>
                                    <p class="price">2x s/.10.90</p>
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
                                                <img src="img/bebidas4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas4.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas4.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Naturale Chicha Morada 1lt</a></h3>
                                    <p class="price">2x s/.6.50</p>
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
                                                <img src="img/bebidas5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas5.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas5.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Ecofresh 500ml</a></h3>
                                    <p class="price">s/.4.50</p>
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
                                                <img src="img/bebidas6.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/bebidas6.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/bebidas6.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Aloe Vera natural 475ml</a></h3>
                                    <p class="price">s/.4.90</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver más</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir al carrito</a>
                                    </p>

                                </div>

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
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
   else if(request.getParameter("btnmem1")!=null)
    {
        x="mem1";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem2")!=null)
    {
        x="mem2";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem3")!=null)
    {
        x="mem3";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }   
    else if(request.getParameter("btnmem4")!=null)
    {
        x="mem4";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem5")!=null)
    {
        x="mem5";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem6")!=null)
    {
        x="mem6";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem7")!=null)
    {
        x="mem7";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem8")!=null)
    {
        x="mem8";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem9")!=null)
    {
        x="mem9";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem10")!=null)
    {
        x="mem10";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem11")!=null)
    {
        x="mem11";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }
    else if(request.getParameter("btnmem12")!=null)
    {
        x="mem12";
        objAB=objDAO.busqueda(x);
        objADAO.InsertarProducto(objAB);
        response.sendRedirect("compraRealizada.jsp");
    }   
        %>
      
     <%@ include file = "footer.jsp" %>
