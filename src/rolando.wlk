import artefactos.*

class Personaje {
	
	const valorBaseHechiceria = 3
	var valorBaseLucha = 1
	var hechizoPreferido
	var artefacto = armaBlanca
	
	method valorBaseLucha(nuevoValor) {
		valorBaseLucha = nuevoValor
	}
	
	method artefacto(nuevoArtefacto) {
		artefacto = nuevoArtefacto
	}
	
	method nivelDeHechiceria() = 
		valorBaseHechiceria * hechizoPreferido.poder() + fuerzaOscura.valor() 
	
	method hechizoPreferido(nuevoHechizo) {
		hechizoPreferido = nuevoHechizo
	}
	
	method valorDeLucha() =
		valorBaseLucha + artefacto.unidadesDeLucha(self)
	
	method esPoderoso() = hechizoPreferido.esPoderoso()
	
	method esMejorLuchadorQueHechicero() = 
		self.valorDeLucha() > self.nivelDeHechiceria()
	
}

class Hechizo {
	
	method poder()
	method valor(personaje) = self.poder()
	
	method esPoderoso() = self.poder() > 15
	
	method precio() = self.poder()
	
	method precio(armadura) = armadura.valorBase() + self.precio()
}

object hechizoBasico inherits Hechizo {
	override method poder() = 10		
}

class HechizoDeLogos inherits Hechizo {
	const multiplicador = 1
	const nombre
	
	override method poder() = nombre.size() * multiplicador
}

object fuerzaOscura {
	
	var valor = 5
	
	method valor() = valor
	
	method eclipse() {
		valor = valor * 2
	}	
	
}