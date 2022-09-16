import artefactos.*

object rolando {
	
	const valorBaseHechiceria = 3
	var valorBaseLucha = 1
	var hechizoPreferido = espectroMalefico
	var artefacto = espadaDelDestino
	
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
		valorBaseLucha + artefacto.unidadesDeLucha()
	
	method esPoderoso() = hechizoPreferido.esPoderoso()
	
	method esMejorLuchadorQueHechicero() = 
		self.valorDeLucha() > self.nivelDeHechiceria()
	
}

object hechizoBasico {
	
	method poder() = 10
	
	method esPoderoso() = false
	
}

object espectroMalefico {
	
	var nombre = "espectro maléfico"
	
	method nombre(nuevoNombre) {
		nombre = nuevoNombre
	}

	method poder() = nombre.size()
	
	method esPoderoso() = self.poder() > 15
}

object fuerzaOscura {
	
	var valor = 5
	
	method valor() = valor
	
	method eclipse() {
		valor = valor * 2
	}	
	
}