class UsuarioAnonimo {

//    const casillero = []
//    const amigos = []

    method verContenido(contenido){
        //acá veriamos el contenido
        contenido.serVisto()
        //o puede recibir un usario y ver el contenido
        //redSocial.verContenido()
    }

    method verPerfil(usuario){
        usuario.estaSiendoVistoPor(self)
    }
    
  
//    method cantAmigosMax() = 25

}

class UsuarioPublico inherits UsuarioAnonimo{
    const property ubicacion
    const  contenidos = []
    const property cantSeguidores

    method crearContenido(contenido){
        //redsocial.subirContenido()
        contenidos.add(contenido)
    }
  method estaSiendoVistoPor(otroOsuario){
		contenidos.forEach({contenido => otroOsuario.verContenido(contenido)})

	}
}

class UsuarioPrivado inherits UsuarioPublico{
    const property amigos = #{}
    const property bandeDeMensajes = []

    method compartirContenido(){

    }

    method mandarMensaje(mensaje){
        bandeDeMensajes.add(mensaje)
    }

    method agregarAmigos(usuario){
        amigos.add(usuario)
    }

}