//
//  enter.swift
//  ZHANG_nombre
//
//  Created by yuetong on 18/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class enter: UIViewController {
    
        
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var status: UISegmentedControl!
    @IBOutlet weak var jouerbt: UIButton!
    var valueuseful:Int = 0
    var sup:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        status.selectedSegmentIndex = 0
        valueuseful = 100
        sup = 100
       
        
    }
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch status.selectedSegmentIndex
        {
        case 0:
            self.valueuseful = 100
            self.sup = 100
        case 1:
            self.valueuseful = 1000
            self.sup = 1000
            
        case 2:
            self.valueuseful = 10000
            /*newgame.binf.text! = String(0)
             newgame.bsup.text! = String(10000)*/
            self.sup = 10000
        default:
            break;
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is GameController {
            let controller = segue.destination as! GameController
            controller.v = self.valueuseful
            controller.newsup = self.sup
            
            
        }
        
        
    }
    
}
