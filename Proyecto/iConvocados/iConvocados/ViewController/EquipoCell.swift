//
//  EquipoCell.swift
//  iConvocados
//
//  Created by ios on 20/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit
import AlamofireImage

class EquipoCell: UICollectionViewCell {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var distritoLabel: UILabel!
    
    func setValues(fromEquipo equipo: Equipo) {
        nombreLabel.text = equipo.nombre
        distritoLabel.text = equipo.distrito
        logoImageView.af_setImage(withURL: URL(string: equipo.url)!)
    }
    
}
