import plantas.*
import variedades.*

class Parcela {
	var property ancho = 0
	var property largo = 0
	var property horasDeSolQueRecibe = 0
	const property plantasQueTiene = []	

	method superficie() 
	{
		return self.ancho() * self.largo()
	} 

	method cantMaxDePlantasQueTolera() 
	{
		if (self.largo() > 3 ) 
		{
			return self.largo() + 4
		}
		else 
		{
			return self.superficie() / 2
		}
	}
	
	method tieneSangreJoven() 
	{
		return plantasQueTiene.any({planta => planta.anioDeObtencion() > 2012})
	}
	
	method plantar(planta) {
		plantasQueTiene.add(planta)
	}
	
	method cantidadDePlantasQueTiene() 
	{
		return plantasQueTiene.size()
	}
	

}
