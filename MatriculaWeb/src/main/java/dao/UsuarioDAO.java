
package dao;

import dto.Usuario;

public class UsuarioDAO {
    public Usuario existeConLoginYPass(Usuario usu){
        Usuario usuBD= new Usuario("40801418","kike","1234");
        if(usuBD.equals(usu)){ //compara elde la web con el la bd
            return usuBD;
        }
        return null;
    }
}
