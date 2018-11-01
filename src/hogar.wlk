import personas.*

class Habitaciones {
//	var property unidadesConfort = 10
	
	method nivelDeConfort(persona) { return 10 }
}

class UsoGeneral inherits Habitaciones {
	
}

class Dormitorios inherits Habitaciones {
	const duenos = #{}
	
	method registrarDueno(pers) { duenos.add(pers)}
	override method nivelDeConfort(persona) {
		if (self.esDueno(persona)) { 
			return super(persona) + (10 / duenos.size())
		} else {
			return super(persona)
	}
        }
        
	method esDueno(persona) { return duenos.contains(persona) }
}

class Banos inherits Habitaciones {
		override method nivelDeConfort(persona) { 
			if ( persona.edad()<= 4) { return super(persona)+ 2 }
		else { return super(persona)+ 4 } 
	}
	
}

class Cocinas inherits Habitaciones {
	
	
}