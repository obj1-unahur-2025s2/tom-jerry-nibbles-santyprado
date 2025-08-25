object tom {
    var energia = 50
    var ultimoRatonComido = null
    var metrosRecorridos = 0 
    method ultimoRatonComido() =ultimoRatonComido
    method metrosRecorridos() = metrosRecorridos  
    method velocidadMax() {
      5 + energia / 10
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