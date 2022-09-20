/** 
G7_ USUARIOS 
**/
/*RED SOCIAL
 * DIFERENTES TIPOS DE USUARIO
 * PUBLCICAR
 * VER 
 * COMPARTIR
 * MENSAJES 
 * */

class UsuarioAnonimo {
	
//	const casillero = []
//	const amigos = []
	
	method verContenido(redSocial){
		//acá veriamos el contenido
		//contenido.serVisto()
		//o puede recibir un usario y ver el contenido
		//redSocial.verContenido()
	}
	
	method verPerfil(usario){
		//usuario.contenido.forEach()
		//acá veriamos el contenido
		//contenido.serVisto()
		//o puede recibir un usario y ver el contenido
	}

	
//	method cantAmigosMax() = 25
	
}

class UsuarioPublico inherits UsuarioAnonimo{
	const property ubicacion
	const property contenido = []
	const property cantidadDeSeguidores
	
	method crearContenido(_contenido){
		//redsocial.subirContenido()
		contenido.add(_contenido)
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
	
	method agregarAmigos(){
		amigos.add(usuario)
	}
	
}
