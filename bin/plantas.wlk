class Planta 
{
	var property anioDeObtencion
	var property altura = 0
	var property espacioQueOcupa = 0
	
	method  horasDeSolQueTolera() = 7
	
	method esFuerte() 
	{
		return self.horasDeSolQueTolera() == 9 
	}
	
	method daSemillasNuevas() 
	{
		return self.esFuerte()
	}
			
}

class Menta inherits Planta
{
	override method espacioQueOcupa() 
	{
		return self.altura() * 3
	}
	
	override method daSemillasNuevas() 
	{
		return super() or self.espacioQueOcupa() > 1
	}
	
	method leResultaIdeal(parcela) 
	{
		return parcela.plantasQueTiene().superficie() > 6
	}
}

class Soja inherits Planta 
{
	override method horasDeSolQueTolera() 
	{
		
		
		if (self.altura() < 0.5) 
		{
			return 6
		}
		else if (self.altura().between(0.5,1)) 
		{
			return 8
		}
		
		else if (self.altura() > 1)
		{
			return 12
		}
		else 
		{
			return super()
		}
	}	
				
	override method espacioQueOcupa() 
	{
		return self.altura() / 2 
	}
	
	override method daSemillasNuevas() 
	{
		return super() or self.anioDeObtencion() > 2007 and self.altura().between(0.75,0.9)
	}
	
	
	method leResultaIdeal(parcela) 
	{
		return parcela.plantasQueTiene().horasDeSolQueRecibe() == self.horasDeSolQueTolera()
	}


}
class Quinoa inherits Planta 
{
	
	override method horasDeSolQueTolera() 
	{
		if (self.espacioQueOcupa() < 0.3) 
		{
			return 10
		}
		else 
		{
			return super()
		}
	}
		
	override method daSemillasNuevas() 
	{
		return super() or self.anioDeObtencion() < 2005
	}

	method leResultaIdeal(parcela) 
	{
		return parcela.plantasQueTiene().all({planta => planta.altura() < 1.5})
	}

}



