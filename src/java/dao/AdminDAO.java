
package dao;
import bean.AdminBean;
import util.ConexionBD;
import java.sql.*;
import java.util.*;



public class AdminDAO {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
    public  static ArrayList <AdminBean>listaUsuarios=new ArrayList <>();
    AdminBean objAB=null;
    public   int  InsertarAdmin(AdminBean objAdmin)
   {
       int  i=0;        
       try 
       {
          cn=ConexionBD.getConexionBD();
          pt=cn.prepareStatement("insert into admin (usuario,contrasena) values(?,?)");   
          pt.setString(1,objAdmin.getUser());
          pt.setString(2,objAdmin.getPass());
          i = pt.executeUpdate();
          pt.close();
          cn.close();
           
       } catch (Exception e) {
         
       }
       return  i;
   }
public  boolean  ValidarAccesoAdmin(AdminBean objAdmin)
  {   boolean   estado=false;    
      try 
      {
        cn=ConexionBD.getConexionBD();
        pt=cn.prepareStatement("select  *  from admin where  usuario=? and  contrasena=?");
        pt.setString(1, objAdmin.getUser());
        pt.setString(2, objAdmin.getPass());
        rs=pt.executeQuery();
        if(rs.next())
        {
         estado=true;  
        }  
        rs.close();
        pt.close();
        cn.close();          
      } catch (Exception e)
      {   
          estado=false; 
      }
      return estado;      
  } 


}
