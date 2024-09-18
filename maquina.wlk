object maquina {
  const produccion = []

  method agregarProduccion(unElemento){
    produccion.add(unElemento)
  }

  method agregarProducciones(unaLista) {
    produccion.addAll(unaLista)
  }

  method algunDiaSeProdujo(cantidad) {
    return produccion.contains(cantidad)
  }

  method maximoValorDeProduccion() {
    return produccion.max()
  }

  method valoresDeProduccionPares() {
    return produccion.filter( { p => p.even()})
  }

  method produccionEsAcotada(n1,n2) {
    return produccion.all ( { p => p.between(n1,n2)})
  }

  method produccionesSuperioresA(cuanto) {
    return produccion.filter( { p => p > cuanto})
  }

  method produccionesSumando(n) {
    return produccion.map ( { p => p + n})
  }

  method totalProduccido() {
    return produccion.sum()
  }

  method ultimoValorDeProduccion() {
    return produccion.last()
  }
  
  method cantidadProduccionesMayorALaPrimera() {
    return produccion.count({p=>p > produccion.first()})
  }

}

object furia {
  var intensidad = 10
  method intensidad ()= intensidad
  method disminuir(unaCantidad) {
    intensidad -= unaCantidad
  }
  method aumentar(unaCantiad) {
    intensidad += unaCantiad
  }

  method esFuerte() = intensidad > 20
}

object alegria {
  var intensidad = 15
  method intensidad ()= intensidad
  method disminuir(unaCantidad) {
    intensidad -= (unaCantidad *2)
  }
  method aumentar(unaCantidad) {
    intensidad += (unaCantidad * 3)
  }

  method esFuerte() = intensidad > 30
}

object tristeza {
  const intensidad = 15
  method intensidad ()= intensidad
  method disminuir(unaCantidad) {
    
  }
  method aumentar(unaCantiad) {
  
  }

  method esFuerte() = intensidad > 30
}

object raily {
  const emociones =[furia, tristeza, alegria]

  method aumentar(unaCantidad) {
    emociones.forEach( { e => e.aumentar(unaCantidad)})
  }

  method totalDeIntensidad() {
    return emociones.sum( { e => e.intensidad()})
  }

  method intensidadMasFuerte() {
    return emociones.max( { e => e.intensidad()})
  }

  method fuertes() {
    return emociones.filter( { e => e.esFuerte()})
  }
}