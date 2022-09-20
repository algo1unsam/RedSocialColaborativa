class Contenido{
	
	var property likes = 0
	
	var property ubicacion
	
	var property peso
	
	method editar()

	method likear(){
		likes = likes + 1
	}
	
	method publicar()	
	
	method interesante() =  self.likes() > 10
	
	
	
}


class Imagen inherits Contenido{
	
	var property filtro = false
	
	var property pie
	
	override method interesante() = super() && self.filtro()
	
	method editar(_param){
		filtro = !filtro
		pie = _param
		
	}
	
	
}

class Video inherits Contenido{
	
	var property duracion	
	
	var property cantReproducciones = 0
	
	//cuando el usuario reproduce incremento cantidad de reproducciones
	
	method cantidadReproducciones() = cantReproducciones + 1
	
	
	
}



