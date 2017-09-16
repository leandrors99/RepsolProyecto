package dao;
import bean.ProductoBean;
import bean.UsuarioBean;
import util.ConexionBD;


import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.*;


public class UsuarioDAO {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
    public  static ArrayList <UsuarioBean>listaUsuarios=new ArrayList <>();
    UsuarioBean objUB=null;
    
public   int  InsertarPersona(UsuarioBean objUser)
   {
       int  i=0;        
       try 
       {
          cn=ConexionBD.getConexionBD();
          pt=cn.prepareStatement("insert into usuari (usuario,contrasena,nombre,apellido,dni,tel,dir) values(?,?,?,?,?,?,?)");   
          pt.setString(1,objUser.getUser());
          pt.setString(2,objUser.getPass());
          pt.setString(3,objUser.getNombre());
          pt.setString(4,objUser.getApellido());
          pt.setString(5,objUser.getDni());
          pt.setString(6,objUser.getTel());
          pt.setString(7,objUser.getDir());
          i = pt.executeUpdate();
          pt.close();
          cn.close();
           
       } catch (Exception e) {
         
       }
       return  i;
   }
public  boolean  ValidarAcceso(UsuarioBean objUsu)
  {   boolean   estado=false;    
      try 
      {
        cn=ConexionBD.getConexionBD();
        pt=cn.prepareStatement("select  *  from usuari where  usuario=? and  contrasena=?");
        pt.setString(1, objUsu.getUser());
        pt.setString(2, objUsu.getPass());
        rs=pt.executeQuery();
        if(rs.next())
        {
         estado=true;  
        }  
        rs.close();
        pt.close();
        cn.close();          
      } catch (Exception e)
      {   estado=false; 
      }
      return estado;      
  } 
public UsuarioBean Buscarxdni(String dni)
{
    UsuarioBean objBuscado=null;
    try
    {
        cn=ConexionBD.getConexionBD();
        pt=cn.prepareStatement("select  *  from usuari where  dni=?");
        pt.setString(1,dni);
        rs=pt.executeQuery();
        if(rs.next())
        {
            objBuscado=new UsuarioBean(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
        }
        rs.close();
        pt.close();
        cn.close();
    }
    catch(Exception e)
    {
        
    }
   return objBuscado;
}
public UsuarioBean RecuperarPass(String user,String tel,String dni)
{
    UsuarioBean objBuscado=null;
    try
    {
        cn=ConexionBD.getConexionBD();
        pt=cn.prepareStatement("select  *  from usuari where  usuario=? and tel=? and dni=?");
        pt.setString(1,user);
        pt.setString(2,tel);
        pt.setString(3,dni);
        rs=pt.executeQuery();
        if(rs.next())
        {
            objBuscado=new UsuarioBean(rs.getString(3));
        }
        else
        {
            objBuscado=new UsuarioBean("fail");
        }
        rs.close();
        pt.close();
        cn.close();
    }
    catch(Exception e)
    {
        
    }
   return objBuscado;
}
public String hora()
{
    DateFormat fechaHora = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = new Date();
		String convertido = fechaHora.format(date);
		return convertido;
}
public void addData(String user,String pass)
{
    listaUsuarios.add(new UsuarioBean(user,pass));
}
public void EliminarxDNI(String dni)
{
    try
    {
        cn=ConexionBD.getConexionBD();
        pt=cn.prepareStatement("delete  *  from usuari where  dni=?");
        pt.setString(1,dni);
        rs=pt.executeQuery();
        rs.close();
        pt.close();
        cn.close();
    }
    catch(Exception e)
    {
        
    }
}
public ProductoBean busqueda(String x)
{
    ProductoBean objP;
    String u="";
    String fecha=hora();
    String producto="";
    String precio="";
    for(UsuarioBean obj: UsuarioDAO.listaUsuarios)
    {
        u=obj.getUser();
    }
    if(x=="comp1"){producto="Laptop Toshiba E513";precio="S./ 1299.00";}
    else if(x=="comp2"){producto="Laptop Asus X902";precio="S./ 1899.00";}
    else if(x=="comp3"){producto="Notebook Samsung G22";precio="S./ 1049.00";}
    else if(x=="comp4"){producto="Laptop Samsung E761";precio="S./ 1499.00";}
    else if(x=="comp5"){producto="Laptop Samsung E781";precio="S./ 1399.00";}
    else if(x=="comp6"){producto="Laptop Toshiba E102";precio="S./ 1100.00";}
    else if(x=="comp7"){producto="Notebook Toshiba E202";precio="S./ 1249.00";}
    else if(x=="comp8"){producto="Laptop Toshiba E502";precio="S./ 1559.00";}
    else if(x=="comp9"){producto="Laptop Pink HP G992";precio="S./ 1399.00";}
    else if(x=="comp10"){producto="Laptop HP G993";precio="S./ 1439.00";}
    else if(x=="comp11"){producto="Laptop HP G994";precio="S./ 1639.00";}
    else if(x=="comp12"){producto="Laptop Pavilion HP G996";precio="S./ 1939.00";}
    else if(x=="cel1"){producto="Samsung Galaxy Prime";precio="S./ 899.00";}
    else if(x=="cel2"){producto="Samsung Galaxy S5 Mini";precio="S./ 1199.00";}
    else if(x=="cel3"){producto="Samsung Galaxy S7 Edge";precio="S./ 2899.00";}
    else if(x=="cel4"){producto="LG G4 Beat";precio="S./ 1099.00";}
    else if(x=="cel5"){producto="LG G4 Platinium";precio="S./ 1399.00";}
    else if(x=="cel6"){producto="LG G5";precio="S./ 1800.00";}
    else if(x=="cel7"){producto="iPhone 4S 8GB";precio="S./ 749.00";}
    else if(x=="cel8"){producto="iPhone 5C 16GB";precio="S./ 1259.00";}
    else if(x=="cel9"){producto="iPhone 6 32GB";precio="S./ 1999.00";}
    else if(x=="cel10"){producto="Sony Experia E3";precio="S./ 1039.00";}
    else if(x=="cel11"){producto="Sony Aqua";precio="S./ 1639.00";}
    else if(x=="cel12"){producto="Sony Z7";precio="S./ 1839.00";}
    else if(x=="mem1"){producto="USB Kingston 2GB";precio="S./ 15.50";}
    else if(x=="mem2"){producto="USB Hama 4GB";precio="S./ 16.00";}
    else if(x=="mem3"){producto="USB Toshiba 16GB";precio="S./ 34.00";}
    else if(x=="mem4"){producto="Micro SD Kingston 8GB";precio="S./ 20.00";}
    else if(x=="mem5"){producto="Micro SD Kingston 16GB";precio="S./ 29.00";}
    else if(x=="mem6"){producto="Micro SD SanDisk 8GB";precio="S./ 18.00";}
    else if(x=="mem7"){producto="Disco Duro Externo Toshiba 1TB";precio="S./ 249.00";}
    else if(x=="mem8"){producto="Disco Duro Externo Toshiba 2TB";precio="S./ 359.00";}
    else if(x=="mem9"){producto="Disco Duro Externo Adata 500GB";precio="S./ 199.00";}
    else if(x=="mem10"){producto="USB Kingston 4GB 3.0";precio="S./ 22.00";}
    else if(x=="mem11"){producto="Memoria RAM DDR3 Hyper 1GB";precio="S./ 109.00";}
    else if(x=="mem12"){producto="Memoria RAM DDR3 RWP 4GB";precio="S./ 189.00";}
    
    objP=new ProductoBean(u,fecha,producto,precio);
    return objP;
    
}
public void cleanData()
{
    listaUsuarios.clear();
}
}
   
