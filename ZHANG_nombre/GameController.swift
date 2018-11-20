//
//  GameController.swift
//  ZHANG_nombre
//
//  Created by yuetong on 18/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

 class GameController: UIViewController {
   
    var nombreHasard: Int = 0
    var rejouer: Bool = false
    var v:Int = 0
    var newsup:Int = 10
    var nbrtry:Int = 0
    var nombre:Int = 0
    @IBOutlet weak var ntxt: UITextField!
    @IBOutlet weak var testbt: UIButton!
    @IBOutlet weak var binf: UILabel!
    /*{
        get {
            return self.binf
        }
        set(v) {
            binf.text! = v.text!
        }
    }*/
    @IBOutlet weak var bsup: UILabel!
    /* {
        get {
            return self.bsup
        }
        set(v) {
            self.bsup.text! = v.text!
        }
    }*/
    
    @IBOutlet weak var resultat: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ntxt.keyboardType = UIKeyboardType.numberPad
        testbt.isEnabled = false
        bsup.text! = String(newsup)
        choisinombreauhasard()
    }
    
    func choisinombreauhasard(){
        
        
        self.nombreHasard = Int.random(in:1...v)
        
    }
    
    @IBAction func entrenombre(_ sender: UITextField) {
        if(ntxt.text!.count != 0) {
            testbt.isEnabled = true
        }
        else {
            testbt.isEnabled = false
        }
    }
    
    
    
    @IBAction func testerNombre(_ sender: UIButton) {
        
        nombre = Int(ntxt.text!)!
        if nombre < Int(binf.text!)! || nombre > Int(bsup.text!)! {
            resultat.text! = "le nombre doit être dans [" + binf.text! + "," + bsup.text! + "]"
            testbt.isEnabled = false
            self.nbrtry += 1
        }
        else if nombre < self.nombreHasard {
            testbt.isEnabled = false
            binf.text! = String(nombre)
            self.nbrtry += 1
           
        }
        else if nombre > self.nombreHasard {
            bsup.text! = String(nombre)
            testbt.isEnabled = false
            self.nbrtry += 1
        }
        else{
            ntxt.isUserInteractionEnabled = false
            testbt.isEnabled = true
            ntxt.text! = ""
            self.nbrtry += 1
            self.performSegue(withIdentifier: "transfer", sender: self)
        }
    }
   
        
        
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is resultview {
            let resultv = segue.destination as! resultview
            resultv.val = self.nbrtry
        }
        
        
    }
}
