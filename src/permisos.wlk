class PermisoException inherits Exception{}

class Permiso {
    const property publicar = false
   // const property ver = true
    
    method dejaPublicar(alguien) = publicar
}


object permisoPuntajeAlto inherits Permiso {
	
    override method dejaPublicar(alguien) 
    	= alguien.puntaje() > 500 || super(alguien)
}



class TipoDeUsuario {
    const property fotos 
    const property publicaciones 
}
