/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;


public class UsuarioBean {
    private String user,pass,nombre,apellido,dni,tel,dir;
    private int codperso;
    public UsuarioBean(){}
    public UsuarioBean(String user,String pass,String nombre,String apellido,String dni,String tel,String dir)
    {
        this.user=user;
        this.pass=pass;
        this.nombre=nombre;
        this.apellido=apellido;
        this.dni=dni;
        this.tel=tel;
        this.dir=dir;
    }
    public UsuarioBean(String user,String pass)
    {
        this.user=user;
        this.pass=pass;
        
    }
    public UsuarioBean(String user,String tel,String dni)
    {
        this.user=user;
        this.tel=tel;
        this.dni=dni;
    }
    public UsuarioBean(String pass)
    {
        this.pass=pass;
    }
    public UsuarioBean(int codperso,String user,String pass,String nombre,String apellido,String dni,String tel,String dir)
    {
        this.codperso=codperso;
        this.user=user;
        this.pass=pass;
        this.nombre=nombre;
        this.apellido=apellido;
        this.dni=dni;
        this.tel=tel;
        this.dir=dir;
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
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the dni
     */
    public String getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(String dni) {
        this.dni = dni;
    }

    /**
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * @return the dir
     */
    public String getDir() {
        return dir;
    }

    /**
     * @param dir the dir to set
     */
    public void setDir(String dir) {
        this.dir = dir;
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
    
    
}
