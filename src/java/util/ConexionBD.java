package util;
import bean.ProductoBean;
import dao.ProductoDAO;
import  java.sql.*;
import java.util.ArrayList;

public class ConexionBD 
{
 public static Connection getConexionBD() {
      Connection  cn=null;    
           
            String url="jdbc:mysql://db4free.net:3306/dbpena";
            String usu="joorgepenas";
            String pass="Yvonne123";

            try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=(Connection)DriverManager.getConnection(url,usu,pass);
                //cn=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/dbmontoya","usudjmn","102517dj");               
                 System.out.println("Conexión en linea");
            }catch(Exception ex){
                 System.out.println("ERROR, en la Conexión ");
            }        
     
   return  cn;  
 }    
  public   static void  main(String  args[])  
  {
      reporte();
  }
  public  static  void reporte(){
   ProductoDAO objDAO=new ProductoDAO();
      ArrayList<ProductoBean> lis=objDAO.listaProductos();
      for(ProductoBean obj:lis){
         System.out.println(obj.getUser()+"  "+obj.getFecha()+"  "+obj.getProducto()+"  "+obj.getPrecio()); 
     }       
  }  
}







 /*String url="jdbc:mysql://db4free.net:3306/algorimos";
            String usu="maucross";
            String pass="9aa310";*/
