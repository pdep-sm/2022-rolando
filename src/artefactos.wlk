import rolando.fuerzaOscura

object armaBlanca {
	const unidadesDeLucha = 3
	
	method unidadesDeLucha(personaje) = unidadesDeLucha
	
	method precio() = unidadesDeLucha * 5
}


object collarDivino {
	var cantidadDePerlas = 5 
	
	method cantidadDePerlas(cantidad) {
		cantidadDePerlas = cantidad
	}
	
	method unidadesDeLucha(personaje) = cantidadDePerlas
	
	method precio() = cantidadDePerlas * 2
}


class MascaraOscura {
	const indiceOscuridad
	var property minimo = 4
	
	method unidadesDeLucha(personaje) = 
		minimo.max(fuerzaOscura.valor() / 2 * indiceOscuridad)
		
	method precio() = 70 + fuerzaOscura.valor() * indiceOscuridad
}

class Armadura {
	const property valorBase = 2
	var property refuerzo = refuerzoNulo
	
	method unidadesDeLucha(personaje) = valorBase + refuerzo.valor(personaje)
	
	method precio() = refuerzo.precio(self)
	
}

class CotaDeMalla {
	const valor
	method valor(personaje) = valor
	
	method precio(armadura) = valor / 2
}

object bendicion {
	method valor(personaje) = personaje.nivelDeHechiceria()
	
	method precio(armadura) = armadura.valorBase()
}

object refuerzoNulo {
	method valor(personaje) = 0
	
	method precio(armadura) = 2
}
