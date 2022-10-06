import artefactos.*
import hechiceria.*

class Personaje {
	
	const valorBaseHechiceria = 3
	var valorBaseLucha = 1
	var hechizoPreferido
	const property artefactos = #{}
	
	method valorBaseLucha(nuevoValor) {
		valorBaseLucha = nuevoValor
	}
	
	method agregarArtefacto(nuevoArtefacto) {
		artefactos.add(nuevoArtefacto)
	}
	
	method quitarArtefacto(chauArtefacto) {
		artefactos.remove(chauArtefacto)
	}
	
	method nivelDeHechiceria() = 
		valorBaseHechiceria * hechizoPreferido.poder() + fuerzaOscura.valor() 
	
	method hechizoPreferido(nuevoHechizo) {
		hechizoPreferido = nuevoHechizo
	}
	
	method valorDeLucha() =
		valorBaseLucha + self.unidadesDeLuchaDeArtefactos()
		
	method unidadesDeLuchaDeArtefactos() = 
		artefactos.sum{ artefacto => artefacto.unidadesDeLucha(self) } 
	
	method esPoderoso() = hechizoPreferido.esPoderoso()
	
	method esMejorLuchadorQueHechicero() = 
		self.valorDeLucha() > self.nivelDeHechiceria()
	
}

