import plantas.*
import variedades.*
import parcelas.*
import tiposDeParcelas.*

object inta {
	const property parcelas = []
	
	method promedioDePlantasPorParcela() 
	{
		return self.sumaDePlantasParcela() / self.cantidadDeParcelasQueHay()
	}
	
	method sumaDePlantasParcela() 
	{
		return parcelas.sum({parcela => parcela.cantidadDePlantasQueTiene()})
	}
	
	method cantidadDeParcelasQueHay() 
	{
		return parcelas.size()
	}
	
	method agregarParcela(parcela) 
	{
	 parcelas.add(parcela)	
	}
	
	method parcelaMasAutosustentable() 
	{
		return parcelas.filter({parcela => parcela.cantidadDePlantasQueTiene() > 4}.max({parcela.cantidadDePlantasBienAsociadas()}))
	}


}
