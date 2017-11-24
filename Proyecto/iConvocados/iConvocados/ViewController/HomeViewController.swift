//
//  HomeViewController.swift
//  iConvocados
//
//  Created by ios on 20/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var containerCanchas: UIView!
    @IBOutlet weak var containerEquipos: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func showComponent(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerCanchas.alpha = 1
                self.containerEquipos.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerCanchas.alpha = 0
                self.containerEquipos.alpha = 1
            })
        }
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
