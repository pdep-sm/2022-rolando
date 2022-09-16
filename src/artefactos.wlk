import rolando.fuerzaOscura

object espadaDelDestino {
	
	method unidadesDeLucha() = 3
	
}


object collarDivino {
	var cantidadDePerlas = 5 
	
	method cantidadDePerlas(cantidad) {
		cantidadDePerlas = cantidad
	}
	
	method unidadesDeLucha() = cantidadDePerlas
}

object mascaraOscura {
	
	method unidadesDeLucha() = 4.max(fuerzaOscura.valor() / 2)
	
}