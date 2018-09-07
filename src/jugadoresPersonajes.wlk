import armas.*
import elementos.*

object luisa {
	var property personajeActivo = noHayPersonaje
	method aparecer(elemento){ personajeActivo.encontrar(elemento)}
}


object floki {
	var property arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var property valorRecolectado = 0
	var ultimoElemento
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElemento=elemento
	    // ... acá hay que agregar una línea ...
	}
	method estaFeliz(){
		return valorRecolectado >= 50 || ultimoElemento.altura() > 10
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}


