
object redSocial{
    var usuarios = []


	method agregarUsuario(x){
		usuarios.add(x)
	}
    method cantidadUsuarios(){
        return usuarios.size()
    }
    method cantidadSeguidores(){
        return usuarios.sum({usuario => usuario.cantSeguidores()})

    }
    method mayorCantidadSeguidores(){
    	return usuarios.max({usuario => usuario.cantSeguidores()})
    }
    method todosTienenSeguidores(){
     return usuarios.all({usuario => usuario.cantSeguidores() > 0})
    }


}


class Usuario{
	const property cantSeguidores
}