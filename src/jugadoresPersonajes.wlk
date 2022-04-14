object luisa {
	var personajeActivo
	
	method asignarPersonaje(personaje){
		personajeActivo = personaje
	} 
	
	method aparecer(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var arma
	method arma(nueva){
		arma = nueva
	}
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object castillo {
	var defensa = 150
	const altura = 20
	
	method recibirAtaque(valorAtaque){
		defensa -= valorAtaque
	}
	
	method valorRecolectado(){
		return defensa / 5
	}
	
	method trabajo(){
		defensa = (defensa + 20).min(200)
	}
	method altura(){
		return altura
	}
	method verDefensa(){
		return defensa
	}
}

object aurora {
	var estaViva = true
	const altura = 1
	
	method recibirAtaque(valorAtaque){
		if(valorAtaque >= 10){
			estaViva = false
		}
	}
	
	method altura(){
		return altura
	}
	
	method valorRecolectado(){
		return 15
	}
	
	method estaViva(){
		return estaViva
	}
	
	method trabajo(){}
}

object tipa {
	var altura = 8
	method recibirAtaque(valorAtaque){}
	
	method valorRecolectado(){
		return altura * 2
	}
	method trabajo(){
		altura += 1
	}
	method altura(){
		return altura
	}
}



object ballesta{
	var flechas = 10
	method potencia(){
		return 4
	}
	
	method estaCargada(){
		return flechas > 0
	}
	
	method usar(){
		flechas -= 1 
	}
	method verFlechas(){
		return flechas
	}
}

object jabalina{
	var cargada = 1
	method estaCargada(){
		return cargada == 1
	}
	
	method potencia(){
		return 30
	}
	
	method usar(){
		cargada = cargada - 1
	}
}







object mario {
	var valorRecolectado = 0 
	var ultimoElementoEncontrado
	method encontrar(elemento){
		valorRecolectado += elemento.valorRecolectado()
		elemento.trabajo()
		ultimoElementoEncontrado = elemento
	}
	
	method esFeliz(){
		return (valorRecolectado >= 50) or (ultimoElementoEncontrado.altura() >= 10)
	}
	method verValorRecolectado(){
		return valorRecolectado
	}
}
















