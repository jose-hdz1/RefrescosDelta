package controlador;

public class RegistroCod {
    private String codigo;
    
    public RegistroCod(){
        }
    
    public RegistroCod(String codigo){
        this.codigo = codigo;
    }
    
    public String getCodigo(){
        return codigo;
    }
    public void setCodigo(String codigo){
        this.codigo = codigo;
    }
}
