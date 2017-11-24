//
//  CanchaDetailsViewController.swift
//  iConvocados
//
//  Created by ios on 21/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit

class CanchaDetailsViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var nombre: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = nombre
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
