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

class LibroDeHechizos {
	const hechizos = new Set()
	
	method poder() = self.hechizosPoderosos().sum{ hechizo => hechizo.poder() }
								
	method esPoderoso() = not self.hechizosPoderosos().isEmpty()
	
	method hechizosPoderosos() = hechizos.filter{ hechizo => hechizo.esPoderoso()}
}

object fuerzaOscura {
	
	var valor = 5
	
	method valor() = valor
	
	method eclipse() {
		valor = valor * 2
	}	
	
}