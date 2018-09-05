object ballesta{
	var flechas=10

	var usoDeArma=0
	method usoDeArma(){ return usoDeArma}
	method potencia(){return 4}
	
	method registrarUso(){
		
		if(flechas>0){
			usoDeArma+=1
			flechas-=1
			}
		}
		
		}
object jabalina{
	var usoDeArma=0
	var usoDisponible=1
	
	method potencia(){return 30}
	
	method registrarUso(){
		
		if(usoDisponible= 1){
			usoDeArma+=1
			usoDisponible-=1
		}
	}
}
