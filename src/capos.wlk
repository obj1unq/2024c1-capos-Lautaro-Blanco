import artefactos.*
import castillo.*

object rolando{
	
	var capacidad = 2
	const property artefactos = #{} //el const property es un getter, le muestro la coleccion, pero no permito que agregue cosas
	var hogar = castilloDePiedra	//es para no cambiar el tipo de variable
	const property historiaDeArtefactos = []
									
	method agarrar(artefacto){
		if(self.puedeAgregar()){
			artefactos.add(artefacto)
		}
		historiaDeArtefactos.add(artefactos)
	}
	
	method puedeAgregar(){
		return artefactos.size() < capacidad
	}
	
	method irAlHogar(){
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}
	
	method guardarArtefactosEnHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)
	}
	
	method liberarEspacio(){
		artefactos.clear()
	}
	
	method posee(artefacto){
		return self.todasLasPosesiones().contains(artefacto)
	}
	
	method todasLasPosesiones(){
		return artefactos.union(hogar.baul())
	}
	
}