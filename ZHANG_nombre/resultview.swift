//
//  resultview.swift
//  ZHANG_nombre
//
//  Created by yuetong on 20/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class resultview: UIViewController {
    
    var val:Int = 0
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        resultlabel.text! = "Vous avec essayé" + String(val) + "fois !"
        super.viewDidLoad()
        
    }
}
