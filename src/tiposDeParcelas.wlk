import plantas.*
import variedades.*
import parcelas.*


class ParcelaEcologica inherits Parcela {
	
	method seAsociaBien(planta) 
	{
		return self.tieneSangreJoven() and planta.leResultaIdeal(self)
	}
	
	method cantidadDePlantasBienAsociadas() 
	{
		return plantasQueTiene.count({planta => planta.leResultaIdeal()})
	}	
}

class ParcelaIndustrial inherits Parcela 
{
	method seAsociaBien(planta) 
	{
		return plantasQueTiene.size() > 2 and planta.esFuerte()
	}

	method cantidadDePlantasBienAsociadas() 
	{
	   return plantasQueTiene.count({planta => planta.leResultaIdeal()})
	}		
	
}