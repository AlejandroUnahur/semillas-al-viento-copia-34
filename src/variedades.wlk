import plantas.*

class SojaTransgenica inherits Soja 
{
	override method daSemillasNuevas() 
	{
		return false
	}	
	
	override method leResultaIdeal(parcela) 
	{
		return parcela.plantasQueTiene().size() == 1
	}
}

class Peperina inherits Menta 
{
	override method espacioQueOcupa() 
	{
		return super() * 2
	}
}


