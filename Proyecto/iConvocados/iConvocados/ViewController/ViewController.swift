//
//  ViewController.swift
//  iConvocados
//
//  Created by ios on 20/11/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testNetworking()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testNetworking() {
        Alamofire.request(CanchasApiService.canchasUrl)
            .responseJSON(completionHandler: {
                response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    print("\(json)")
                    let canchas = Cancha.from(jsonCanchas: json["canchas"].arrayValue)
                    for i in 0...canchas.count - 1 {
                        print("\(canchas[i].nombre)")
                    }
                    
                case .failure(let error):
                    print("\(error)")
                }
            })
    }


}

