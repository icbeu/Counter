//
//  ViewController.swift
//  Counter
//
//  Created by ICMMAC06-7A13 on 12/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbCounter: UILabel!
    var number = 0
    @IBOutlet weak var btMinus: UIButton!
    @IBOutlet weak var vPopup: UIView!
    @IBOutlet weak var lbPopup: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if number < 1{
            btMinus.isHidden = true
        }
    }

    @IBAction func counterPlus(_ sender: Any) {
        number = number + 1
        lbCounter.text = "\(number)"
        
        if number > 0 {
            btMinus.isHidden = false
        }
        if number%10 == 0 {
            lbPopup.text = "Você chegou ao número \(number)"
            vPopup.isHidden = false
        }
    }
    
    @IBAction func counterMinus(_ sender: Any) {
        number = number - 1
        lbCounter.text = "\(number)"
        
        if number < 1 {
            btMinus.isHidden = true
        }
        
    }
    
    @IBAction func closePopup(_ sender: Any) {
        vPopup.isHidden = true
    }
    
}

