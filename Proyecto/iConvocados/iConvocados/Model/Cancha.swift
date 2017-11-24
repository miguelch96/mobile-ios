//
//  Cancha.swift
//  iConvocados
//
//  Created by ios on 20/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import Foundation
import SwiftyJSON

class Cancha {
    var id: String
    var nombre: String
    var url: String
    var distrito: String
    var precio: Double
    var superficie : String
    var calificacion: Double
    
    init() {
        id = ""
        nombre = ""
        distrito = ""
        url = ""
        precio = 0
        superficie = ""
        calificacion = 0
    }
    
    init(from jsonCancha: JSON) {
        id = jsonCancha["canchaId"].stringValue
        nombre = jsonCancha["nombre"].stringValue
        distrito = jsonCancha["nombreDistrito"].stringValue
        url = jsonCancha["imagenPortadaUrl"].stringValue
        precio = jsonCancha["precio"].doubleValue
        superficie = jsonCancha["nombreTipoSuperficie"].stringValue
        calificacion = jsonCancha["calificacion"].doubleValue
    }
    
    static func from(jsonCanchas: [JSON]) -> [Cancha] {
        var canchas: [Cancha] = []
        let count = jsonCanchas.count
        for i in 0...count - 1 {
            canchas.append(Cancha.init(from: jsonCanchas[i]))
        }
        return canchas
    }
}
