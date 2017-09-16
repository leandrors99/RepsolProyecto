
package dao;
import bean.ProductoBean;

import util.ConexionBD;
import java.sql.*;
import java.util.ArrayList;


public class ProductoDAO {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
   public  static ArrayList <ProductoBean>listaProductos=new ArrayList <>();
    ProductoBean objPB=null;
    UsuarioDAO DAO=new UsuarioDAO();
    public   int  InsertarProducto(ProductoBean objProducto)
   {
       int  i=0;        
       try 
       {
          cn=ConexionBD.getConexionBD();
          pt=cn.prepareStatement("insert into producto (usuario,fecha,producto,precio) values(?,?,?,?)");   
          pt.setString(1,objProducto.getUser());
          pt.setString(2,objProducto.getFecha());
          pt.setString(3,objProducto.getProducto());
          pt.setString(4,objProducto.getPrecio());
          i = pt.executeUpdate();
          pt.close();
          cn.close();
           
       } catch (Exception e) {
         
       }
       return  i;
   }
    public  ArrayList<ProductoBean>  listaProductos()
  {        
      try 
      {
        cn=ConexionBD.getConexionBD();      
        pt=cn.prepareStatement("select * from producto");
        rs=pt.executeQuery();
        while(rs.next())
        {
         objPB=new ProductoBean(rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));            
         listaProductos.add(objPB);          
        }  
        rs.close();
        pt.close();
        cn.close();
          
      } catch (Exception e)
      {
      }
      return  listaProductos;      
  } 
    
    }
    
    

