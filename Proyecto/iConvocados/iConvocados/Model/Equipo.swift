//
//  Equipo.swift
//  iConvocados
//
//  Created by ios on 21/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import Foundation
import SwiftyJSON

class Equipo {
    var id: String
    var nombre: String
    var url: String
    var distrito: String
    var categoria : String
    var calificacion: Double
    
    init() {
        id = ""
        nombre = ""
        distrito = ""
        url = ""
        categoria = ""
        calificacion = 0
    }
    
    init(from jsonEquipo: JSON) {
        id = jsonEquipo["equipoId"].stringValue
        nombre = jsonEquipo["nombre"].stringValue
        distrito = jsonEquipo["distrito"]["nombre"].stringValue
        url = jsonEquipo["imagenPortadaUrl"].stringValue
        categoria = jsonEquipo["categoria"][nombre].stringValue
        calificacion = jsonEquipo["calificacion"].doubleValue
    }
    
    static func from(jsonEquipos: [JSON]) -> [Equipo] {
        var equipos: [Equipo] = []
        let count = jsonEquipos.count
        for i in 0...count - 1 {
            equipos.append(Equipo.init(from: jsonEquipos[i]))
        }
        return equipos
    }
}
