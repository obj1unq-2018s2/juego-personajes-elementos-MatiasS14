object castillo {

	var defensa=150
	
	method valorQueOtorga(){return defensa/5}
	
	method nivelDeDefensa(){return defensa}
	
	method altura(){return 20}
	
	method recibirAtaque(potencia){
		defensa-= potencia
	}
	
	method recibirTrabajo(){
		
		if(self.nivelDeDefensa()-20 <= 180){
			defensa+=20
		}
		//otra forma
		//defensa= (defensa+20).min(200) se queda siempre con el valor mas chico.
	}
}

object aurora{
	var altura= 1
	var vida=true
	
	method altura(){return altura}
	
	method estaViva(){return vida}
	
	method valorQueOtorga(){return 15}
	
	method recibirTrabajo(){}
	
	method recibirAtaque(potencia){
		
		if(potencia>10 and self.estaViva() ){
			vida= not vida
		}
	}
}

object tipa{
	
	var altura= 8
	
	method altura(){return altura}
	
	method valorQueOtorga(){ return altura*2}
	
	method recibirAtaque(potencia){}

	method recibirTrabajo(){}	
}
