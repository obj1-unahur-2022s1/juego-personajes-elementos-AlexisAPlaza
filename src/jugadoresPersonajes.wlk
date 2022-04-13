object luisa {
	
}


object floki {
	var arma
	method arma(nueva){
		arma = nueva
	}
	
	method encontrar(elemento){
		if(arma.estaCargada()){
			encontrar.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
	
}
object castillo {
	
}


object mario {
	var valorRecolectado = 0
	var 
	method encontrar(elemento){
		
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
}

