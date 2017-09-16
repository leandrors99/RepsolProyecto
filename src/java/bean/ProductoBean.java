/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;


public class ProductoBean {
    private int codperso;
    private String user,fecha,producto,precio;
    public ProductoBean(){}
    public ProductoBean(String user,String fecha,String producto,String precio)
    {
        this.user=user;
        this.fecha=fecha;
        this.producto=producto;
        this.precio=precio;
    }
    public ProductoBean(int codperso,String user,String fecha,String producto,String precio)
    {
        this.codperso=codperso;
        this.user=user;
        this.fecha=fecha;
        this.producto=producto;
        this.precio=precio;
    }

    /**
     * @return the codperso
     */
    public int getCodperso() {
        return codperso;
    }

    /**
     * @param codperso the codperso to set
     */
    public void setCodperso(int codperso) {
        this.codperso = codperso;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the producto
     */
    public String getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(String producto) {
        this.producto = producto;
    }

    /**
     * @return the precio
     */
    public String getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(String precio) {
        this.precio = precio;
    }
    
   
}
