import rodados.*
class Dependencia  {
	var flota=[]
	var pedidos=[]
	var property empleados=10
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){return flota.sum({rodado=>rodado.peso()})}
	method estaBienEquipada(){return flota.size()>=3 && flota.all({rodado=>rodado.velocidadMaxima()>=100})}
	method capacidadTotalEnColor(color){return flota.filter{rodado=>rodado.color()==color}.sum{rodado=>rodado.capacidad()}}
	method colorDelRodadoMasRapido(){return flota.max{rodado=>rodado.velocidadMaxima()}.color()}
	method capacidadFaltante(){return empleados- flota.sum({rodado=>rodado.capacidad()})}
	method esGrande(){return empleados>=40 && flota.size()>=5}
	
	method agregarAPedidos(pedido){pedidos.add(pedido)}
	method quitarDePedidos(pedido){pedidos.remove(pedido)}
	method totalPasajeros(){pedidos.sum{pedido=>pedido.capacidad()}}
	method pedidosInaceptables(){return pedidos.filter{pedido=>not self.puedeSatisfacerPedido(pedido)}}
	method puedeSatisfacerPedido(pedido){return flota.any{veh=>pedido.satisfacePedido(veh)}}
	method esColorRechazado(color){return pedidos.all{pedidos.coloresIncompatibles().contains(color)}}
	method relajarTodosLosPedidos(){pedidos.forEach{pedidos.relajar()}}



}
