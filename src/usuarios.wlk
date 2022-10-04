import contenido.*
import permisos.*
import ubicacion.*

class UsuarioException inherits Exception{}


const permisoPublicacion = new Permiso(publicar = true)
const sinPermisoPublicacion = new Permiso(publicar = false)

class Usuario{
    const property ubicacion
    const contenidos = []
    var property permisos 

	method validarPermisoPublicacion(){
		if(!permisos.dejaPublicar(self))
			throw new PermisoException(message = "no tiene permiso de publicar")
	}
	
	method verContenido(contenido){
        contenido.serVisto()
	}
    method publicarVideo(duracion){
        
        self.validarPermisoPublicacion()
        
        const nuevo = new Video(
        	duracion = duracion, 
        	ubicacion = ubicacion,
        	peso = 13*duracion
        )
        contenidos.add(nuevo)
    }
    method publicarImagen(leyenda){
        
        if( permisos.dejaPublicar(self)) 
	        contenidos.add(
	        	new Imagen(
		        	ubicacion = ubicacion,
		        	peso = 300*(self.cantSeguidores() + 1),
		        	pie = leyenda
	        	)
	        )
	}



  	method estaSiendoVistoPor(otroOsuario){
		contenidos.forEach({contenido => otroOsuario.verContenido(contenido)})
	}

    method serSeguidoPor(usuario){
        throw new UsuarioException(message="usario no puede tener seguidores")
    }
    
    method cantSeguidores() = 0

	method publicoAlgo() = !contenidos.isEmpty()

    method puntaje() = 
    	if(self.publicoAlgo()) 
			contenidos.sum({c=>c.peso()})/contenidos.size() +
			contenidos.count({c=>c.interesante()})*10
		else
			0	
	method cantPublicaciones() = contenidos.size()
 }

class UsuarioInstitucional inherits Usuario{
    const seguidores = []

    override method puntaje() = super() + self.cantSeguidores()*5

    override method cantSeguidores() = seguidores.size()
   
    override method serSeguidoPor(usuario){
        seguidores.add(usuario)
    }

}