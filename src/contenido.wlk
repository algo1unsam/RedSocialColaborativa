class Contenido{
	
	var property likes = 0
	
	var property ubicacion 
	
	var property peso = 0
	
	method editar(param)

	method likear(){
		likes = likes + 1
	}
	
//	method publicar()	
	
	method interesante() =  likes >= 10
	
	
	
}


class Imagen inherits Contenido{
	
	var property filtro = false
	
	var property pie
	
	override method interesante() = super() && filtro
	
	method editar(_param){
		filtro = !filtro
		pie = _param
		
	}
	
	
}

class Video inherits Contenido{
	
	var property duracion	
	
	var property cantReproducciones = 0
	
	//cuando el usuario reproduce incremento cantidad de reproducciones
	method reproducir(){
		cantReproducciones = cantReproducciones +1
	}
	
	
	method cantidadReproducciones() = cantReproducciones
	
	override method editar(parametro) {
		
	}
	
}




