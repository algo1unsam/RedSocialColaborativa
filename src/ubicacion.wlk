class Ubicacion{
	const property coordenadas = [0,0] //vector de coordenadas (-123,15)
	method estaCercaDe(ubicacion,tolerancia){
		return self.distanciaA(ubicacion)<tolerancia
	} //ya sea la ubicacion de un usuario o de un lugar, devuelve un booleano
	method distanciaA(ubicacion){
		return ((coordenadas.get(0)-ubicacion.coordenadas().get(0))**2 + (coordenadas.get(1)-ubicacion.coordenadas().get(1))**2)**0.5 
	}
	method dondeEstoy(listaDeLugares){
		return listaDeLugares.min({lugar=>self.distanciaA(lugar)})
	}
	
	
}

class Lugar inherits Ubicacion{
	const property nombre = null //Nombre completo del lugar
	//tipoDeLugar es si es shopping, facultad, hospital, parque, etc.
	const tipoDeLugar = null //Por ahora creemos que todos los lugares se comportan igual, entonces no armamos mas clases.
	
}

// unsam = new ubicacion()
// unsam.name .--> Universidad Naciona de Sarasa

//Necesitamos que:
//-Usuarios tengan una ubicacion,
//-Contenido tenga ubicacion
