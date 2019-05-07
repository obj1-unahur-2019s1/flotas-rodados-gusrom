
class Corsa {
	var property color
	method capacidad(){return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	
}

class Kwid{
	const property color="Azul"
	var tieneTanque=true
	method capacidad(){
		if(tieneTanque){return 3}
		else{return 4}
	}
	method velocidadMaxima(){
		if(tieneTanque){return 110 }
		else{return 120}
		
		
	}
	method peso(){
		if(tieneTanque){return 1350}
		else{return 1200}
	}
	
	
}

object traffic{
	const property color="Blanco"
	var property interior
	var property motor
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method peso(){return interior.peso()+motor.peso()+4000}
}
object interiorPopular{
		method peso() {return 1000}
		method capacidad(){return 12}
}
object interiorComodo{
		method peso(){return 700}
		method capacidad(){return 5}
}
object motorPulenta{
		method peso(){return 800}
		method velocidadMaxima(){return 1300}
}
object motorBataton{
		method peso(){return 500}
		method velocidadMaxima(){return 80}
}
		
	
	


