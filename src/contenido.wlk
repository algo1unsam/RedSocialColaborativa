class Contenido{
	
	var property likes = 0
	
	var property ubicacion 
	
	var property peso = 0
	
	method editar(param)

	method likear(){
		likes = likes + 1
		ubicacion.valorar()
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
	method serVisto(){
		self.likear()
	}
	
	
}

class Video inherits Contenido{
	
	var property duracion	
	
	var property cantReproducciones = 0
	
	//cuando el usuario reproduce incremento cantidad de reproducciones
	method serVisto(){
		cantReproducciones = cantReproducciones +1
	}
	
	
	method cantidadReproducciones() = cantReproducciones
	
	override method editar(parametro) {
		
	}
	
}




