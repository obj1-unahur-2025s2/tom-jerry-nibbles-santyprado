object tom {
    var energia = 50
    var ultimoRatonComido = null
    var metrosRecorridos = 0 
    method ultimoRatonComido() =ultimoRatonComido
    method metrosRecorridos() = metrosRecorridos  

    method puedeCazarADistancia(unaDistancia){
        return unaDistancia / 2   <= self.energiaActual()
    } 
    
    method cazarA(unRaton,unaDistancia){
        self.correr(unaDistancia)
        self.comer(unRaton)
    }
    method cazarA_SiPuede(unRaton,unaDistancia){
        if (self.puedeCazarADistancia(unaDistancia)){
            self.cazarA(unRaton, unaDistancia)
        }
    }

    method velocidadMax() {
      return 5 + energia / 10
    }
    method comer(unRaton) {
      energia += 12 + unRaton.peso()
      ultimoRatonComido = unRaton
    }
    method correr(cantidadMetros) {
      energia -= cantidadMetros / 2
      metrosRecorridos = cantidadMetros
    }
    method energiaActual() = energia
}

object jerry {
  var edad = 2
  method edad() = edad 
  method peso() = edad * 20
  method cumpleAnio() {
    edad = edad +  1
  } 
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón