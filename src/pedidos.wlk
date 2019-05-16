import rodados.*
import dependencia.*

class  Pedidos {
	var property distancia
	var property tiempoMaximo
	var property pasajeros
	var property coloresIncompatibles= #{}
	
	method velocidadRequerida(){
		return self.distancia()/self.tiempoMaximo()
	}
	method satisfacePedido(auto){
		return auto.velocidadMaxima() >= self.velocidadRequerida()+10 &&
		auto.capacidad()>=self.pasajeros() &&
		coloresIncompatibles.all{color=>color!=auto.color()}
		//not coloresIncompatibles.contains(auto.color())
	}
	
	
	method acelerar(){tiempoMaximo-=1}
	method relajar(){tiempoMaximo+=1}
	
	
	
	
	
}
