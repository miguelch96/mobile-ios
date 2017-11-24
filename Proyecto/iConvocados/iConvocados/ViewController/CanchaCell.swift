//
//  CanchaCell.swift
//  iConvocados
//
//  Created by ios on 20/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit
import AlamofireImage
class CanchaCell: UICollectionViewCell {
    
    @IBOutlet weak var distritoLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    func setValues(fromCancha cancha: Cancha) {
        nombreLabel.text = cancha.nombre
        distritoLabel.text = cancha.distrito
        logoImageView.af_setImage(withURL: URL(string: cancha.url)!)
    }
    
}
