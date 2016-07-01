/*

TAREA VELOCIMETRO AUTOMÓVIL DIGITAL

Versión 1.0

Alumno: Roger Alexander Chiroque Ramirez

*/

import UIKit

enum Velocidades : Int{
    case
    Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
   
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var velocidadTexto = ""
        let velocidadActual = velocidad.rawValue
        
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            velocidadTexto = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadTexto = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocidadTexto = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            velocidadTexto = "Velocidad Alta"
        
        }
        
        return (actual : velocidadActual, velocidadEnCadena : velocidadTexto)
    }

}

var auto = Auto()

for i in 1...20{
    var Resultado = auto.cambioDeVelocidad()
    print("<<<< \(Resultado.actual) >>>>")
    print("\(Resultado.velocidadEnCadena)\n")
}


